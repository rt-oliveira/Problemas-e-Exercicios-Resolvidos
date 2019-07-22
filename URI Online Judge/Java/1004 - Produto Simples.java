import java.util.*;

class Main {
    
    public static void main(String args[]){
        Scanner ler=new Scanner(System.in);
        Main t=new Main();
        System.out.println("PROD = "+t.prod(ler.nextInt(),ler.nextInt()));
    }
    
    public int prod(int n1,int n2){
        return n1*n2;
    }
}
