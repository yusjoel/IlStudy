
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly b
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module b.exe
// MVID: {204443F7-517A-43B2-85FE-B0DA13E5C5F7}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x07520000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .field private static bool s_BooleanValue
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  call       void Program::If1()
    IL_0006:  nop
    IL_0007:  ldc.i4.1
    IL_0008:  call       void Program::If2(bool)
    IL_000d:  nop
    IL_000e:  ret
  } // end of method Program::Main

  .method public hidebysig static void  If1() cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop

    // 载入静态字段
    IL_0001:  ldsfld     bool Program::s_BooleanValue
    // 载入常量0
    IL_0006:  ldc.i4.0
    // 比较是否相同，相同载入1
    IL_0007:  ceq

    // 把结果存储到局部变量0，再次载入
    IL_0009:  stloc.0
    IL_000a:  ldloc.0

    // 如果比较结果为true，则跳转到IL_0018
    IL_000b:  brtrue.s   IL_0018

    // 要注意原文中编译的结果有所不同
    // 它载入了静态字段的值之后，直接使用命令
    // brfalse.s IL_xxxx
    // 进行了跳转，都不需要额外增加一个局部变量

    // 参考b2.cs
    // 新的编译器总是使用brtrue.s，并且保持if语句的顺序
    // 如果比较的结果不能保持if语句的顺序，那么就和0再进行一次比较
    // 当然这些细节不是很重要

    IL_000d:  ldstr      "If1"
    IL_0012:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0017:  nop
    IL_0018:  ret
  } // end of method Program::If1

  .method public hidebysig static void  If2(bool b) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop

    // 基本同If1，只是这里是读取参数0
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.0
    IL_0003:  ceq
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  brtrue.s   IL_0014

    IL_0009:  ldstr      "If2"
    IL_000e:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0013:  nop
    IL_0014:  ret
  } // end of method Program::If2

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Program::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  stsfld     bool Program::s_BooleanValue
    IL_0006:  ret
  } // end of method Program::.cctor

} // end of class Program


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 b.exe.res
