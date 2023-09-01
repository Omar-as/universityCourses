#version 330 core

in  vec3 pos;

out vec4 color;
uniform sampler2D texture1;

uniform vec3 center;
void main() {

	vec3 n  = normalize(pos - center);
	float u  = atan(n.x, n.z) / (2 * 3.14) + 0.5;
	float v  = n.y * 0.5 + 0.5;

	color = texture(texture1, vec2(u, 1.0 - v));
}
