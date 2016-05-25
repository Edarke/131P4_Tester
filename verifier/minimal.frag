/* 
How to build:
g++ textfile.h textfile.cpp ogl3.cpp -lGLU -lGL -lglut -lGLEW

Requires freeglut and glew

You can use this to verify the accuracy of test cases by editing the test() function and 
changing the condition in main().

Output will be green if test is correct and red otherwise. 
*/

#version 300 es
precision highp float;

out vec4 fragColor;





int test(){
	int x[5];
	int i = 0;
	for(i = 0; i < 5; ++i){
		x[i] = 4-i;
	}
	

	for(i = 0; i < 5; i += 2){
		x[x[x[i]]] = x[x[i]];
	}

        // x = 03210
     
   for(i = 0; i < 4; i = i){
     x[++i] += 1;
     ++i;
   }     
 

	return  x[0]*10000 + x[1]*1000 + x[2]*100 + x[3]*10 + x[4]; // 4220
}

// Expected output: 4220


void main()
{
  if(test() == 4220) // Assert function returns expected value
    fragColor = vec4(0,1,0,1.0); // green
  else
    fragColor = vec4(1.0,0,0,1.0);  // red
}

