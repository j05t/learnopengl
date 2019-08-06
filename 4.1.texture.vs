#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

out vec3 ourColor;
out vec2 TexCoord;
out vec4 ourPos;

uniform float scale;

void main()
{
	gl_Position = vec4(aPos.x * scale, aPos.y * (scale + 0.5), aPos.z * scale, 1.0);
	ourColor = aColor;
    ourPos = gl_Position;
	TexCoord = vec2(aTexCoord.x, aTexCoord.y);
}

