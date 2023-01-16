// 示例03
// new和arg.n

class Program
{
    public static void Main()
    {
        new C("Hello");
    }
}

class C
{
    public C(string message)
    {
        System.Console.WriteLine(message);
    }
}