## madd-insertion module

# Not updated yet!!
Considering the following two threads:

P1(A = 2; B = 1)

P2(R1 = B; R2 = A)

在SC顺序一致性模型下，R1=1和R2=0是不可能作为一个结果的。但是在WMM下可以出现，为了让乱序现象放大，采用对P1（A=2）这条语句做一些操作，使得在赋值之前的依赖足够长使得`B=1`更容易被逆序。

### Thread Code
``````
_Z15thread1_routinePv:                  // @_Z15thread1_routinePv
// %bb.0:                               // %entry
        stp     x29, x30, [sp, #-16]!   // 16-byte Folded Spill
        adrp    x0, sig_start
        add     x0, x0, :lo12:sig_start
        mov     x29, sp
        adrp    x19, A
        ldr     x19, [x19, :lo12:A]
        adrp    x20, B
        ldr     x20, [x20, :lo12:B]

        bl      pthread_barrier_wait
        // adrp x8, A
        // ldr  x8, [x8, :lo12:A]
        mov     x9, #2
        mov     x0, #1
        {} // -> Notice 1
        str     w9, [x19]
        //APP
        // madd xzr, x0, x0, x0
        //NO_APP
        //APP
        //NO_APP
        // adrp x8, B
        // ldr  x8, [x8, :lo12:B]
        mov     w10, #1
        str     w10, [x20]
        ldp     x29, x30, [sp], #16     // 16-byte Folded Reload
        ret

``````
Notice 1: 在这里添加一定数量的`sdiv x9, x9, x0`来触发`str w9, [x19]`的依赖。

``````
_Z15thread2_routinePv:                  // @_Z15thread2_routinePv
// %bb.0:                               // %entry
        stp     x29, x30, [sp, #-16]!   // 16-byte Folded Spill
        adrp    x0, sig_start
        add     x0, x0, :lo12:sig_start
        mov     x29, sp
        bl      pthread_barrier_wait
        adrp    x8, B
        ldr     x8, [x8, :lo12:B]
        adrp    x9, R1
        ldr     x9, [x9, :lo12:R1]
        adrp    x10, A
        ldr     w8, [x8]
        mov     x0, xzr
        str     w8, [x9]
        //APP
        madd    xzr, x0, x0, x0
        //NO_APP
        //APP
        //NO_APP
        ldr     x8, [x10, :lo12:A]
        adrp    x9, R2
        ldr     x9, [x9, :lo12:R2]
        ldr     w8, [x8]
        str     w8, [x9]
        ldp     x29, x30, [sp], #16     // 16-byte Folded Reload
        ret
``````

### 目前存在的问题
Thread 2 没有增加 Fence 单侧会导致 Load-Load / Store-Store 的乱序都发生而无法识别。

### 运行方法
1. `generate-asm.py <sdiv-cnt>`
    * sdiv-cnt: 标定前插sdiv的语句数量
    * 用于生成含有sdiv的语句
2. `generate-bash.py <max-sdiv-cnt> <run-cases>`
    * max-sdiv-cnt: 标定最大的sdiv测试插入数量
    * run-cases: 每个sdiv插入数值重复次数。
    * 用于生成bash运行脚本