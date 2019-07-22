#include <stdio.h>
int main() {
	int number;
	scanf("%d",&number);
	int horas;
	scanf("%d",&horas);
	double valor;
	scanf("%lf",&valor);
	printf("NUMBER = %d\n",number);
	printf("SALARY = U$ %.2lf\n",horas*valor);
}