
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly e
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module e.exe
// MVID: {BCA3FE6B-5AE4-41DA-BA12-4E3F8422C60D}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x074C0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .field private static int32 m_IntValue
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 代码大小       59 (0x3b)
    .maxstack  8
    IL_0000:  nop

    // Console::WriteLine提供了Console::WriteLine(int32)的重载，所以直接使用ldc.i4.s命令
    IL_0001:  ldc.i4.s   10
    IL_0003:  call       void [mscorlib]System.Console::WriteLine(int32)

    IL_0008:  nop
    IL_0009:  ldstr      "{0}"

    // 这里要把int转成object，所以需要装箱。
    // 要注意这里并没有如教程中所示，创建了一个局部变量用于保存20，然后再装箱这个局部变量。
    // 教程中说明的理由是: 存储在栈上的常量是没有物理地址的。因此，变量V_0会被创建，以提供内存位置。
    // 但显然后续的版本中解决了这个问题。
    
    // c#:
    // System.Console.WriteLine("{0}", 20);

    // IL:
    // ldc.i4.s 20
    // stloc.0
    // ldloca.s V_0
    // box [mscorlib]System.Int32

    IL_000e:  ldc.i4.s   20
    IL_0010:  box        [mscorlib]System.Int32
    IL_0015:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_001a:  nop


    IL_001b:  ldc.i4     0x309
    IL_0020:  stsfld     int32 Program::m_IntValue
    IL_0025:  ldstr      "{0}"

    // 这里装箱了静态字段 Program::m_IntValue
    IL_002a:  ldsfld     int32 Program::m_IntValue
    IL_002f:  box        [mscorlib]System.Int32
    IL_0034:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0039:  nop
    IL_003a:  ret
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


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 e.exe.res
