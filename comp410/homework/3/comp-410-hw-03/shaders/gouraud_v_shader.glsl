#version 330 core

in vec3 vPosition;
out vec4 color;

uniform vec3 center;
uniform mat4 modelView, transform;

uniform vec4 ambientProduct, diffuseProduct, specularProduct;
uniform vec4 lightPosition;
uniform float shininess;

void main() {

	vec3 pos  = (modelView * vec4(vPosition, 1.0)).xyz;
	vec3 cent = (modelView * vec4(center,	 0.0)).xyz;

	vec3 L = normalize( modelView * lightPosition ).xyz;
	vec3 V = normalize( -pos );
	vec3 H = normalize( L + V );

	vec3 N = normalize(cent - pos).xyz;

	vec4 ambient = ambientProduct;

	float Kd = max( dot(L, N), 0.0 );
	vec4 diffuse = Kd * diffuseProduct;

	float Ks = pow( max(dot(N, H), 0.0), shininess );
	vec4 specular = Ks * specularProduct;

	if( dot(L, N) < 0.0 ) specular = vec4(0.0, 0.0, 0.0, 1.0);

	gl_Position = modelView * transform  * vec4(vPosition,1.0f);
	color = ambient + diffuse + specular;
}
