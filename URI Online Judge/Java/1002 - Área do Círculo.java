import java.util.*;

class Main {
    
    public static void main(String args[]){
        Scanner ler=new Scanner(System.in);
        Main t=new Main();
        System.out.format(Locale.US,"A=%.4f\n",t.area(ler.nextDouble()));
    }
    public double area(double t){
        return 3.14159*t*t;
    }
}
