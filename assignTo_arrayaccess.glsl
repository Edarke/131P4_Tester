//precision highp float;   

vec2 v;		// = vec2(1.0,  2.0);
float y;	// =  3.0;

bool test(){
  int array[3];
  array[0] = array[1] = array[2] = 3;
  return array[0] == array[1] && array[1] == 3 && array[2] == 3;
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
