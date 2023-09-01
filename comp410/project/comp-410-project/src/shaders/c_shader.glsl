#version 430 core
#extension GL_ARB_gpu_shader_int64 : enable

layout (local_size_x = 1, local_size_y = 1, local_size_z = 1) in;

layout (rgba32f, binding = 0) uniform image3D img;

struct Sphere {
	vec3  center;
	float radius;
	vec3  color;
	float fuzz;
	vec3  dummy1;
	float ir; // index-of-refraction
	vec3  dummy2;
	float material; // 0 -> lambertian, 1 -> metal, 2 -> dielectric 
};

layout(std430, binding = 1) buffer data {
	Sphere spheres[];
};

uniform float vfov; // Vertical Field-of-View (FoV)
uniform float focal_length;
uniform uint  samples_per_pixel;
uniform vec3  lookfrom;
uniform vec3  lookat;
uniform vec3  vup;
uniform uint  max_depth;
uniform float dist_to_focus;
uniform float aperture;
uniform uint  sphere_count;

const float INF               = 1.0 / 0.0;
const vec3  ZERO              = vec3(0, 0, 0);
const uint  NO_HIT_SPHERE_IDX = 0;

// Random seed must be initialized to a non-zero in main()
uint64_t seed;

uint rand_int() {
	seed ^= seed >> 12;
	seed ^= seed << 25;
	seed ^= seed >> 27;
	return uint((seed * 0x2545F4914F6CDD1DUL) >> 32);
}

float rand_float() {
	float rand_i = float(rand_int());
	// Convert to range [0, 1)
	float power  = pow(2, -32);
	return rand_i * power;
}

/******************************************************************************/

struct Ray {
	vec3 origin;
	vec3 direction;
};

Ray mk_ray(vec3 point_beg, vec3 point_end) {
	vec3 origin    = point_beg;
	// Enforce normalized direction vector
	vec3 direction = normalize(point_end - point_beg);
	return Ray(origin, direction);
}

vec3 ray_at(Ray ray, float t) {
	return ray.origin + t * ray.direction;
}

/******************************************************************************/

vec3 sphere_normal_at(uint sid, vec3 point) {
	return normalize(point - spheres[sid].center);
}

struct HitRecord {
	bool   did_hit;
	float  t;
	vec3   point;
	bool   front_face;
	vec3   normal;
	uint   sid;
};

HitRecord mk_no_hit() {
	return HitRecord(false, 0, ZERO, false, ZERO, NO_HIT_SPHERE_IDX);
}

HitRecord mk_hit(Ray ray, float t, vec3 point, vec3 outward_normal, uint sid) {
	bool front_face = dot(ray.direction, outward_normal) < 0;
	vec3 normal     = front_face ? outward_normal : -outward_normal;
	return HitRecord(true, t, point, front_face, normal, sid);
}

HitRecord sphere_hit(uint sid, Ray ray, float t_min, float t_max) {
	float rad = spheres[sid].radius;
	// Center to origin
	vec3  cto = ray.origin - spheres[sid].center;
	// Ray direction unit vector
	vec3  dir = ray.direction;

	// Constants of the quadratic equations
	float a = dot(dir, dir);
	float b = dot(cto, dir) * 2;
	float c = dot(cto, cto) - pow(rad, 2);

	// Calculate the discriminant to know how many solutions we have
	float d = pow(b, 2) - 4 * a *c;

	// No solution
	if (d < 0) return mk_no_hit();

	float root_1 = (-b - sqrt(d)) / (2 * a);
	float root_2 = (-b + sqrt(d)) / (2 * a);

	float root_1_dist = length(ray_at(ray, root_1) - ray.origin);
	float root_2_dist = length(ray_at(ray, root_2) - ray.origin);

	float root_close = root_1;
	float root_far   = root_2;
	if (root_2_dist < root_1_dist) {
		root_close = root_2;
		root_far   = root_1;
	}

	if (root_close >= t_min && root_close <= t_max) {
		vec3 point  = ray_at(ray, root_close);
		vec3 normal = sphere_normal_at(sid, point);
		return mk_hit(ray, root_close, point, normal, sid);
	}
	if (root_far  >= t_min && root_far   <= t_max) {
		vec3 point  = ray_at(ray, root_far);
		vec3 normal = sphere_normal_at(sid, point);
		return mk_hit(ray, root_far, point, normal, sid);
	}

	// No solution in [t_min, t_max]
	return mk_no_hit();
}

HitRecord spheres_hit(Ray ray, float t_min, float t_max) {
	HitRecord closest_rec = mk_no_hit();
	float     closest_t   = t_max;

	for (uint i = 0; i < sphere_count; i++) {
		HitRecord rec = sphere_hit(i, ray, t_min, closest_t);
		if (rec.did_hit) {
			closest_rec = rec;
			closest_t   = rec.t;
		}
	}

	return closest_rec;
}

/******************************************************************************/

vec3 rand_in_unit_sphere() {
	while (true) {
		vec3 point = vec3(rand_float(), rand_float(), rand_float()) * 2.0 - 1.0;
		if (length(point) < 1) return point;
	}
}

vec3 rand_unit_vector() {
	return normalize(rand_in_unit_sphere());
}

