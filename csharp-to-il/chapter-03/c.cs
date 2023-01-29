// 示例03
// 演示C#中的if...else..语句如何编译为IL代码

class Program
{
    private static bool s_BooleanValue = true;

    public static void Main()
    {
        IfElse();
    }

    public static void IfElse()
    {
        if(s_BooleanValue)
            System.Console.WriteLine("IfElse.true");
        else
            System.Console.WriteLine("IfElse.false");
    }
}