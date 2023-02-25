// 示例05
// 演示C#中的继承如何编译为IL代码

class Program
{
    public static void Main()
    {
        var child = new Child();
        child.SayHi();
        child.SayWhat();
        child.SayBye();
    }

}

class Parent
{
    public void SayHi()
    {
        System.Console.WriteLine("Hi!");
    }

    public void SayWhat()
    {
        System.Console.WriteLine("World!");
    }

    public virtual void SayBye()
    {
        System.Console.WriteLine("Bye!");
    }
}

class Child : Parent
{
    public new void SayWhat()
    {
        System.Console.WriteLine("IL!");
    }

    public override void SayBye()
    {
        base.SayBye();
        System.Console.WriteLine("Bye!");
    }
}
