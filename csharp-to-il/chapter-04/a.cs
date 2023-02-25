// 示例01
// 演示C#中的ref关键字如何编译为IL代码

class Program
{
    public static void Main()
    {
        int n = 0;
        int m;
        RefWrite(ref n);
        RefReadWrite(ref n);
        Out(out m);
        System.Console.WriteLine(n);
        System.Console.WriteLine(m);
    }

    private static void RefWrite(ref int n)
    {
        n = 10;
    }

    private static void Out(out int n)
    {
        n = 10;
    }

    private static void RefReadWrite(ref int n)
    {
        n++;
    }
}