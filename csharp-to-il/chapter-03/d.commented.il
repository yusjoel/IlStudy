
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly d
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module d.exe
// MVID: {A51621CD-1A27-4125-B860-8811A528CBB5}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x07A40000


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
    IL_0002:  ldc.i4.1
    IL_0003:  ldc.i4.0
    IL_0004:  ldc.i4.1
    IL_0005:  call       void Program::If(bool,
                                          bool,
                                          bool,
                                          bool)
    IL_000a:  nop
    IL_000b:  ret
  } // end of method Program::Main

  .method public hidebysig static void  If(bool b1,
                                           bool b2,
                                           bool b3,
                                           bool b4) cil managed
  {
    // 代码大小       200 (0xc8)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.0
    IL_0003:  ceq
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  brtrue.s   IL_0018

    IL_0009:  nop
    IL_000a:  ldstr      "=> b1"
    IL_000f:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0014:  nop
    IL_0015:  nop
    IL_0016:  br.s       IL_005b

    IL_0018:  ldarg.1
    IL_0019:  ldc.i4.0
    IL_001a:  ceq
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  brtrue.s   IL_002f

    IL_0020:  nop
    IL_0021:  ldstr      "=> b2"
    IL_0026:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_002b:  nop
    IL_002c:  nop
    IL_002d:  br.s       IL_005b

    IL_002f:  ldarg.2
    IL_0030:  ldc.i4.0
    IL_0031:  ceq
    IL_0033:  stloc.0
    IL_0034:  ldloc.0
    IL_0035:  brtrue.s   IL_0046

    IL_0037:  nop
    IL_0038:  ldstr      "=> b3"
    IL_003d:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0042:  nop
    IL_0043:  nop
    IL_0044:  br.s       IL_005b

    IL_0046:  ldarg.3
    IL_0047:  ldc.i4.0
    IL_0048:  ceq
    IL_004a:  stloc.0
    IL_004b:  ldloc.0
    IL_004c:  brtrue.s   IL_005b

    IL_004e:  nop
    IL_004f:  ldstr      "=> b4"
    IL_0054:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0059:  nop
    IL_005a:  nop
    IL_005b:  ldarg.0
    IL_005c:  ldc.i4.0
    IL_005d:  ceq
    IL_005f:  stloc.0
    IL_0060:  ldloc.0
    IL_0061:  brtrue.s   IL_008b

    IL_0063:  nop
    IL_0064:  ldarg.3
    IL_0065:  ldc.i4.0
    IL_0066:  ceq
    IL_0068:  stloc.0
    IL_0069:  ldloc.0
    IL_006a:  brtrue.s   IL_007b

    IL_006c:  nop
    IL_006d:  ldstr      "b1 & b4"
    IL_0072:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0077:  nop
    IL_0078:  nop
    IL_0079:  br.s       IL_0088

    IL_007b:  nop
    IL_007c:  ldstr      "b1 & !b4"
    IL_0081:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0086:  nop
    IL_0087:  nop
    IL_0088:  nop
    IL_0089:  br.s       IL_009d

    IL_008b:  nop
    IL_008c:  ldarg.2
    IL_008d:  stloc.0
    IL_008e:  ldloc.0
    IL_008f:  brtrue.s   IL_009c

    IL_0091:  ldstr      "!b1 & !b3"
    IL_0096:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_009b:  nop
    IL_009c:  nop
    IL_009d:  ldarg.1
    IL_009e:  ldc.i4.0
    IL_009f:  ceq
    IL_00a1:  stloc.0
    IL_00a2:  ldloc.0
    IL_00a3:  brtrue.s   IL_00b2

    IL_00a5:  nop
    IL_00a6:  ldstr      "b2"
    IL_00ab:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_00b0:  nop
    IL_00b1:  nop
    IL_00b2:  ldarg.2
    IL_00b3:  ldc.i4.0
    IL_00b4:  ceq
    IL_00b6:  stloc.0
    IL_00b7:  ldloc.0
    IL_00b8:  brtrue.s   IL_00c7

    IL_00ba:  nop
    IL_00bb:  ldstr      "b3"
    IL_00c0:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_00c5:  nop
    IL_00c6:  nop
    IL_00c7:  ret
  } // end of method Program::If

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
// 警告: 创建了 Win32 资源文件 d.exe.res
