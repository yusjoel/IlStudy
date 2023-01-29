// 示例02
// 演示C#中的条件语句如何编译为IL代码

class Program
{
    private static bool s_BooleanValue = true;

    public static void Main()
    {
        If1();
        If2(true);
    }

    public static void If1()
    {
        if(!s_BooleanValue)
            System.Console.WriteLine("If1");
    }

    public static void If2(bool b)
    {
        if(!b)
            System.Console.WriteLine("If2");
    }
}