#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
uniform float offSet1, offSet2;
out vec3 ourColor;
void main(){
    gl_Position = vec4(aPos.x + offSet1, aPos.y + offSet2, aPos.z, 1.0);
    ourColor = vec3((aPos.x + offSet1 + 1)/2, (aPos.y + offSet2 + 1)/2, 0.5);
    //ourColor = vec3(aPos.x + offSet, aPos.y, aPos.z);
};
