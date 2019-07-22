import java.util.Scanner;

public class Main {
    
    public static void main(String args[]){
        Scanner ler=new Scanner(System.in);
        Main eb=new Main();
        System.out.println("X = "+eb.somar(ler.nextInt(),ler.nextInt()));
    }
    
    public int somar(int n1,int n2){
        return n1+n2;
    }
}