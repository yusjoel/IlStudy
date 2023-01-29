
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly c
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module c.exe
// MVID: {40CAA31F-54A5-4697-9CF5-78BB5FFA4389}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x080B0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .field private static bool s_BooleanValue
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  call       void Program::IfElse()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Program::Main

  .method public hidebysig static void  IfElse() cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldsfld     bool Program::s_BooleanValue
    IL_0006:  ldc.i4.0
    IL_0007:  ceq
    IL_0009:  stloc.0
    IL_000a:  ldloc.0

    // 比较结果相同，跳转到IL_001a
    IL_000b:  brtrue.s   IL_001a

    IL_000d:  ldstr      "IfElse.true"
    IL_0012:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0017:  nop

    // 执行完毕，无条件跳转到if语句后面
    IL_0018:  br.s       IL_0025

    // 这里是else部分的语句
    IL_001a:  ldstr      "IfElse.false"
    IL_001f:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0024:  nop
    IL_0025:  ret
  } // end of method Program::IfElse

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
// 警告: 创建了 Win32 资源文件 c.exe.res
