#version 330 core

in  vec3 fN;
in  vec3 fV;
in  vec3 fL;

uniform vec4  ambientProduct, diffuseProduct, specularProduct;
uniform float shininess;
out vec4 color;

void main() {

	vec3 N = normalize(fN);
	vec3 V = normalize(fV);
	vec3 L = normalize(fL);
	vec3 H = normalize(L + V);

	vec4 ambient = ambientProduct;

	float Kd = max(dot(L, N), 0.0);
	vec4 diffuse = Kd * diffuseProduct;

	float Ks = pow(max(dot(N, H), 0.0), shininess);
	vec4 specular = Ks * specularProduct;

	if(dot(L, N) < 0.0) {
		specular = vec4(0.0, 0.0, 0.0, 1.0);
	}

	color   = ambient + diffuse + specular;
	color.a = 1.0;
}
