#include <stdio.h>
#include "addition.h"
#include "subtraction.h"
#include "multiplication.h"
#include "division.h"
#include "modulus.h"

int main()
{
	printf("add(30, 7) = %d\n", add(30, 7));
	printf("sub(7, 5) = %d\n", sub(7, 5));
	printf("mul(5, 7) = %d\n", mul(5, 7));
	printf("div(15, 3) = %f\n", div(15, 3));
	printf("mul(12, 10) = %d\n", mod(12, 10));
	return 0;
}
