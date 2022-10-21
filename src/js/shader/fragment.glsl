uniform float time;
uniform float progress;
uniform vec3 uColor;
uniform sampler2D uTexture;
uniform vec4 resolution;
varying vec2 vUv;
varying vec3 vPosition;
float PI = 3.141592653589793238;

void main()	{
	// vec2 newUV = (vUv - vec2(0.5))*resolution.zw + vec2(0.5);
	vec4 ttt = texture2D(uTexture, vUv);
	gl_FragColor = vec4(uColor, ttt.r);
}
