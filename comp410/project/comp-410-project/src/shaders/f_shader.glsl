#version 430 core

in      vec2      f_tex_pos;

out     vec4      f_clr;

uniform sampler2D tex;
	
void main() {
	vec3 tex_clr = texture(tex, f_tex_pos).rgb;
	f_clr        = vec4(tex_clr, 1.0);
}
