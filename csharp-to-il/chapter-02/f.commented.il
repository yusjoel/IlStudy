
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
// MVID: {9E8D2E93-2891-4B47-BF84-C02D91FEBA20}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x071D0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 代码大小       52 (0x34)
    .maxstack  2
    .locals init (class C V_0,
             int32 V_1)
    IL_0000:  nop
    IL_0001:  ldc.i4.s   10
    IL_0003:  call       void Program::Print1(int32)
    IL_0008:  nop
    IL_0009:  ldc.i4.s   11
    IL_000b:  call       void Program::Print2(int32)
    IL_0010:  nop
    IL_0011:  ldc.i4.s   12
    IL_0013:  box        [mscorlib]System.Int32
    IL_0018:  call       void Program::Print3(object)
    IL_001d:  nop
    IL_001e:  newobj     instance void C::.ctor()
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance int32 C::GiveMeFive()
    IL_002a:  stloc.1
    IL_002b:  ldloc.0
    IL_002c:  ldloc.1
    IL_002d:  callvirt   instance void C::Print(int32)
    IL_0032:  nop
    IL_0033:  ret
  } // end of method Program::Main

  .method public hidebysig static void  Print1(int32 number) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0007:  nop
    IL_0008:  ret
  } // end of method Program::Print1

  .method public hidebysig static void  Print2(int32 number) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "{0}"

    // 注意：教程中这里使用了指令 ldarga.s argName
    // 但实际上本文件中所有的方法，不管是要不要装箱，值类型还是引用类型，静态方法还是非静态方法
    // 都使用了ldarg.n指令
    // 教程中提到的这两个指令的差异在于：
    //   我们接受一个System.Object，并使用ldarg指令而不是ldarga。这样做的原因是，我们需要该参数的值和它的地址。

    IL_0006:  ldarg.0
    IL_0007:  box        [mscorlib]System.Int32
    IL_000c:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0011:  nop
    IL_0012:  ret
  } // end of method Program::Print2

  .method public hidebysig static void  Print3(object number) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "{0}"
    IL_0006:  ldarg.0
    IL_0007:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method Program::Print3

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

.class private auto ansi beforefieldinit C
       extends [mscorlib]System.Object
{
  .method public hidebysig instance void 
          Print(int32 number) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "{0}"
    IL_0006:  ldarg.1
    IL_0007:  box        [mscorlib]System.Int32
    IL_000c:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0011:  nop
    IL_0012:  ret
  } // end of method C::Print

  .method public hidebysig instance int32 
          GiveMeFive() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  1
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.5

    // 演示返回值，实际就是放到栈顶

    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method C::GiveMeFive

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method C::.ctor

} // end of class C


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 f.exe.res
