
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly a
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module a.exe
// MVID: {A2B093D0-E7F4-4A58-8F17-1872AF9B9353}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x076F0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 代码大小       42 (0x2a)
    .maxstack  1
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0

    // ldloca 是[L]oa[d] [loc]al variable [a]ddress
    // 也就是获取地址
    IL_0003:  ldloca.s   V_0

    // int32& 代表传地址
    // 实际上ilasm并不会检查你取没取地址
    // 只是靠这个标记确定了参数的大小，把&去掉也不会影响代码正常运行
    // 但是int8&就不能改成int8，会报错
    IL_0005:  call       void Program::RefWrite(int32&)
    IL_000a:  nop
    IL_000b:  ldloca.s   V_0
    IL_000d:  call       void Program::RefReadWrite(int32&)
    IL_0012:  nop
    IL_0013:  ldloca.s   V_1
    IL_0015:  call       void Program::Out(int32&)
    IL_001a:  nop
    IL_001b:  ldloc.0
    IL_001c:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0021:  nop
    IL_0022:  ldloc.1
    IL_0023:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0028:  nop
    IL_0029:  ret
  } // end of method Program::Main

  .method private hidebysig static void  RefWrite(int32& n) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.s   10
    IL_0004:  stind.i4
    IL_0005:  ret
  } // end of method Program::RefWrite

  .method private hidebysig static void  Out([out] int32& n) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8

    // 这里的代码和RefWrite是一模一样的
    // 原文提到IL是不知道out和ref的区别的，这是C#的概念
    // 新版本加了[out]标记将它区分了开来
    // 但参考a2.il, 即便加了这个标记，对n进行读取也是可以编译过的

    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.s   10
    IL_0004:  stind.i4
    IL_0005:  ret
  } // end of method Program::Out

  .method private hidebysig static void  RefReadWrite(int32& n) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0

    // dup = [Dup]licate the value on the top of the stack. 
    IL_0002:  dup

    // ldind.i4 = [L]oa[d] [ind]irect value of type i4
    IL_0003:  ldind.i4
    IL_0004:  ldc.i4.1
    IL_0005:  add

    // stind = [St]ore [ind]irect
    IL_0006:  stind.i4
    IL_0007:  ret
  } // end of method Program::RefReadWrite

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
// 警告: 创建了 Win32 资源文件 a.exe.res
