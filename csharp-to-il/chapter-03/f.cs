// 示例06
// 演示C#中的比较语句如何编译为IL代码

class Program
{
    public static void Main()
    {
        Equals(1, 2);
        NotEquals(1, 2);
        Great(1, 2);
        GreatEquals(1, 2);
        Less(1, 2);
        LessEquals(1, 2);
    }

    public static void Equals(int a, int b)
    {
        if(a == b)
        {
            System.Console.WriteLine("a == b");
        }
        else
        {
            System.Console.WriteLine("a != b");
        }
    }

    public static void NotEquals(int a, int b)
    {
        if(a != b)
        {
            System.Console.WriteLine("a != b");
        }
        else
        {
            System.Console.WriteLine("a == b");
        }
    }

    public static void Great(int a, int b)
    {
        if(a > b)
        {
            System.Console.WriteLine("a > b");
        }
        else
        {
            System.Console.WriteLine("!(a > b)");
        }
    }

    public static void GreatEquals(int a, int b)
    {
        if(a >= b)
        {
            System.Console.WriteLine("a >= b");
        }
        else
        {
            System.Console.WriteLine("!(a >= b)");
        }
    }

    public static void Less(int a, int b)
    {
        if(a < b)
        {
            System.Console.WriteLine("a < b");
        }
        else
        {
            System.Console.WriteLine("!(a < b)");
        }
    }

    public static void LessEquals(int a, int b)
    {
        if(a <= b)
        {
            System.Console.WriteLine("a <= b");
        }
        else
        {
            System.Console.WriteLine("!(a <= b)");
        }
    }
}