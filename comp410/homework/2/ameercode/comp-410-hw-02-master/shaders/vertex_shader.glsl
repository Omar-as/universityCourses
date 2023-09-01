#version 330 core

layout (location = 0) in vec3  pos;
layout (location = 1) in mat4  initial_position;
layout (location = 5) in vec3  i_color;
layout (location = 6) in float should_animate;

out vec3 v_color;

uniform uint N;

uniform mat4 base;

uniform mat4 rotate;
uniform mat4 identity;

uniform mat4 angle;
uniform uint fill;

uniform mat4 projection;

void main() {
	mat4 animate;
	if (should_animate == 1) animate = rotate;
	else animate = identity;

	gl_Position = projection * angle * animate * initial_position * base * vec4(pos, 1.0);
	v_color = i_color * fill;
}
