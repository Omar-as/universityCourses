#version 330 core

in  vec3 v_pos;

out vec3 f_pos;

uniform mat4 modelView;
uniform mat4 transform;

void main() {
	gl_Position = modelView * transform * vec4(v_pos, 1.0);
	f_pos = v_pos;
}
