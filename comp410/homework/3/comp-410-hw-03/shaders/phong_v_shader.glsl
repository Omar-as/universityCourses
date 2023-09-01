#version 330 core

in  vec3 v_pos;

out vec3 fN;
out vec3 fV;
out vec3 fL;

uniform vec3  center;
uniform mat4  modelView;
uniform mat4  transform;

uniform vec4  lightPosition;

void main() {

	vec3 pos =  (modelView * transform * vec4(v_pos,  0.0)).xyz;
	vec3 cent = (modelView * transform * vec4(center, 0.0)).xyz;

	fN = normalize(cent - pos).xyz;

	fV = normalize(-pos);

	fL = normalize(modelView * lightPosition).xyz;

	if( lightPosition.w != 0.0 ) {
	    fL = lightPosition.xyz - pos;
        }

	gl_Position = modelView * transform * vec4(v_pos, 1.0);
}
