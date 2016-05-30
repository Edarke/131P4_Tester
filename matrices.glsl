//precision highp float;   



mat3 m1;
mat3 m2;
mat3 m3;
mat3 I;
mat3 flipper;

vec3 r1;
vec3 r2;
vec3 r3;


bool test(){
  vec3 copy = r1;
 
  m1[0] = r1;
	m1[1] = r2;
	m1[2] = r3;
	
	bool check = m1[0][0] == 1.0 && m1[1][1] == 5.0 && m1[2][2] == 9.0;


	m2[0] = m1[2];
	m2[1] = m2[0];
	m2[2] = (m1[1] + m1[2])/m1[0];
	
	check = check && m2[0][0] == 7.0 && m2[1][1] == 8.0 && m2[2][2] == 5.0;
	
  
  I[0][0] = 1.0;
  I[1][1] = 1.0;
  I[2][2] = 1.0;
  
  
  r1 *= I;
  
  check = check && r1.x == 1.0 && r1.y == 2.0 && r1.z == 3.0;
  
  mat3 flipper;
  flipper[0] = I[2];
  flipper[1] = I[1];
  flipper[2] = I[0];
  
  r1 = flipper * r1;
  
  check = check && r1.x == 3.0 && r1.y == 2.0 && r1.z == 1.0;
  
  
  r1 *= (I - I);
  check = check && r1.x == 0.0 && r1.y == 0.0 && r1.z == 0.0;
  
  r1 = copy;
  
  r1 *= (2.0*I - flipper);
 check = check && r1.x == -1.0 && r1.y == 2.0 && r1.z == 5.0;

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
