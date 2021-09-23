#include <stdio.h>
#include <stdint.h>

int multiply(int a, int b){
	return a*b;
}

int factorial(int a) {
	int product = 1;
	for (int i = a; i > 1; i--){
		product *= multiply(i,i--);
	}
	return product;
}

int main(void){
	int a = 5;
	int c = factorial(a);
	printf("Factorial of %d is %d\n", a, c);
}
