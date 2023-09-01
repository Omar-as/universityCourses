#version 330 core

in  vec3 v_color;
out vec4 f_color;

void main() {
    if (gl_FrontFacing) {
        f_color = vec4(v_color, 255) / float(255);
    } else {
        // Make the cube look filled from the inside
        f_color = vec4(38, 50, 56, 255) / float(255);
    }
}
