// 示例01
// 直接编写一个简单的IL程序，演示无条件跳转指令br和标签label的用法

.assembly extern mscorlib {}
.assembly 'App' {}
.class private auto ansi beforefieldinit Program extends [mscorlib]System.Object {
    .method private hidebysig static void Main ( string[] args) cil managed {
        .entrypoint

        // br(anch)，无条件的跳转
        br.s HelloIL
        ldstr "Hello, World!"
        
        // 标号（label）是一个末尾带有冒号（：）的名称
        HelloIL:
        ldstr "Hello, IL!"
		call void [mscorlib]System.Console::WriteLine(class System.String)

        ret
    }
    .method public hidebysig specialname rtspecialname instance void .ctor () cil managed {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
} 