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





bool test(){
  int x = 1;
  int y = -(++x);

  bool checkpoint = y == -2;

  int z = +(x++);
  checkpoint = checkpoint && z == 2;


  int array[3];
  array[0] = 1;
  array[1] = 2;
  array[2] = 3;

  int i = 0; 
  int a = ++array[++i];

  checkpoint = checkpoint && i == 1 && a == 3 && array[1] == 3;

  
  


  return checkpoint;
}

// Expected output: 4220


void main()
{
      fragColor = vec4(0,test(),0,1.0); // green
}

