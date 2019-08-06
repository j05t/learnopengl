#version 330 core
out vec4 FragColor;

in vec3 ourColor;
in vec2 TexCoord;

in vec4 ourPos;

// texture sampler
uniform sampler2D texture1;
uniform sampler2D texture2;

uniform float mixFactor; 

void main()
{
    FragColor = mix(texture(texture1, TexCoord), texture(texture2, -TexCoord), mixFactor) * ourPos;
}

