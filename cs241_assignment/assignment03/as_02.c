#include<stdio.h>
#include<string.h>
#include<ctype.h>

int built_in(char *mystring)
{
	int j = 0;
	char ch;
	while (mystring[j]){
		ch = mystring[j];
		putchar(toupper(ch));
		j++;
	}
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
	char input_str[32];
	int i = 0;
	char input_num;
	printf("Enter the string to be converted: ");
	scanf("%31s", &input_str);
	while (i == 0){
		if (i == 0) {
			printf("Enter 1 to convert to use the built-in function and 2 to use the hard-coded function\n");
			scanf(" %c", &input_num);
			if (input_num == '1'){
				built_in(input_str);
				i = 1;
				}
			else if (input_num == '2'){
				upper(input_str);
				i = 2;
			}
			else{
				printf("Invalid Input. Please start again\n");
			}
	}
}
	return 0;	
}
