// 示例05
// 演示C#中的while语句如何编译为IL代码

class Program
{
    public static void Main()
    {
        While(10);
        DoWhile(10);
    }

    public static void While(int max)
    {
        int i = 0;
        while (i < max)
        {
            System.Console.WriteLine(i);
            i++;
        }
    }

    public static void DoWhile(int max)
    {
        int i = 0;
        do
        {
            System.Console.WriteLine(i);
            i++;
        }
        while(i < 10);
    }
}