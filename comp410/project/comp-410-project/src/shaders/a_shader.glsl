#version 430 core

layout (local_size_x = 1, local_size_y = 1, local_size_z = 1) in;

layout (rgba32f, binding = 0) uniform image3D img_3d;
layout (rgba32f, binding = 1) uniform image2D img_2d;

uniform uint samples_per_pixel;

void main() {
	ivec2 coord_2d = ivec2(gl_GlobalInvocationID.xy);
	vec4  color_2d = vec4(0, 0, 0, 0);

	for (uint i = 0; i < samples_per_pixel; i++) {
		ivec3 coord_3d = ivec3(coord_2d, i);
		vec4  color_3d = imageLoad(img_3d, coord_3d).xyzw;

		color_2d += color_3d;
	}

	color_2d /= samples_per_pixel;

	imageStore(img_2d, coord_2d, color_2d);
}
