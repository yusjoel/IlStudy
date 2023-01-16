// 示例02
// 静态构造方法

class Program
{
    public static void Main()
    {
       System.Console.WriteLine("IL!");
    }

    // 静态构造方法，对应.cctor
    static Program()
    {
        System.Console.WriteLine("Hello");
    }
}
