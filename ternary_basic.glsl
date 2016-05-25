//precision highp float;   

int test(){
  int x = true ? 1 : 0;
  int y = false? 1 : 0;
  
  return x*10 + y; 
}
// Expected output: 10

/*
void main()
{
  if(test() == 10) // Assert function returns expected value
    gl_FragColor = vec4(0,1,0,1.0); // green
  else
    gl_FragColor = vec4(1,0,0,1.0);  // red
}
*/
