#include <stdio.h>

int main(void) {
  double a,b,c;
  scanf("%lf",&a);
  scanf("%lf",&b);
  scanf("%lf",&c);
  double m=(a*2+b*3+c*5)/10.0;
  printf("MEDIA = %.1lf\n",m);
}