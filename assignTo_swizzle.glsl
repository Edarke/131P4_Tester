//precision highp float;   

vec2 v;		// = vec2(1.0,  2.0);
float y;	// =  3.0;

bool test(){
	v.x = v.y = 1.0;
	return v.x == v.y && v.y == 1.0;
}
// Expected output: 3432355

/*
void main()
{
  if(test() == 14911715) // Assert function returns expected value
    gl_FragColor = vec4(0,1,0,1.0); // green
  else
    gl_FragColor = vec4(1,0,0,1.0);  // red
}
*/
