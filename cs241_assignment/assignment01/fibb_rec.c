#include <stdio.h>

int fibb(int n)
{
	if (n <= 1)
		return n;
	return fibb(n-1) + fibb(n-2);
}

int main()
{
	int n = 12;
	printf("%d", fibb(n));
	return 0;
}
