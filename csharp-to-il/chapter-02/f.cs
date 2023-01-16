// 示例06
// 参数以及返回

class Program
{
    public static void Main()
    {
        Print1(10);

        Print2(11);

        Print3(12);

        var c = new C();
        int n = c.GiveMeFive();
        c.Print(n);
    }

    public static void Print1(int number) 
    {
        System.Console.WriteLine(number);
    }

    public static void Print2(int number) 
    {
        System.Console.WriteLine("{0}", number);
    }

    public static void Print3(object number) 
    {
        System.Console.WriteLine("{0}", number);
    }
}

class C 
{
    public void Print(int number)
    {
        System.Console.WriteLine("{0}", number);
    }

    public int GiveMeFive()
    {
        return 5;
    }
}