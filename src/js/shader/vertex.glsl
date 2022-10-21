uniform float time;
varying vec2 vUv;
varying vec3 vPosition;
uniform vec2 pixels;
float PI = 3.141592653589793238;
attribute vec3 pos;
void main() {
  vUv = uv;
  vec3 finalPos = pos + (position * 0.1);
  vec3 particlePos = (modelMatrix * vec4(pos, 1.)).xyz;

  // add position
  vec4 viewPos = viewMatrix * vec4(particlePos, 1.);
  viewPos.xyz += position * 0.1;

  // gl_Position = projectionMatrix * viewMatrix*modelMatrix * vec4( finalPos, 1.0 );
  gl_Position = projectionMatrix * viewPos;
}
