
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly g
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module g.exe
// MVID: {DDB3D3C4-3468-4B1C-8EE7-976F3DA7B571}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x07660000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  ldc.i4.s   15
    IL_0004:  ldc.i4.1
    IL_0005:  call       void Program::For(int32,
                                           int32,
                                           int32)
    IL_000a:  nop
    IL_000b:  ret
  } // end of method Program::Main

  .method private hidebysig static void  For(int32 start,
                                             int32 end,
                                             int32 step) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  2
    .locals init (int32 V_0,
             bool V_1)
    IL_0000:  nop

    // arg.0放到loc.0中
    IL_0001:  ldarg.0
    IL_0002:  stloc.0
    // 跳转
    IL_0003:  br.s       IL_002f

    IL_0005:  nop

    // loc.0 % 2, rem = Remainder 
    IL_0006:  ldloc.0
    IL_0007:  ldc.i4.2
    IL_0008:  rem

    // 取余结果和0比较
    IL_0009:  ldc.i4.0
    IL_000a:  ceq
    IL_000c:  ldc.i4.0
    IL_000d:  ceq
    IL_000f:  stloc.1
    IL_0010:  ldloc.1

    // 不相同则继续
    IL_0011:  brtrue.s   IL_0015

    // 否则跳转到for结束
    IL_0013:  br.s       IL_002b

    // 这里和10比较
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.s   10
    IL_0018:  cgt
    IL_001a:  ldc.i4.0
    IL_001b:  ceq
    IL_001d:  stloc.1
    IL_001e:  ldloc.1
    // 不大于则继续
    IL_001f:  brtrue.s   IL_0023
    // 否则跳出for循环
    IL_0021:  br.s       IL_0037

    // 这里打印
    IL_0023:  ldloc.0
    IL_0024:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0029:  nop
    IL_002a:  nop

    // 这里for循环结束，loc.0 += arg.2
    IL_002b:  ldloc.0
    IL_002c:  ldarg.2
    IL_002d:  add
    IL_002e:  stloc.0

    // 读取loc.0
    IL_002f:  ldloc.0
    // 读取arg.1
    IL_0030:  ldarg.1
    // 小于比较
    IL_0031:  clt
    // 结果放到loc.1
    IL_0033:  stloc.1
    IL_0034:  ldloc.1
    // 小于的话跳转
    IL_0035:  brtrue.s   IL_0005

    IL_0037:  ret
  } // end of method Program::For

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
// 警告: 创建了 Win32 资源文件 g.exe.res
