//precision highp float;   


vec2 v;


bool test(){
  v.x = v.y = 1.0;
	
	bool check = v.x == v.y && v.y == 1.0;

	vec3 v3 = v.xyx;
	vec2 v2;
	v2.x = 2.0;
	v2.y = 3.0;
	
	v3.xy = v.xy = v2;
	
	check = check && v.x == v3.x && v3.x == 2.0 && v2.y == 3.0 && v3.y == v2.y; 
	
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
