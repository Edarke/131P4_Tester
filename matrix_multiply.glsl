//precision highp float;   


mat2 I;

bool test(){
	bool check = true;
	
	I[0][0] = I[1][1] = 1.0;
	I[1][0] = I[0][1] = 0.0;
	 
	//I = I;
	I *= I;// (I + I - I)*(I/I);
  	//check = check && I[0][0] == 1.0 && I[0][1] == 0.0 && I[1][0] == 0.0 && I[1][1] == 1.0;
  	
  	return check;
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
