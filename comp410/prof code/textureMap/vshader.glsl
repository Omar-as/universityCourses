#version 410

in  vec4 vPosition;
in  vec4 vColor;
in  vec2 vTexCoord;

out vec4 color;
out vec2 texCoord;

uniform mat4 ModelView;
uniform mat4 Projection;

void main() 
{
    color       = vColor;
    texCoord    = vTexCoord;
    gl_Position = Projection * ModelView * vPosition;
} 
