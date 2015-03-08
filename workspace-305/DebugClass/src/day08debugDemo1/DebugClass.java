package day08debugDemo1;

public class DebugClass
{
    
    public static void main(String[] args)
    {
        int sum = 0;
        double average = 0;
        
        for (int i = 1; i <= 5; i++) {
            sum += i;
            average = sum / i;
        }
        System.out.println(average);
    }
}