bool near_zero(vec3 v) {
	// Return true if the vector is close to zero in all dimensions.
	float s = pow(10, -8);
	return all(lessThan(abs(v), vec3(s, s, s)));
}

vec3 reflect(vec3 v, vec3 n) {
	return v - 2 * dot(v, n) * n;
}

vec3 refract(vec3 uv, vec3 n, float etai_over_etat) {
	float cos_theta = clamp(dot(-uv, n), -1, 1);
	vec3  r_prime_perp     =  etai_over_etat * (uv + cos_theta * n);
	vec3  r_prime_parallel = -sqrt(abs(1 - pow(length(r_prime_perp), 2))) * n;
	return r_prime_perp + r_prime_parallel;
}

float reflectance(float cosine, float refraction_ratio) {
	// Use Schlick's approximation for reflectance.
	float r0 = pow((1 - refraction_ratio) / (1 + refraction_ratio), 2);
	return r0 + (1 - r0) * pow(1 - cosine, 5);
}

vec3 ray_color(Ray ray, uint limit) {
	vec3 c = vec3(1, 1, 1);

	for (uint i = 0; i < limit; i++) {
		HitRecord rec = spheres_hit(ray, 0.001, INF);
		if (!rec.did_hit) {
			float t = 0.5 * (ray.direction.y + 1.0);
			vec3 color = (1.0 - t) * vec3(1.0, 1.0, 1.0) + t * vec3(0.5, 0.7, 1.0);
			return c * color;
		}

		if (spheres[rec.sid].material == 0) {
			vec3 scatter_direction = rec.normal + rand_unit_vector();
			if (near_zero(scatter_direction)) scatter_direction = rec.normal;

			vec3 scattered = rec.point + scatter_direction;
			ray = mk_ray(rec.point, scattered);
			c *= spheres[rec.sid].color;
		} else if (spheres[rec.sid].material == 1) {
			vec3 reflected = rec.point + reflect(ray.direction, rec.normal) + spheres[rec.sid].fuzz * rand_in_unit_sphere();
			ray = mk_ray(rec.point, reflected);
			if (dot(ray.direction, rec.normal) <= 0) return vec3(0, 0, 0);
			c *= spheres[rec.sid].color;
		} else {
			float refraction_ratio = rec.front_face ? (1.0 / spheres[rec.sid].ir) : spheres[rec.sid].ir;

			vec3 unit_direction = normalize(ray.direction);

			float cos_theta = clamp(dot(-unit_direction, rec.normal),  -1, 1);
			float sin_theta = clamp(sqrt(1.0 - pow(cos_theta, 2)), -1, 1);

			bool cannot_refract = refraction_ratio * sin_theta > 1.0;
			vec3 direction;

			if (cannot_refract || reflectance(cos_theta, refraction_ratio) > rand_float())
				direction = reflect(unit_direction, rec.normal);
			else
				direction = refract(unit_direction, rec.normal, refraction_ratio);

			vec3 scattered = rec.point + direction;

			ray = mk_ray(rec.point, scattered);
		}
	}

	return vec3(0, 0, 0);
}

vec2 antialiasing(ivec3 pos) {
	// Side-length of the square representing the pixel
	uint len = uint(sqrt(float(samples_per_pixel)));
	uint row = pos.z / len;
	uint col = pos.z % len;

	return vec2(row, col) / float(len) - 0.5;
}

vec3 random_in_unit_disk() {
	while (true) {
		vec3 point = vec3(rand_float() * 2 - 1, rand_float() * 2 - 1, 0);
		if (pow(length(point), 2) < 1) return point;
	}
}

void main() {
	// Texture coordinates
	ivec3 tex = ivec3(gl_GlobalInvocationID.xyz);

	// Image dimensions
	uint img_w = gl_NumWorkGroups.x;
	uint img_h = gl_NumWorkGroups.y;
	uint img_d = gl_NumWorkGroups.z;
	vec2 img_s = vec2(img_w, img_h);

	// Initialize random seed
	// Each invocation has a unique seed
	seed = (img_h * img_d * tex.x + img_d * tex.y + tex.z) + 1;
	
	// Viewport
	float vwp_h = 2 * tan(radians(vfov) / 2);
	float vwp_w = vwp_h * (float(img_w) / float(img_h));
	vec2  vwp   = vec2(vwp_w, vwp_h);

	vec3 w = normalize(lookfrom - lookat);
	vec3 u = normalize(cross(vup, w));
	vec3 v = cross(w, u);

	vec3 origin = lookfrom;
	vec3 horizontal = dist_to_focus * vwp_w * u;
	vec3 vertical   = dist_to_focus * vwp_h * v;
	vec3 lower_left_corner = origin - horizontal/2 - vertical/2 - dist_to_focus * w;

	float lens_radius = aperture / 2;

	vec3 rd = lens_radius * random_in_unit_disk();
	vec3 offset = u * rd.x + v * rd.y;

	
	vec2 a = antialiasing(tex);
	vec3 dir = lower_left_corner + (tex.x + a.x) / img_w * horizontal + (tex.y + a.y) / img_h * vertical - origin - offset;
	
	// Center-of-Projection (COP) is the origin
	Ray ray = mk_ray(origin + offset, origin + offset + dir);

	imageStore(img, tex, vec4(sqrt(ray_color(ray, max_depth).xyz), 1.0));
}
