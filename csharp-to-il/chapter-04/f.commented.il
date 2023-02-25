
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
// MVID: {074C932F-D9C2-4E83-B540-5B712015ABC6}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x07BD0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 代码大小       42 (0x2a)
    .maxstack  1
    .locals init (class IPlayer V_0,
             class FootballPlayer V_1)
    IL_0000:  nop
    IL_0001:  newobj     instance void FootballPlayer::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  callvirt   instance void IPlayer::Play()
    IL_000d:  nop
    IL_000e:  newobj     instance void ChineseFootballPlayer::.ctor()
    IL_0013:  stloc.1
    IL_0014:  ldloc.1
    IL_0015:  callvirt   instance void FootballPlayer::Play()
    IL_001a:  nop
    IL_001b:  ldloc.1
    IL_001c:  callvirt   instance void FootballPlayer::Pratice()
    IL_0021:  nop
    IL_0022:  ldloc.1
    IL_0023:  callvirt   instance void FootballPlayer::Goal()
    IL_0028:  nop
    IL_0029:  ret
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


// 这里演示如何定义接口
.class interface private abstract auto ansi IPlayer
{

  // 和虚方法相比，多了abstract
  .method public hidebysig newslot abstract virtual 
          instance void  Play() cil managed
  {
  } // end of method IPlayer::Play

  .method public hidebysig newslot abstract virtual 
          instance void  Pratice() cil managed
  {
  } // end of method IPlayer::Pratice

} // end of class IPlayer

// 实现接口使用implements关键字
.class private auto ansi beforefieldinit FootballPlayer
       extends [mscorlib]System.Object
       implements IPlayer
{

  // 这里多了final关键字，代表实现了接口，并且没有设为虚方法
  .method public hidebysig newslot virtual final 
          instance void  Play() cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Play football!"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method FootballPlayer::Play

  .method public hidebysig newslot virtual 
          instance void  Pratice() cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Pratice!"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method FootballPlayer::Pratice

  .method public hidebysig newslot virtual 
          instance void  Goal() cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Goal!"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method FootballPlayer::Goal

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method FootballPlayer::.ctor

} // end of class FootballPlayer

.class private auto ansi beforefieldinit ChineseFootballPlayer
       extends FootballPlayer
{
  .method public hidebysig virtual instance void 
          Goal() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0

    // 没有base关键字，直接用call而不是callvirt调用FootballPlayer::Goal()
    IL_0002:  call       instance void FootballPlayer::Goal()
    IL_0007:  nop
    IL_0008:  ldstr      "Goal!!"
    IL_000d:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0012:  nop
    IL_0013:  ret
  } // end of method ChineseFootballPlayer::Goal

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void FootballPlayer::.ctor()
    IL_0006:  ret
  } // end of method ChineseFootballPlayer::.ctor

} // end of class ChineseFootballPlayer


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 f.exe.res
