#include<stdio.h>
#include<string.h>

int lower(char *mystring, int strlength)
{
	for(int i=0; i <= strlength; i++){
		if (mystring[i] >= 'A' && mystring[i] <= 'Z')
		{
			mystring[i] = mystring[i] + 32;
		}
	}
	printf("Lower Case: %s\n", mystring);
	return 0;
}

int upper(char *mystring)
{
	for (int i = 0; mystring[i] != '\0'; i++){
		if(mystring[i] >= 'a' && mystring[i] <= 'z'){
			mystring[i] = mystring[i] - 32;
		}
	}
	printf("Upper Case: %s\n", mystring);
	return 0;
}

int main(void){
	char string1[] = "Hello World!";
	char string2[] = "Hello World!";
	char string3[] = "Hello World!";
	int length = 12;
	char func1 = lower(string2,length);
	char func2 = upper(string3);
	printf("the pointer to the original string: 0x%x\n", &string1);
	printf("the modified strings are: 0x%x and 0x%x\n", &string2, &string3);
	return 0;
}
