
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly b2
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module b2.exe
// MVID: {3719D4F1-0475-4C7B-9931-F5EE7B2651F5}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x07420000


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
    // 代码大小       22 (0x16)
    .maxstack  1
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldsfld     bool Program::s_BooleanValue
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brtrue.s   IL_0015

    IL_000a:  ldstr      "If1"
    IL_000f:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0014:  nop
    IL_0015:  ret
  } // end of method Program::If1

  .method public hidebysig static void  If2(bool b) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  1
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  stloc.0
    IL_0003:  ldloc.0
    IL_0004:  brtrue.s   IL_0011

    IL_0006:  ldstr      "If2"
    IL_000b:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0010:  nop
    IL_0011:  ret
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
// 警告: 创建了 Win32 资源文件 b2.exe.res
