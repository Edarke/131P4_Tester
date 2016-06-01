//precision highp float;   

/* Yes, this test is valid.
 * No, it's not undefined behavior
 * It probably won't be tested by the grading script, but here it is.
*/


int x;

bool test(){
	int x = x;
	return x == 12;
}
// Expected output: -1

/*
void main(){
	gl_FragColor = vec4(0,test(),0,1.0); // green
}
*/
