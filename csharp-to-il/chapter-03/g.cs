// 示例07
// 演示C#中的for, continue, break如何编译为IL代码

class Program
{
    public static void Main()
    {
       For(0, 15, 1); 
    }

    private static void For(int start, int end, int step)
    {
        for (int i = start; i < end; i += step)
        {
            if(i % 2 == 0) continue;
            if(i > 10) break;
            System.Console.WriteLine(i);
        }
    }
}