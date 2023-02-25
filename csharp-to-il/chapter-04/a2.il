.assembly extern mscorlib {}
.assembly 'App' {}
.class private auto ansi beforefieldinit Program extends [mscorlib]System.Object {
    .method private hidebysig static void Main ( string[] args) cil managed {
        .entrypoint

    .maxstack  1
    .locals init (int32 V_0)

    IL_0013:  ldloca.s   V_0
    IL_0015:  call       void Program::Out(int32&)
    IL_001b:  ldloc.0
    IL_001c:  call       void [mscorlib]System.Console::WriteLine(int32)

        ret
    }
    .method public hidebysig specialname rtspecialname instance void .ctor () cil managed {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

  .method private hidebysig static void  Out([out] int32& n) cil managed
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
  } // end of method Program::Out
} 