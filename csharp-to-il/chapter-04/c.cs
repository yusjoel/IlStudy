// 示例03
// 演示C#中的字符如何编译为IL代码

class Program
{
    public static void Main()
    {
        Print1();
        Print2();
        Print3();
    }

    private static void Print1()
    {
        int i = 65;
        System.Console.WriteLine((char)i);
    }

    private static void Print2()
    {
        char ch = 'A';
        System.Console.WriteLine(ch);
    }

    private static void Print3()
    {
        System.Console.WriteLine('\u0041');
        System.Console.WriteLine(0x41);
    }
}