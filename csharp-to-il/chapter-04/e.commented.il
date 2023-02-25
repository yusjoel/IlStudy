
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
// MVID: {306D41C1-83EB-4827-8677-9503F60A8A82}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x073B0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 代码大小       29 (0x1d)
    .maxstack  1
    .locals init (class Child V_0)
    IL_0000:  nop
    IL_0001:  newobj     instance void Child::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0

    // Parent有，Child没有，调用Parent
    IL_0008:  callvirt   instance void Parent::SayHi()
    IL_000d:  nop
    IL_000e:  ldloc.0

    // Parent和Child都有，但不是虚方法，调用Child
    IL_000f:  callvirt   instance void Child::SayWhat()
    IL_0014:  nop
    IL_0015:  ldloc.0

    // 虚方法，Child覆写了，还是调用Parent
    IL_0016:  callvirt   instance void Parent::SayBye()
    IL_001b:  nop
    IL_001c:  ret
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

.class private auto ansi beforefieldinit Parent
       extends [mscorlib]System.Object
{
  .method public hidebysig instance void 
          SayHi() cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Hi!"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Parent::SayHi

  .method public hidebysig instance void 
          SayWhat() cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "World!"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Parent::SayWhat

  // 虚方法，多了 newslot virtual 关键字
  .method public hidebysig newslot virtual 
          instance void  SayBye() cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Bye!"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Parent::SayBye

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Parent::.ctor

} // end of class Parent

.class private auto ansi beforefieldinit Child
       extends Parent
{
  // 同名方法，不需要像C#那样加个new关键字
  .method public hidebysig instance void 
          SayWhat() cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "IL!"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Child::SayWhat

  // 重载的虚方法，多了 virtual 关键字，没有 newslot
  .method public hidebysig virtual instance void 
          SayBye() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance void Parent::SayBye()
    IL_0007:  nop
    IL_0008:  ldstr      "Bye!"
    IL_000d:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0012:  nop
    IL_0013:  ret
  } // end of method Child::SayBye

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Parent::.ctor()
    IL_0006:  ret
  } // end of method Child::.ctor

} // end of class Child


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 e.exe.res
