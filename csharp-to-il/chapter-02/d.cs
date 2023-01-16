// 示例04
// 静态和非静态字段和局部变量的初始化

class Program
{
    public static void Main()
    {
        var c = new C();
        c.SayHello();
    }
}

class C
{
    // 静态的字段，初始化操作在静态构造方法中
    private static int s_IntField = 6;

    // 非静态的字段，初始化操作的非静态的构造方法中
    private long m_SmallLongField = 7;

    // 赋值的类型不同，对应的IL代码不同，不需要conv.i8命令
    private long m_BigLongField = long.MaxValue;

    // 静态构造方法，对应.cctor 
    static C()
    {
        System.Console.WriteLine("static constructor");
    }

    // 构造方法，对应.ctor
    public C()
    {
        System.Console.WriteLine("constructor");
    }

    public void SayHello()
    {
        // 局部变量，对应.locals命令
        int localInt = 9;
        long localLong = 22;
        System.Console.WriteLine("Hello");
    }
}