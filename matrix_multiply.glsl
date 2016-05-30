//precision highp float;   


mat2 I;
mat2 ONE;

bool test(){
  bool check = true;
	
	I[0][0] = I[1][1] = 1.0;
	I[1][0] = I[0][1] = 0.0;
	 
	ONE[0][0] = ONE[0][1] = ONE[1][0] = ONE[1][1] = 1.0;
	 
	I = I;
	I *= (I + I - I)*(I/ONE);
  	check = check && I[0][0] == 1.0 && I[0][1] == 0.0 && I[1][0] == 0.0 && I[1][1] == 1.0;
  	
  	I *= I *= I;
  	ONE = ONE * I;
  	check = check && I[0][0] == 1.0 && I[0][1] == 0.0 && I[1][0] == I[0][1] && I[1][1] == I[0][0];
  	check = check && ONE[0][0] == 1.0 && ONE[0][1] == 1.0 && ONE[1][0] == 1.0 && ONE[1][1] == 1.0;
  	
  	ONE = I * ONE;
  	check = check && I[0][0] == 1.0 && I[0][1] == 0.0 && I[1][0] == I[0][1] && I[1][1] == I[0][0];
  	check = check && ONE[0][0] == 1.0 && ONE[0][1] == 1.0 && ONE[1][0] == 1.0 && ONE[1][1] == 1.0;
  	
  	
  	ONE *= ONE;
  	check = check && ONE[0][0] == 2.0 && ONE[0][1] == 2.0 && ONE[1][0] == 2.0 && ONE[1][1] == 2.0;
  	
  	mat2 TWO = ONE;
  	check = check && TWO[0][0] == 2.0 && TWO[0][1] == 2.0 && TWO[1][0] == 2.0 && TWO[1][1] == 2.0;
  	
  	ONE[0][0] = -1.0;  	
  	ONE = ONE * TWO;
  	check = check && ONE[0][0] == 2.0 && ONE[0][1] == 8.0 && ONE[1][0] == 2.0 && ONE[1][1] == 8.0;
  	
  	
  	
  	ONE[0][0] = 17.0;
  	ONE[0][1] = 2.0;
  	ONE[1][0] = 6.0;
  	ONE[1][1] = 13.0;
  	
  	
  	TWO[0][0] = 9.0;
  	TWO[0][1] = 5.0;
  	TWO[1][0] = 10.0;
  	TWO[1][1] = 11.0;
  	
  	mat2 PRODUCT = ONE * TWO;
  	ONE *= TWO;	
   	
     check = check && ONE[0][0] == 183.0 && ONE[0][1] == 83.0 && ONE[1][0] == 236.0 && ONE[1][1] == 163.0;
    check = check && PRODUCT[0][0] == 183.0 && PRODUCT[0][1] == 83.0 && PRODUCT[1][0] == 236.0 && PRODUCT[1][1] == 163.0;

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
