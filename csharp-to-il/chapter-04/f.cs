// 示例06
// 演示C#中的接口和抽象类如何编译为IL代码

class Program
{
    public static void Main()
    {
        IPlayer player = new FootballPlayer();
        player.Play();

        FootballPlayer footballPlayer = new ChineseFootballPlayer();
        footballPlayer.Play();
        footballPlayer.Pratice();
        footballPlayer.Goal();
    }

}

interface IPlayer
{
    void Play();

    void Pratice();
}

class FootballPlayer : IPlayer
{
    public void Play()
    {
        System.Console.WriteLine("Play football!");
    }

    public virtual void Pratice()
    {
        System.Console.WriteLine("Pratice!");
    }

    public virtual void Goal()
    {
        System.Console.WriteLine("Goal!");
    }
}

class ChineseFootballPlayer : FootballPlayer
{
    public override void Goal()
    {
        base.Goal();
        System.Console.WriteLine("Goal!!");
    }
}