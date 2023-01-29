
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly f
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module f.exe
// MVID: {B48B66AB-9A86-445A-8C35-1190F9FFAAB1}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x07460000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 代码大小       50 (0x32)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldc.i4.1
    IL_0002:  ldc.i4.2
    IL_0003:  call       void Program::Equals(int32,
                                              int32)
    IL_0008:  nop
    IL_0009:  ldc.i4.1
    IL_000a:  ldc.i4.2
    IL_000b:  call       void Program::NotEquals(int32,
                                                 int32)
    IL_0010:  nop
    IL_0011:  ldc.i4.1
    IL_0012:  ldc.i4.2
    IL_0013:  call       void Program::Great(int32,
                                             int32)
    IL_0018:  nop
    IL_0019:  ldc.i4.1
    IL_001a:  ldc.i4.2
    IL_001b:  call       void Program::GreatEquals(int32,
                                                   int32)
    IL_0020:  nop
    IL_0021:  ldc.i4.1
    IL_0022:  ldc.i4.2
    IL_0023:  call       void Program::Less(int32,
                                            int32)
    IL_0028:  nop
    IL_0029:  ldc.i4.1
    IL_002a:  ldc.i4.2
    IL_002b:  call       void Program::LessEquals(int32,
                                                  int32)
    IL_0030:  nop
    IL_0031:  ret
  } // end of method Program::Main

  .method public hidebysig static void  Equals(int32 a,
                                               int32 b) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop

    // 这里首先用ceq比较 arg.0 和 arg.1 是否相同
    // 然后再用比较结果和0进行比较
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ceq
    IL_0005:  ldc.i4.0
    IL_0006:  ceq
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  brtrue.s   IL_001b

    IL_000c:  nop
    IL_000d:  ldstr      "a == b"
    IL_0012:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0017:  nop
    IL_0018:  nop
    IL_0019:  br.s       IL_0028

    IL_001b:  nop
    IL_001c:  ldstr      "a != b"
    IL_0021:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0026:  nop
    IL_0027:  nop
    IL_0028:  ret
  } // end of method Program::Equals

  .method public hidebysig static void  NotEquals(int32 a,
                                                  int32 b) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop

    // 这里和Equals基本一致，只是比较结果没有再和0进行比较
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ceq
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  brtrue.s   IL_0018

    IL_0009:  nop
    IL_000a:  ldstr      "a != b"
    IL_000f:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0014:  nop
    IL_0015:  nop
    IL_0016:  br.s       IL_0025

    IL_0018:  nop
    IL_0019:  ldstr      "a == b"
    IL_001e:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0023:  nop
    IL_0024:  nop
    IL_0025:  ret
  } // end of method Program::NotEquals

  .method public hidebysig static void  Great(int32 a,
                                              int32 b) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop

    // 和Equals的基本一致，只是ceq变成了cgt
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  cgt
    IL_0005:  ldc.i4.0
    IL_0006:  ceq
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  brtrue.s   IL_001b

    IL_000c:  nop
    IL_000d:  ldstr      "a > b"
    IL_0012:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0017:  nop
    IL_0018:  nop
    IL_0019:  br.s       IL_0028

    IL_001b:  nop
    IL_001c:  ldstr      "!(a > b)"
    IL_0021:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0026:  nop
    IL_0027:  nop
    IL_0028:  ret
  } // end of method Program::Great

  .method public hidebysig static void  GreatEquals(int32 a,
                                                    int32 b) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop

    // 这里改成比较 a < b，并且直接把比较结果拿来使用
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  clt
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  brtrue.s   IL_0018

    IL_0009:  nop
    IL_000a:  ldstr      "a >= b"
    IL_000f:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0014:  nop
    IL_0015:  nop
    IL_0016:  br.s       IL_0025

    IL_0018:  nop
    IL_0019:  ldstr      "!(a >= b)"
    IL_001e:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0023:  nop
    IL_0024:  nop
    IL_0025:  ret
  } // end of method Program::GreatEquals

  .method public hidebysig static void  Less(int32 a,
                                             int32 b) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop

    // 和Equals的基本一致，只是ceq变成了clt
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  clt
    IL_0005:  ldc.i4.0
    IL_0006:  ceq
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  brtrue.s   IL_001b

    IL_000c:  nop
    IL_000d:  ldstr      "a < b"
    IL_0012:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0017:  nop
    IL_0018:  nop
    IL_0019:  br.s       IL_0028

    IL_001b:  nop
    IL_001c:  ldstr      "!(a < b)"
    IL_0021:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0026:  nop
    IL_0027:  nop
    IL_0028:  ret
  } // end of method Program::Less

  .method public hidebysig static void  LessEquals(int32 a,
                                                   int32 b) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop

    // 这里改成比较 a > b，并且直接把比较结果拿来使用
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  cgt
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  brtrue.s   IL_0018

    IL_0009:  nop
    IL_000a:  ldstr      "a <= b"
    IL_000f:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0014:  nop
    IL_0015:  nop
    IL_0016:  br.s       IL_0025

    IL_0018:  nop
    IL_0019:  ldstr      "!(a <= b)"
    IL_001e:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0023:  nop
    IL_0024:  nop
    IL_0025:  ret
  } // end of method Program::LessEquals

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
// 警告: 创建了 Win32 资源文件 f.exe.res
