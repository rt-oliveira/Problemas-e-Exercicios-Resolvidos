/* Descrição:
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
*/

#include <stdio.h>

int main(int argc, char const *argv[])
{
	int soma=0;
	int i;
	for(i=3;i<1000;i++){
		if(i%3==0 || i%5==0)
			soma+=i;
	}
	printf("%d",soma);
}