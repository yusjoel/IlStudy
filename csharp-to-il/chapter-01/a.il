// 定义模块名
.module a.exe
// .subsystem: 这个指令用于指定可执行体运行在什么操作系统上。
// 这是另一种指定可执行体所代表的种类的方式。一些数字值和它们对应的操作系统如下所示：
//  2 - A Windows Character 子系统。
//  3 - A Windows GUI 子系统。
//  5 - 像OS/2这样的老系统。
.subsystem 3
// 指定对于64位计算机唯一的标志。值1表示它是从il中创建的可执行文件，而值64表示一个库。
.corflags 1
// 程序集
// 引用外部程序集
.assembly extern mscorlib 
{
    // 指定外部程序集的散列值
    .hash = (52 44 F8 C9 55 1F 54 3F 97 D7 AB AD E2 DF 1D E0
           F2 9D 4F BC )
    // 指定版本号
    .ver 1:0:2204:21
}
// exe必须要定义一个程序集，Dll可选
// 一个模块只能有一个程序集
.assembly 'App' 
{
    // 自己的程序集指定散列算法
    .hash algorithm 0x00008004
    // 指定版本号
    .ver 0:1:0:0
}

// 类，可选
// private：这表示了对类的成员的访问被约束为只能在当前类中。
// auto：这表示类在内存中的布局将只由运行时来决定，而不是由我们的程序决定。
// ansi：源代码通常被划分为两个主要的类别：托管代码和非托管代码。
// extends: 派生
.class private auto ansi beforefieldinit Program extends [mscorlib]System.Object {

    // .method: 方法
    // hidebysig：hidebysig特性保证了父类中的函数在具有相同名称或签名的派生类中会被隐藏。
    // static：静态方法属于一个类而不属于一个实例。
    .method private hidebysig static void Main ( string[] args) cil managed {
        // 入口，并不要求入口的方法名是Main，只能有一个入口
        // 可以放在函数内的任意位置
        .entrypoint

        ldstr "Hello, IL!"
		call void [mscorlib]System.Console::WriteLine(class System.String)
        
        // 返回
        ret
    }

    // 构造方法
    // rtspecialname: 这个特性会告诉运行时——函数的名称是特殊的，它会以一种特殊的方式被对待。
    // specialname: 这个特性会提示编译器和工具——函数是特殊的。运行时可能选择忽略这个特性。
    // instance: 一个常规的函数会被一个实例函数调用。这样一个函数与一个对象关联，不同于静态方法，后者关联到一个类。
    .method public hidebysig specialname rtspecialname instance void .ctor () cil managed {
        // ldarg.0: 这是一个汇编器指令，它加载this指针或第0个参数的地址到执行栈上。
        ldarg.0

        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
} 