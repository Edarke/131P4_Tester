/*
precision highp float;
mat2 a = mat2(1., 3., 2., 4.);
vec2 c = vec2(1.0, 2.0);
vec2 d = vec2(5.0, 8.0);
*/

mat2 a;
vec2 c;
vec2 d;

bool matrix()
{
  bool flag = true;

  //assignment and matrix calculation
  a[0][0] = 1.0;
  a[1][0] = 2.0;
  a[0][1] = 3.0;
  a[1][1] = 4.0;
   
  mat2 b;
  b = a;

  b = b + a;   // 2 4 6 8 
  b = b * a;   // 14 20 30 44 
  b = a - b;   // -13 -18 -27 -40 
   
  a = b + a;  // -12 -16 -24 -36
  
  b += b;  // -26 -36 -54 -80  
  a -= b;  // 14 20 30 44
  b *= b;  // 2620 3816 5724 8344 

  if(b[0][1]+a[1][0] != 5744.)
    flag = false;
  
  
  //matrix scalar calculation
  a = a * 3.0; //42 60 90	132
  
  if(a[0][0]+a[1][1] != 174.)
    flag = false;
    
  a++;
  
  if(a[0][1]+a[1][0] + a[0][0] != 195.)
    flag = false;
  
  a--;
  if(a[1][1]-a[0][0] + a[0][1] != 180.)
    flag = false;

  a = a - 10.0; //32 50 80 122  

  
  if(a[0][1]-a[1][0]+a[0][0]-a[1][1] != -60.)
    flag = false;
    
  a = 20. - a; //-12 -30 -60 -102

  if(a[0][1]-a[1][0]+a[0][0]-a[1][1] != 60.)
    flag = false;
  
  a *= 0.1;
  
  if(a[0][1]-a[1][0]+a[0][0]-a[1][1] != 6.)
    flag = false;  

  a /= 0.1;
  
  if(a[0][1]-a[1][0]+a[0][0]-a[1][1] != 60.)
    flag = false; 
 
  // matrix vector
  a[0][0] = 1.0;
  a[1][0] = 2.0;
  a[0][1] = 3.0;
  a[1][1] = 4.0;
  
  c = a*c; //5 11

  if(c.x != 5. || c.y != 11.)
   flag = false;
  
  a[0] = a*c; //27 59
  a[1] = d; //5 8
  
  if(a[0][0] != 27. || a[0][1] != 59. || a[1][0] != 5. ||a[1][1] != 8.)
   flag = false;
  
  
  return flag;
}
/*
void main(){
  if(matrix() == true)
    gl_FragColor = vec4(0,1,0,1.0); // green
  else
    gl_FragColor = vec4(1,0,0,1.0);  // red
}
*/
