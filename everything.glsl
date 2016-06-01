/* 
How to build:
g++ textfile.h textfile.cpp ogl3.cpp -lGLU -lGL -lglut -lGLEW

Requires freeglut and glew

You can use this to verify the accuracy of test cases by editing the test() function and 
changing the condition in main().

Output will be green if test is correct and red otherwise.*/


//#version 300 es
//precision highp float;

//out vec4 fragColor;
   


vec2 v;		// = vec2(1.0,  2.0);
float y;	// =  3.0;
int x;  // = 2;


int getX(){
	return x;
}

float getY(){
	return y;
}

bool check = true;

bool assert(bool test){
	return check = check && test;
}

bool assert2(bool test1, bool test2){
	assert(test1);
	assert(test2);
	return check;
}


bool assertAndGet(bool test){
        assert(test);
        return check;
}


bool test(){
	bool check = true;
	
	assert((true && false) == false);
	assert((true && false) != true);
	
	int x = x + 1;
	
	assert(x == 3);
	assert(y == 3.0);
	assert(v.x == 1.0);
	assert(v.y == 2.0);
	
	
	vec4 v4 = (((v.xyx/1.0) * 2.0 + 1.0) - 1.0).yyxz; // v3 = 4422
	assert(v4.x == 4.0);
	assert(v4.y == 4.0);
	assert(v4.z == 2.0);
	assert(v4.w == 2.0);
	
	v4 = v4 + v4;
	assert(v4.x == 8.0);
	assert(v4.y == 8.0);
	assert(v4.z == 4.0);
	assert(v4.w == 4.0);
	
	
	v4 = v4 / 2.0;
	assert(v4.x == 4.0);
	assert(v4.y == 4.0);
	assert(v4.z == 2.0);
	assert(v4.w == 2.0);
	
	v4.x = 1.0;
	assert(v4.x == 1.0);
	assert(v4.y == 4.0);
	assert(v4.z == 2.0);
	assert(v4.w == 2.0);
	
	v4.wz += (v4.yx = v4.xy) + 1.0;
	assert(v4.x == 4.0);
	assert(v4.y == 1.0);
	assert(v4.z == 4.0);
	assert(v4.w == 7.0);
	
	
	
	
	int i;
	int sum = -55;
	for(i = 0; i < 10; ++i){
		sum += i;
		i *= 1;
		i /= 1;
                if(false)
                        continue;
                else if(false)
                        break;
                else 
                        continue;
	}
	
	assert(sum == 0);

	int w = 0;
	int count = 0;
	while(w != 10){
		w += 2;
		++count;
	}
	
	assert2(w == 10, count == 5);
	
	/**/
	int sw;
	switch(++w){
		case 11: {
			sw = 1;
			break;
		}
		default:
			sw = 0;
		case 12:
		        sw = 0;
	}

	assert(sw == 1);
	assert(sw >= 1);
	assert(sw <= 1);
	assert((sw < 1) == false);
	assert((sw > 1) == false);
	assert((sw != 1) == false);
	/**/
	
	x = 0;
	y = 0.0;
	assert2(++x == 1, y++ == 0.0);
	assert2(x == 1, y == 1.0);
	
	assert(getY() == 1.0);
	assert(getX() == 2);


        if(getY() != 1.0)
                assert(false);
        else
                assert(true);

        if(getX() != 2)
                assert(false);

        
        bool tern = assertAndGet(true) ? assertAndGet(true) : assertAndGet(false);
        tern = (assertAndGet(true) ? assertAndGet(true) : assertAndGet(false)) ?
               (assertAndGet(true) ? assertAndGet(true) : assertAndGet(false)) :
               (assertAndGet(false) ? assertAndGet(false) : assertAndGet(false));
               
               
        if(check && assertAndGet(true))
                assert(true);
                
        if(check || assertAndGet(true))
                assert(true);
        
        
         
        if(check == false && assertAndGet(true) == false)
                assert(false);
                
        if(check == false || assertAndGet(true) == false)
                assert(false);
        
        assert(-(-x) == x);
        assert(-(-y) == y);
        assert(-x != x);
        assert(-y != y);
        assert(+x == x);
        assert(+y == y);
        
        
        vec4 neg = -v4;
        assert(v4.x == -4.0);
	assert(v4.y == -1.0);
	assert(v4.z == -4.0);
	assert(v4.w == -7.0);
	
        
	return check;
}



/*
void main()
{
      fragColor = vec4(0,check,0,1.0); 
}
*/


