#version 330 core
in vec3 ourColor;
in vec2 TexCoord;
out vec4 FragColor;
uniform sampler2D otexture1;
uniform sampler2D otexture2;
uniform float visiblity;
void main(){
    FragColor = mix(texture(otexture1, TexCoord), texture(otexture2, TexCoord), visiblity) * vec4(ourColor, 1.0);
};