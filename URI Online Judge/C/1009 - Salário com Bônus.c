#include <stdio.h>
int main() {
	char nome[50];
	scanf("%s",nome);
	double sal,vendas;
	scanf("%lf",&sal);
	scanf("%lf",&vendas);
	printf("TOTAL = R$ %.2lf\n",sal+(.15*vendas));
}