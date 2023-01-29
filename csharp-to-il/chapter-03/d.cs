// 示例04
// 演示C#中的复杂些的if语句如何编译为IL代码

class Program
{
    public static void Main()
    {
        If(false, true, false, true);
    }

    public static void If(bool b1, bool b2, bool b3, bool b4)
    {
        if(b1)
        {
            System.Console.WriteLine("=> b1");
        }
        else if(b2)
        {
            System.Console.WriteLine("=> b2");
        }
        else if(b3)
        {
            System.Console.WriteLine("=> b3");
        }
        else if(b4)
        {
            System.Console.WriteLine("=> b4");
        }


        if(b1)
        {
            if(b4)
            {
                System.Console.WriteLine("b1 & b4");
            }
            else
            {
                System.Console.WriteLine("b1 & !b4");
            }
        }
        else
        {
            if(!b3)
                System.Console.WriteLine("!b1 & !b3");
        }

        if(b2)
        {
            System.Console.WriteLine("b2");
        }

        if(b3)
        {
            System.Console.WriteLine("b3");
        }
    }
}