#include <stdio.h>
int main() {
	int c1,n1,c2,n2;
	double v1,v2;
	scanf("%d %d",&c1,&n1);
	scanf("%lf",&v1);
	scanf("%d %d",&c2,&n2);
	scanf("%lf",&v2);
	double pagar=n1*v1+n2*v2;
	printf("VALOR A PAGAR: R$ %.2lf\n",pagar);
}