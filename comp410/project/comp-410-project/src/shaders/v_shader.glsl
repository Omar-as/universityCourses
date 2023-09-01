#version 430 core

in  vec3 v_spc_pos;
in  vec2 v_tex_pos;
	
out vec2 f_tex_pos;
	
void main() {
    f_tex_pos   = v_tex_pos;
    gl_Position = vec4(v_spc_pos, 1.0);
}
