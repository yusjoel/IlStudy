
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly d
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module d.exe
// MVID: {A78BB76F-394D-4083-8755-1877709A358D}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x07470000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 代码大小       15 (0xf)
    .maxstack  1
    .locals init (class C V_0)
    IL_0000:  nop
    IL_0001:  newobj     instance void C::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  callvirt   instance void C::SayHello()
    IL_000d:  nop
    IL_000e:  ret
  } // end of method Program::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Program::.ctor

} // end of class Program

.class private auto ansi C
       extends [mscorlib]System.Object
{
  // 字段定义使用.field指示符
  .field private static int32 s_IntField
  .field private int64 m_SmallLongField
  .field private int64 m_BigLongField
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8

    // 静态变量在.cctor中初始化
    // 将常数6放到栈顶
    // ldc.i4.6
    IL_0000:  ldc.i4.6
    // 出栈赋值给静态字段s_IntField
    IL_0001:  stsfld     int32 C::s_IntField
    IL_0006:  nop
    IL_0007:  ldstr      "static constructor"
    IL_000c:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0011:  nop
    IL_0012:  nop
    IL_0013:  ret
  } // end of method C::.cctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8

    // 非静态的字段在非静态的构造方法中初始化
    // 赋值前要先压入this
    IL_0000:  ldarg.0
    // 再压入常数7
    IL_0001:  ldc.i4.7
    // 栈顶转成i8
    IL_0002:  conv.i8
    // 使用stfld命令赋值
    IL_0003:  stfld      int64 C::m_SmallLongField

    // long.MaxValue直接编译成了一个常数
    IL_0008:  ldarg.0
    IL_0009:  ldc.i8     0x7fffffffffffffff
    IL_0012:  stfld      int64 C::m_BigLongField
    
    IL_0017:  ldarg.0
    IL_0018:  call       instance void [mscorlib]System.Object::.ctor()
    IL_001d:  nop
    IL_001e:  nop
    IL_001f:  ldstr      "constructor"
    IL_0024:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0029:  nop
    IL_002a:  nop
    IL_002b:  ret
  } // end of method C::.ctor

  .method public hidebysig instance void 
          SayHello() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  1

    // 局部变量使用.locals指示符
    // int => int32
    // long => int64
    // 变量名丢失

    .locals init (int32 V_0,
             int64 V_1)
             
    IL_0000:  nop

    // 将常量9放到栈顶
    // ldc.i4.s 代表读1个字节，而不是4个字节
    IL_0001:  ldc.i4.s   9
    // 栈顶的数出栈，放到 locals[0]
    IL_0003:  stloc.0
    // 将常量22放到栈顶
    IL_0004:  ldc.i4.s   22
    // 栈顶的数转成i8
    IL_0006:  conv.i8
    // 栈顶的数出栈，放到 locals[1]
    IL_0007:  stloc.1
    IL_0008:  ldstr      "Hello"
    IL_000d:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0012:  nop
    IL_0013:  ret
  } // end of method C::SayHello

} // end of class C


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 d.exe.res
