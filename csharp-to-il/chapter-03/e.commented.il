
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
// MVID: {77ADE2B9-E8FB-48E6-87F0-BFF0C988A27F}
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
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldc.i4.s   10
    IL_0003:  call       void Program::While(int32)
    IL_0008:  nop
    IL_0009:  ldc.i4.s   10
    IL_000b:  call       void Program::DoWhile(int32)
    IL_0010:  nop
    IL_0011:  ret
  } // end of method Program::Main

  .method public hidebysig static void  While(int32 max) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  2
    .locals init (int32 V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0

    // 和do...while()版本相比，就多了这步无条件跳转
    IL_0003:  br.s       IL_0012

    IL_0005:  nop
    IL_0006:  ldloc.0
    IL_0007:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_000c:  nop
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.1
    IL_000f:  add
    IL_0010:  stloc.0
    IL_0011:  nop
    IL_0012:  ldloc.0
    IL_0013:  ldarg.0
    IL_0014:  clt
    IL_0016:  stloc.1
    IL_0017:  ldloc.1
    IL_0018:  brtrue.s   IL_0005

    IL_001a:  ret
  } // end of method Program::While

  .method public hidebysig static void  DoWhile(int32 max) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  2
    .locals init (int32 V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  nop
    IL_0004:  ldloc.0
    IL_0005:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_000a:  nop
    IL_000b:  ldloc.0
    IL_000c:  ldc.i4.1
    IL_000d:  add
    IL_000e:  stloc.0
    IL_000f:  nop
    IL_0010:  ldloc.0
    IL_0011:  ldc.i4.s   10
    IL_0013:  clt
    IL_0015:  stloc.1
    IL_0016:  ldloc.1
    IL_0017:  brtrue.s   IL_0003

    IL_0019:  ret
  } // end of method Program::DoWhile

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
