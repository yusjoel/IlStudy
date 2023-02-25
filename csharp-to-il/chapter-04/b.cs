// 示例02
// 演示C#中的字符串操作如何编译为IL代码

class Program
{
    public static void Main()
    {
        Print1();
        Print2();

        Equals();
    }

    private static void Print1()
    {
        string message = "Hello, " + "IL!";
        System.Console.WriteLine(message);
    }

    private static void Print2()
    {
        string message1 = "Hello, ";
        string message2 = message1 + "IL!";
        System.Console.WriteLine(message2);
    }

    private static void Equals()
    {
        string a = "bye";
        string b = "bye";
        System.Console.WriteLine(a == b);
    }
}