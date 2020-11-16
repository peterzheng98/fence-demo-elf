
        .text
        .file   "WW-RR-naive-madd-1.cpp"
        .globl  _Z15thread1_routinePv   // -- Begin function _Z15thread1_routinePv
        .p2align        2
        .type   _Z15thread1_routinePv,@function
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
        
	sdiv	x9, x9, x0

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
.Lfunc_end0:
        .size   _Z15thread1_routinePv, .Lfunc_end0-_Z15thread1_routinePv
                                        // -- End function
        .globl  _Z15thread2_routinePv   // -- Begin function _Z15thread2_routinePv
        .p2align        2
        .type   _Z15thread2_routinePv,@function
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
.Lfunc_end1:
        .size   _Z15thread2_routinePv, .Lfunc_end1-_Z15thread2_routinePv
                                        // -- End function
        .globl  main                    // -- Begin function main
        .p2align        2
        .type   main,@function
main:                                   // @main
.Lfunc_begin0:
        .cfi_startproc
        .cfi_personality 0, __gxx_personality_v0
        .cfi_lsda 0, .Lexception0
// %bb.0:                               // %entry
        sub     sp, sp, #208            // =208
        stp     x29, x30, [sp, #112]    // 16-byte Folded Spill
        stp     x28, x27, [sp, #128]    // 16-byte Folded Spill
        stp     x26, x25, [sp, #144]    // 16-byte Folded Spill
        stp     x24, x23, [sp, #160]    // 16-byte Folded Spill
        stp     x22, x21, [sp, #176]    // 16-byte Folded Spill
        stp     x20, x19, [sp, #192]    // 16-byte Folded Spill
        add     x29, sp, #112           // =112
        .cfi_def_cfa w29, 96
        .cfi_offset w19, -8
        .cfi_offset w20, -16
        .cfi_offset w21, -24
        .cfi_offset w22, -32
        .cfi_offset w23, -40
        .cfi_offset w24, -48
        .cfi_offset w25, -56
        .cfi_offset w26, -64
        .cfi_offset w27, -72
        .cfi_offset w28, -80
        .cfi_offset w30, -88
        .cfi_offset w29, -96
        mov     x19, x1
        cmp     w0, #4                  // =4
        b.eq    .LBB2_6
// %bb.1:                               // %entry
        cmp     w0, #2                  // =2
        b.ne    .LBB2_62
// %bb.2:                               // %if.then
        ldr     x19, [x19, #8]
        mov     x8, sp
        add     x21, x8, #16            // =16
        str     x21, [sp]
        cbz     x19, .LBB2_94
// %bb.3:                               // %cond.end.thread.i
        mov     x0, x19
        bl      strlen
        mov     x20, x0
        cmp     x0, #15                 // =15
        stur    x0, [x29, #-40]
        b.ls    .LBB2_10
// %bb.4:                               // %if.then4.i.i.i.i
.Ltmp30:
        mov     x0, sp
        sub     x1, x29, #40            // =40
        mov     x2, xzr
        bl      _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.Ltmp31:
// %bb.5:                               // %call5.i.i.i9.i.noexc
        ldur    x8, [x29, #-40]
        str     x0, [sp]
        str     x8, [sp, #16]
        cbnz    x20, .LBB2_11
        b       .LBB2_17
.LBB2_6:                                // %if.then4
        ldr     x20, [x19, #8]
        mov     x8, sp
        add     x22, x8, #16            // =16
        str     x22, [sp]
        cbz     x20, .LBB2_96
// %bb.7:                               // %cond.end.thread.i119
        mov     x0, x20
        bl      strlen
        mov     x21, x0
        cmp     x0, #15                 // =15
        stur    x0, [x29, #-40]
        b.ls    .LBB2_13
// %bb.8:                               // %if.then4.i.i.i.i123
.Ltmp0:
        mov     x0, sp
        sub     x1, x29, #40            // =40
        mov     x2, xzr
        bl      _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.Ltmp1:
// %bb.9:                               // %call5.i.i.i9.i.noexc131
        ldur    x8, [x29, #-40]
        str     x0, [sp]
        str     x8, [sp, #16]
        cbnz    x21, .LBB2_14
        b       .LBB2_25
.LBB2_10:
        mov     x0, x21
        cbz     x20, .LBB2_17
.LBB2_11:                               // %if.end6.i.i.i.i
        cmp     x20, #1                 // =1
        b.ne    .LBB2_16
// %bb.12:                              // %if.then.i.i.i.i.i.i
        ldrb    w8, [x19]
        strb    w8, [x0]
        b       .LBB2_17
.LBB2_13:
        mov     x0, x22
        cbz     x21, .LBB2_25
.LBB2_14:                               // %if.end6.i.i.i.i125
        cmp     x21, #1                 // =1
        b.ne    .LBB2_24
// %bb.15:                              // %if.then.i.i.i.i.i.i126
        ldrb    w8, [x20]
        strb    w8, [x0]
        b       .LBB2_25
.LBB2_16:                               // %if.end.i.i.i.i.i.i.i
        mov     x1, x19
        mov     x2, x20
        bl      memcpy
.LBB2_17:                               // %invoke.cont
        ldur    x8, [x29, #-40]
        ldr     x9, [sp]
        str     x8, [sp, #8]
        strb    wzr, [x9, x8]
        ldr     x20, [sp]
        bl      __errno_location
        ldr     w22, [x0]
        mov     x19, x0
        str     wzr, [x0]
        sub     x1, x29, #40            // =40
        mov     w2, #10
        mov     x0, x20
        bl      strtol
        ldur    x8, [x29, #-40]
        cmp     x8, x20
        b.eq    .LBB2_98
// %bb.18:                              // %if.else.i.i
        cmp     x0, w0, sxtw
        b.ne    .LBB2_86
// %bb.19:                              // %if.else.i.i
        ldr     w8, [x19]
        cmp     w8, #34                 // =34
        b.eq    .LBB2_86
// %bb.20:                              // %if.else9.i.i
        cbnz    w8, .LBB2_22
// %bb.21:                              // %if.then.i32.i.i
        str     w22, [x19]
.LBB2_22:                               // %invoke.cont2
        ldr     x8, [sp]
        adrp    x9, maxTestTime
        str     w0, [x9, :lo12:maxTestTime]
        cmp     x8, x21
        b.eq    .LBB2_62
// %bb.23:                              // %if.then.i.i109
        mov     x0, x8
        b       .LBB2_61
.LBB2_24:                               // %if.end.i.i.i.i.i.i.i127
        mov     x1, x20
        mov     x2, x21
        bl      memcpy
.LBB2_25:                               // %invoke.cont9
        ldur    x8, [x29, #-40]
        ldr     x9, [sp]
        str     x8, [sp, #8]
        strb    wzr, [x9, x8]
        ldr     x20, [x19, #16]
        sub     x8, x29, #40            // =40
        add     x23, x8, #16            // =16
        stur    x23, [x29, #-40]
        cbz     x20, .LBB2_100
// %bb.26:                              // %cond.end.thread.i138
        mov     x0, x20
        bl      strlen
        mov     x21, x0
        cmp     x0, #15                 // =15
        str     x0, [sp, #40]
        b.ls    .LBB2_29
// %bb.27:                              // %if.then4.i.i.i.i142
.Ltmp2:
        sub     x0, x29, #40            // =40
        add     x1, sp, #40             // =40
        mov     x2, xzr
        bl      _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.Ltmp3:
// %bb.28:                              // %call5.i.i.i9.i.noexc150
        ldr     x8, [sp, #40]
        stur    x0, [x29, #-40]
        stur    x8, [x29, #-24]
        cbnz    x21, .LBB2_30
        b       .LBB2_33
.LBB2_29:
        mov     x0, x23
        cbz     x21, .LBB2_33
.LBB2_30:                               // %if.end6.i.i.i.i144
        cmp     x21, #1                 // =1
        b.ne    .LBB2_32
// %bb.31:                              // %if.then.i.i.i.i.i.i145
        ldrb    w8, [x20]
        strb    w8, [x0]
        b       .LBB2_33
.LBB2_32:                               // %if.end.i.i.i.i.i.i.i146
        mov     x1, x20
        mov     x2, x21
        bl      memcpy
.LBB2_33:                               // %invoke.cont15
        ldr     x8, [sp, #40]
        ldur    x9, [x29, #-40]
        stur    x8, [x29, #-32]
        strb    wzr, [x9, x8]
        ldr     x19, [x19, #24]
        add     x8, sp, #40             // =40
        add     x21, x8, #16            // =16
        str     x21, [sp, #40]
        cbz     x19, .LBB2_102
// %bb.34:                              // %cond.end.thread.i157
        mov     x0, x19
        bl      strlen
        mov     x20, x0
        cmp     x0, #15                 // =15
        stur    x0, [x29, #-8]
        b.ls    .LBB2_37
// %bb.35:                              // %if.then4.i.i.i.i161
.Ltmp4:
        add     x0, sp, #40             // =40
        sub     x1, x29, #8             // =8
        mov     x2, xzr
        bl      _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.Ltmp5:
// %bb.36:                              // %call5.i.i.i9.i.noexc169
        ldur    x8, [x29, #-8]
        str     x0, [sp, #40]
        str     x8, [sp, #56]
        cbnz    x20, .LBB2_38
        b       .LBB2_41
.LBB2_37:
        mov     x0, x21
        cbz     x20, .LBB2_41
.LBB2_38:                               // %if.end6.i.i.i.i163
        cmp     x20, #1                 // =1
        b.ne    .LBB2_40
// %bb.39:                              // %if.then.i.i.i.i.i.i164
        ldrb    w8, [x19]
        strb    w8, [x0]
        b       .LBB2_41
.LBB2_40:                               // %if.end.i.i.i.i.i.i.i165
        mov     x1, x19
        mov     x2, x20
        bl      memcpy
.LBB2_41:                               // %invoke.cont21
        ldur    x8, [x29, #-8]
        ldr     x9, [sp, #40]
        str     x8, [sp, #48]
        strb    wzr, [x9, x8]
        ldr     x20, [sp]
        bl      __errno_location
        ldr     w24, [x0]
        mov     x19, x0
        str     wzr, [x0]
        sub     x1, x29, #8             // =8
        mov     w2, #10
        mov     x0, x20
        bl      strtol
        ldur    x8, [x29, #-8]
        cmp     x8, x20
        b.eq    .LBB2_104
// %bb.42:                              // %if.else.i.i186
        cmp     x0, w0, sxtw
        b.ne    .LBB2_88
// %bb.43:                              // %if.else.i.i186
        ldr     w8, [x19]
        cmp     w8, #34                 // =34
        b.eq    .LBB2_88
// %bb.44:                              // %if.else9.i.i190
        cbnz    w8, .LBB2_46
// %bb.45:                              // %if.then.i32.i.i192
        str     w24, [x19]
.LBB2_46:                               // %invoke.cont25
        adrp    x8, maxTestTime
        ldur    x20, [x29, #-40]
        str     w0, [x8, :lo12:maxTestTime]
        ldr     w24, [x19]
        sub     x1, x29, #8             // =8
        mov     w2, #10
        mov     x0, x20
        str     wzr, [x19]
        bl      strtol
        ldur    x8, [x29, #-8]
        cmp     x8, x20
        b.eq    .LBB2_106
// %bb.47:                              // %if.else.i.i209
        cmp     x0, w0, sxtw
        b.ne    .LBB2_90
// %bb.48:                              // %if.else.i.i209
        ldr     w8, [x19]
        cmp     w8, #34                 // =34
        b.eq    .LBB2_90
// %bb.49:                              // %if.else9.i.i213
        cbnz    w8, .LBB2_51
// %bb.50:                              // %if.then.i32.i.i215
        str     w24, [x19]
.LBB2_51:                               // %invoke.cont27
        adrp    x8, mainCore
        ldr     x20, [sp, #40]
        str     w0, [x8, :lo12:mainCore]
        ldr     w24, [x19]
        sub     x1, x29, #8             // =8
        mov     w2, #10
        mov     x0, x20
        str     wzr, [x19]
        bl      strtol
        ldur    x8, [x29, #-8]
        cmp     x8, x20
        b.eq    .LBB2_108
// %bb.52:                              // %if.else.i.i233
        cmp     x0, w0, sxtw
        b.ne    .LBB2_92
// %bb.53:                              // %if.else.i.i233
        ldr     w8, [x19]
        cmp     w8, #34                 // =34
        b.eq    .LBB2_92
// %bb.54:                              // %if.else9.i.i237
        cbnz    w8, .LBB2_56
// %bb.55:                              // %if.then.i32.i.i239
        str     w24, [x19]
.LBB2_56:                               // %invoke.cont29
        ldr     x8, [sp, #40]
        adrp    x9, sideCore
        str     w0, [x9, :lo12:sideCore]
        cmp     x8, x21
        b.eq    .LBB2_58
// %bb.57:                              // %if.then.i.i246
        mov     x0, x8
        bl      _ZdlPv
.LBB2_58:                               // %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
        ldur    x0, [x29, #-40]
        cmp     x0, x23
        b.eq    .LBB2_60
// %bb.59:                              // %if.then.i.i251
        bl      _ZdlPv
.LBB2_60:                               // %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252
        ldr     x0, [sp]
        cmp     x0, x22
        b.eq    .LBB2_62
.LBB2_61:                               // %if.end37
        bl      _ZdlPv
.LBB2_62:                               // %if.end37
        adrp    x0, sig_start
        add     x0, x0, :lo12:sig_start
        mov     w2, #3
        mov     x1, xzr
        bl      pthread_barrier_init
        mov     w0, #2048
        bl      malloc
        adrp    x8, A
        mov     x1, x0
        adrp    x20, continue_memory
        str     x0, [x8, :lo12:A]
        mov     x8, x0
        str     x0, [x20, :lo12:continue_memory]
        cbnz    x0, .LBB2_68
// %bb.63:                              // %if.then41
        adrp    x19, _ZSt4cout
        add     x19, x19, :lo12:_ZSt4cout
        adrp    x1, .L.str
        add     x1, x1, :lo12:.L.str
        mov     w2, #20
        mov     x0, x19
        bl      _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
        ldr     x8, [x19]
        ldur    x8, [x8, #-24]
        add     x8, x19, x8
        ldr     x19, [x8, #240]
        cbz     x19, .LBB2_84
// %bb.64:                              // %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit334
        ldrb    w8, [x19, #56]
        cbz     w8, .LBB2_66
// %bb.65:                              // %if.then.i309
        ldrb    w1, [x19, #67]
        b       .LBB2_67
.LBB2_66:                               // %if.end.i313
        mov     x0, x19
        bl      _ZNKSt5ctypeIcE13_M_widen_initEv
        ldr     x8, [x19]
        mov     w1, #10
        mov     x0, x19
        ldr     x8, [x8, #48]
        blr     x8
        mov     w1, w0
.LBB2_67:                               // %_ZNKSt5ctypeIcE5widenEc.exit315
        adrp    x0, _ZSt4cout
        add     x0, x0, :lo12:_ZSt4cout
        bl      _ZNSo3putEc
        bl      _ZNSo5flushEv
        adrp    x9, A
        ldr     x8, [x20, :lo12:continue_memory]
        ldr     x1, [x9, :lo12:A]
.LBB2_68:                               // %if.end44
        add     x2, x8, #400            // =400
        adrp    x9, B
        add     x3, x8, #760            // =760
        adrp    x28, R1
        add     x4, x8, #1120           // =1120
        adrp    x20, R2
        str     x2, [x9, :lo12:B]
        str     x3, [x28, :lo12:R1]
        str     x4, [x20, :lo12:R2]
        cbz     x1, .LBB2_85
// %bb.69:                              // %if.end71
        adrp    x0, .L.str.5
        add     x0, x0, :lo12:.L.str.5
        bl      printf
        adrp    x8, maxTestTime
        ldr     w8, [x8, :lo12:maxTestTime]
        cmp     w8, #1                  // =1
        b.lt    .LBB2_79
// %bb.70:                              // %for.body.lr.ph
        mov     x8, sp
        adrp    x19, sig_start
        adrp    x22, _ZSt4cout
        adrp    x23, .L.str.6
        adrp    x25, .L.str.7
        mov     w21, wzr
        add     x19, x19, :lo12:sig_start
        add     x22, x22, :lo12:_ZSt4cout
        add     x23, x23, :lo12:.L.str.6
        add     x24, x8, #8             // =8
        add     x25, x25, :lo12:.L.str.7
        b       .LBB2_73
.LBB2_71:                               // %if.end.i
                                        //   in Loop: Header=BB2_73 Depth=1
        mov     x0, x27
        bl      _ZNKSt5ctypeIcE13_M_widen_initEv
        ldr     x8, [x27]
        mov     w1, #10
        mov     x0, x27
        ldr     x8, [x8, #48]
        blr     x8
        mov     w1, w0
.LBB2_72:                               // %_ZNKSt5ctypeIcE5widenEc.exit
                                        //   in Loop: Header=BB2_73 Depth=1
        mov     x0, x26
        bl      _ZNSo3putEc
        bl      _ZNSo5flushEv
        adrp    x8, maxTestTime
        ldr     w8, [x8, :lo12:maxTestTime]
        add     w21, w21, #1            // =1
        cmp     w21, w8
        b.ge    .LBB2_79
.LBB2_73:                               // %for.body
                                        // =>This Inner Loop Header: Depth=1
        adrp    x8, B
        ldr     x8, [x8, :lo12:B]
        mov     w2, #3
        mov     x0, x19
        mov     x1, xzr
        str     wzr, [x8]
        adrp    x8, A
        ldr     x8, [x8, :lo12:A]
        str     wzr, [x8]
        bl      pthread_barrier_init
        adrp    x8, mainCore
        ldr     w0, [x8, :lo12:mainCore]
        adrp    x3, _Z15thread1_routinePv
        mov     x1, sp
        mov     x2, xzr
        add     x3, x3, :lo12:_Z15thread1_routinePv
        mov     x4, xzr
        bl      _Z17thread_aff_createiPmPK14pthread_attr_tPFPvS3_ES3_
        adrp    x8, sideCore
        ldr     w0, [x8, :lo12:sideCore]
        adrp    x3, _Z15thread2_routinePv
        mov     x1, x24
        mov     x2, xzr
        add     x3, x3, :lo12:_Z15thread2_routinePv
        mov     x4, xzr
        bl      _Z17thread_aff_createiPmPK14pthread_attr_tPFPvS3_ES3_
        mov     x0, x19
        bl      pthread_barrier_wait
        ldr     x0, [sp]
        mov     x1, xzr
        bl      pthread_join
        ldr     x0, [sp, #8]
        mov     x1, xzr
        bl      pthread_join
        ldr     x8, [x28, :lo12:R1]
        ldr     w8, [x8]
        cmp     w8, #1                  // =1
        b.ne    .LBB2_76
// %bb.74:                              // %land.lhs.true
                                        //   in Loop: Header=BB2_73 Depth=1
        ldr     x8, [x20, :lo12:R2]
        ldr     w8, [x8]
        cbnz    w8, .LBB2_76
// %bb.75:                              // %if.then84
                                        //   in Loop: Header=BB2_73 Depth=1
        adrp    x9, reorder_cnt
        ldr     w8, [x9, :lo12:reorder_cnt]
        add     w8, w8, #1              // =1
        str     w8, [x9, :lo12:reorder_cnt]
.LBB2_76:                               // %if.end85
                                        //   in Loop: Header=BB2_73 Depth=1
        mov     w2, #7
        mov     x0, x22
        mov     x1, x23
        bl      _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
        ldr     x8, [x28, :lo12:R1]
        mov     x0, x22
        ldr     w1, [x8]
        bl      _ZNSolsEi
        mov     w2, #1
        mov     x1, x25
        mov     x26, x0
        bl      _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
        ldr     x8, [x20, :lo12:R2]
        mov     x0, x26
        ldr     w1, [x8]
        bl      _ZNSolsEi
        ldr     x8, [x0]
        ldur    x8, [x8, #-24]
        add     x8, x0, x8
        ldr     x27, [x8, #240]
        cbz     x27, .LBB2_84
// %bb.77:                              // %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
                                        //   in Loop: Header=BB2_73 Depth=1
        ldrb    w8, [x27, #56]
        mov     x26, x0
        cbz     w8, .LBB2_71
// %bb.78:                              // %if.then.i
                                        //   in Loop: Header=BB2_73 Depth=1
        ldrb    w1, [x27, #67]
        b       .LBB2_72
.LBB2_79:                               // %for.cond.cleanup
        adrp    x19, _ZSt4cout
        add     x19, x19, :lo12:_ZSt4cout
        adrp    x1, .L.str.8
        add     x1, x1, :lo12:.L.str.8
        mov     w2, #11
        mov     x0, x19
        bl      _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
        adrp    x8, reorder_cnt
        ldr     w1, [x8, :lo12:reorder_cnt]
        mov     x0, x19
        bl      _ZNSolsEi
        adrp    x1, .L.str.9
        add     x1, x1, :lo12:.L.str.9
        mov     w2, #3
        mov     x19, x0
        bl      _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
        adrp    x8, maxTestTime
        ldr     w1, [x8, :lo12:maxTestTime]
        mov     x0, x19
        bl      _ZNSolsEi
        ldr     x8, [x0]
        ldur    x8, [x8, #-24]
        add     x8, x0, x8
        ldr     x20, [x8, #240]
        cbz     x20, .LBB2_84
// %bb.80:                              // %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit338
        ldrb    w8, [x20, #56]
        mov     x19, x0
        cbz     w8, .LBB2_82
// %bb.81:                              // %if.then.i321
        ldrb    w1, [x20, #67]
        b       .LBB2_83
.LBB2_82:                               // %if.end.i325
        mov     x0, x20
        bl      _ZNKSt5ctypeIcE13_M_widen_initEv
        ldr     x8, [x20]
        mov     w1, #10
        mov     x0, x20
        ldr     x8, [x8, #48]
        blr     x8
        mov     w1, w0
.LBB2_83:                               // %_ZNKSt5ctypeIcE5widenEc.exit327
        mov     x0, x19
        bl      _ZNSo3putEc
        bl      _ZNSo5flushEv
        ldp     x20, x19, [sp, #192]    // 16-byte Folded Reload
        ldp     x22, x21, [sp, #176]    // 16-byte Folded Reload
        ldp     x24, x23, [sp, #160]    // 16-byte Folded Reload
        ldp     x26, x25, [sp, #144]    // 16-byte Folded Reload
        ldp     x28, x27, [sp, #128]    // 16-byte Folded Reload
        ldp     x29, x30, [sp, #112]    // 16-byte Folded Reload
        mov     w0, wzr
        add     sp, sp, #208            // =208
        ret
.LBB2_84:                               // %if.then.i332
        bl      _ZSt16__throw_bad_castv
.LBB2_85:                               // %if.then68
        adrp    x0, _ZSt4cout
        adrp    x1, .L.str.4
        add     x0, x0, :lo12:_ZSt4cout
        add     x1, x1, :lo12:.L.str.4
        bl      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
        bl      _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     w0, #-1
        bl      exit
.LBB2_86:                               // %if.then7.i.i
.Ltmp32:
        adrp    x0, .L.str.10
        add     x0, x0, :lo12:.L.str.10
        bl      _ZSt20__throw_out_of_rangePKc
.Ltmp33:
// %bb.87:                              // %invoke.cont8.i.i
.LBB2_88:                               // %if.then7.i.i187
.Ltmp16:
        adrp    x0, .L.str.10
        add     x0, x0, :lo12:.L.str.10
        bl      _ZSt20__throw_out_of_rangePKc
.Ltmp17:
// %bb.89:                              // %invoke.cont8.i.i188
.LBB2_90:                               // %if.then7.i.i210
.Ltmp11:
        adrp    x0, .L.str.10
        add     x0, x0, :lo12:.L.str.10
        bl      _ZSt20__throw_out_of_rangePKc
.Ltmp12:
// %bb.91:                              // %invoke.cont8.i.i211
.LBB2_92:                               // %if.then7.i.i234
.Ltmp6:
        adrp    x0, .L.str.10
        add     x0, x0, :lo12:.L.str.10
        bl      _ZSt20__throw_out_of_rangePKc
.Ltmp7:
// %bb.93:                              // %invoke.cont8.i.i235
.LBB2_94:                               // %if.then.i.i.i.i
.Ltmp37:
        adrp    x0, .L.str.11
        add     x0, x0, :lo12:.L.str.11
        bl      _ZSt19__throw_logic_errorPKc
.Ltmp38:
// %bb.95:                              // %.noexc
.LBB2_96:                               // %if.then.i.i.i.i120
.Ltmp27:
        adrp    x0, .L.str.11
        add     x0, x0, :lo12:.L.str.11
        bl      _ZSt19__throw_logic_errorPKc
.Ltmp28:
// %bb.97:                              // %.noexc130
.LBB2_98:                               // %if.then.i.i
.Ltmp34:
        adrp    x0, .L.str.10
        add     x0, x0, :lo12:.L.str.10
        bl      _ZSt24__throw_invalid_argumentPKc
.Ltmp35:
// %bb.99:                              // %invoke.cont1.i.i
.LBB2_100:                              // %if.then.i.i.i.i139
.Ltmp24:
        adrp    x0, .L.str.11
        add     x0, x0, :lo12:.L.str.11
        bl      _ZSt19__throw_logic_errorPKc
.Ltmp25:
// %bb.101:                             // %.noexc149
.LBB2_102:                              // %if.then.i.i.i.i158
.Ltmp21:
        adrp    x0, .L.str.11
        add     x0, x0, :lo12:.L.str.11
        bl      _ZSt19__throw_logic_errorPKc
.Ltmp22:
// %bb.103:                             // %.noexc168
.LBB2_104:                              // %if.then.i.i177
.Ltmp18:
        adrp    x0, .L.str.10
        add     x0, x0, :lo12:.L.str.10
        bl      _ZSt24__throw_invalid_argumentPKc
.Ltmp19:
// %bb.105:                             // %invoke.cont1.i.i178
.LBB2_106:                              // %if.then.i.i200
.Ltmp13:
        adrp    x0, .L.str.10
        add     x0, x0, :lo12:.L.str.10
        bl      _ZSt24__throw_invalid_argumentPKc
.Ltmp14:
// %bb.107:                             // %invoke.cont1.i.i201
.LBB2_108:                              // %if.then.i.i224
.Ltmp8:
        adrp    x0, .L.str.10
        add     x0, x0, :lo12:.L.str.10
        bl      _ZSt24__throw_invalid_argumentPKc
.Ltmp9:
// %bb.109:                             // %invoke.cont1.i.i225
.LBB2_110:                              // %lpad.i.i227
.Ltmp10:
        b       .LBB2_113
.LBB2_111:                              // %lpad.i.i203
.Ltmp15:
        b       .LBB2_113
.LBB2_112:                              // %lpad.i.i180
.Ltmp20:
.LBB2_113:                              // %lpad.i.i180
        ldr     w8, [x19]
        mov     x20, x0
        cbnz    w8, .LBB2_115
// %bb.114:                             // %if.then.i.i.i181
        str     w24, [x19]
.LBB2_115:                              // %lpad24.body
        ldr     x0, [sp, #40]
        cmp     x0, x21
        b.eq    .LBB2_121
// %bb.116:                             // %if.then.i.i261
        bl      _ZdlPv
        b       .LBB2_121
.LBB2_117:                              // %lpad.i.i
.Ltmp36:
        ldr     w8, [x19]
        mov     x20, x0
        cbnz    w8, .LBB2_119
// %bb.118:                             // %if.then.i.i.i
        str     w22, [x19]
.LBB2_119:                              // %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i
        ldr     x0, [sp]
        cmp     x0, x21
        b.ne    .LBB2_125
        b       .LBB2_126
.LBB2_120:                              // %lpad20
.Ltmp23:
        mov     x20, x0
.LBB2_121:                              // %ehcleanup32
        ldur    x0, [x29, #-40]
        cmp     x0, x23
        b.eq    .LBB2_124
// %bb.122:                             // %if.then.i.i266
        bl      _ZdlPv
        b       .LBB2_124
.LBB2_123:                              // %lpad14
.Ltmp26:
        mov     x20, x0
.LBB2_124:                              // %ehcleanup34
        ldr     x0, [sp]
        cmp     x0, x22
        b.eq    .LBB2_126
.LBB2_125:                              // %if.then.i.i113
        bl      _ZdlPv
.LBB2_126:                              // %eh.resume
        mov     x0, x20
        bl      _Unwind_Resume
.LBB2_127:                              // %lpad8
.Ltmp29:
        bl      _Unwind_Resume
.LBB2_128:                              // %lpad
.Ltmp39:
        bl      _Unwind_Resume
.Lfunc_end2:
        .size   main, .Lfunc_end2-main
        .cfi_endproc
        .section        .gcc_except_table,"a",@progbits
        .p2align        2
GCC_except_table2:
.Lexception0:
        .byte   255                     // @LPStart Encoding = omit
        .byte   255                     // @TType Encoding = omit
        .byte   1                       // Call site Encoding = uleb128
        .uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
        .uleb128 .Ltmp30-.Lfunc_begin0  // >> Call Site 1 <<
        .uleb128 .Ltmp31-.Ltmp30        //   Call between .Ltmp30 and .Ltmp31
        .uleb128 .Ltmp39-.Lfunc_begin0  //     jumps to .Ltmp39
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp0-.Lfunc_begin0   // >> Call Site 2 <<
        .uleb128 .Ltmp1-.Ltmp0          //   Call between .Ltmp0 and .Ltmp1
        .uleb128 .Ltmp29-.Lfunc_begin0  //     jumps to .Ltmp29
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp1-.Lfunc_begin0   // >> Call Site 3 <<
        .uleb128 .Ltmp2-.Ltmp1          //   Call between .Ltmp1 and .Ltmp2
        .byte   0                       //     has no landing pad
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp2-.Lfunc_begin0   // >> Call Site 4 <<
        .uleb128 .Ltmp3-.Ltmp2          //   Call between .Ltmp2 and .Ltmp3
        .uleb128 .Ltmp26-.Lfunc_begin0  //     jumps to .Ltmp26
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp3-.Lfunc_begin0   // >> Call Site 5 <<
        .uleb128 .Ltmp4-.Ltmp3          //   Call between .Ltmp3 and .Ltmp4
        .byte   0                       //     has no landing pad
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp4-.Lfunc_begin0   // >> Call Site 6 <<
        .uleb128 .Ltmp5-.Ltmp4          //   Call between .Ltmp4 and .Ltmp5
        .uleb128 .Ltmp23-.Lfunc_begin0  //     jumps to .Ltmp23
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp5-.Lfunc_begin0   // >> Call Site 7 <<
        .uleb128 .Ltmp32-.Ltmp5         //   Call between .Ltmp5 and .Ltmp32
        .byte   0                       //     has no landing pad
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp32-.Lfunc_begin0  // >> Call Site 8 <<
        .uleb128 .Ltmp33-.Ltmp32        //   Call between .Ltmp32 and .Ltmp33
        .uleb128 .Ltmp36-.Lfunc_begin0  //     jumps to .Ltmp36
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp16-.Lfunc_begin0  // >> Call Site 9 <<
        .uleb128 .Ltmp17-.Ltmp16        //   Call between .Ltmp16 and .Ltmp17
        .uleb128 .Ltmp20-.Lfunc_begin0  //     jumps to .Ltmp20
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp11-.Lfunc_begin0  // >> Call Site 10 <<
        .uleb128 .Ltmp12-.Ltmp11        //   Call between .Ltmp11 and .Ltmp12
        .uleb128 .Ltmp15-.Lfunc_begin0  //     jumps to .Ltmp15
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp6-.Lfunc_begin0   // >> Call Site 11 <<
        .uleb128 .Ltmp7-.Ltmp6          //   Call between .Ltmp6 and .Ltmp7
        .uleb128 .Ltmp10-.Lfunc_begin0  //     jumps to .Ltmp10
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp37-.Lfunc_begin0  // >> Call Site 12 <<
        .uleb128 .Ltmp38-.Ltmp37        //   Call between .Ltmp37 and .Ltmp38
        .uleb128 .Ltmp39-.Lfunc_begin0  //     jumps to .Ltmp39
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp27-.Lfunc_begin0  // >> Call Site 13 <<
        .uleb128 .Ltmp28-.Ltmp27        //   Call between .Ltmp27 and .Ltmp28
        .uleb128 .Ltmp29-.Lfunc_begin0  //     jumps to .Ltmp29
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp34-.Lfunc_begin0  // >> Call Site 14 <<
        .uleb128 .Ltmp35-.Ltmp34        //   Call between .Ltmp34 and .Ltmp35
        .uleb128 .Ltmp36-.Lfunc_begin0  //     jumps to .Ltmp36
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp24-.Lfunc_begin0  // >> Call Site 15 <<
        .uleb128 .Ltmp25-.Ltmp24        //   Call between .Ltmp24 and .Ltmp25
        .uleb128 .Ltmp26-.Lfunc_begin0  //     jumps to .Ltmp26
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp21-.Lfunc_begin0  // >> Call Site 16 <<
        .uleb128 .Ltmp22-.Ltmp21        //   Call between .Ltmp21 and .Ltmp22
        .uleb128 .Ltmp23-.Lfunc_begin0  //     jumps to .Ltmp23
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp18-.Lfunc_begin0  // >> Call Site 17 <<
        .uleb128 .Ltmp19-.Ltmp18        //   Call between .Ltmp18 and .Ltmp19
        .uleb128 .Ltmp20-.Lfunc_begin0  //     jumps to .Ltmp20
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp13-.Lfunc_begin0  // >> Call Site 18 <<
        .uleb128 .Ltmp14-.Ltmp13        //   Call between .Ltmp13 and .Ltmp14
        .uleb128 .Ltmp15-.Lfunc_begin0  //     jumps to .Ltmp15
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp8-.Lfunc_begin0   // >> Call Site 19 <<
        .uleb128 .Ltmp9-.Ltmp8          //   Call between .Ltmp8 and .Ltmp9
        .uleb128 .Ltmp10-.Lfunc_begin0  //     jumps to .Ltmp10
        .byte   0                       //   On action: cleanup
        .uleb128 .Ltmp9-.Lfunc_begin0   // >> Call Site 20 <<
        .uleb128 .Lfunc_end2-.Ltmp9     //   Call between .Ltmp9 and .Lfunc_end2
        .byte   0                       //     has no landing pad
        .byte   0                       //   On action: cleanup
.Lcst_end0:
        .p2align        2
                                        // -- End function
        .section        .text.startup,"ax",@progbits
        .p2align        2               // -- Begin function _GLOBAL__sub_I_WW_RR_naive_madd_1.cpp
        .type   _GLOBAL__sub_I_WW_RR_naive_madd_1.cpp,@function
_GLOBAL__sub_I_WW_RR_naive_madd_1.cpp:  // @_GLOBAL__sub_I_WW_RR_naive_madd_1.cpp
        .cfi_startproc
// %bb.0:                               // %entry
        stp     x29, x30, [sp, #-32]!   // 16-byte Folded Spill
        str     x19, [sp, #16]          // 8-byte Folded Spill
        mov     x29, sp
        .cfi_def_cfa w29, 32
        .cfi_offset w19, -16
        .cfi_offset w30, -24
        .cfi_offset w29, -32
        adrp    x19, _ZStL8__ioinit
        add     x19, x19, :lo12:_ZStL8__ioinit
        mov     x0, x19
        bl      _ZNSt8ios_base4InitC1Ev
        mov     x1, x19
        ldr     x19, [sp, #16]          // 8-byte Folded Reload
        adrp    x0, _ZNSt8ios_base4InitD1Ev
        adrp    x2, __dso_handle
        add     x0, x0, :lo12:_ZNSt8ios_base4InitD1Ev
        add     x2, x2, :lo12:__dso_handle
        ldp     x29, x30, [sp], #32     // 16-byte Folded Reload
        b       __cxa_atexit
.Lfunc_end3:
        .size   _GLOBAL__sub_I_WW_RR_naive_madd_1.cpp, .Lfunc_end3-_GLOBAL__sub_I_WW_RR_naive_madd_1.cpp
        .cfi_endproc
                                        // -- End function
        .type   _ZStL8__ioinit,@object  // @_ZStL8__ioinit
        .local  _ZStL8__ioinit
        .comm   _ZStL8__ioinit,1,1
        .hidden __dso_handle
        .type   reorder_cnt,@object     // @reorder_cnt
        .bss
        .globl  reorder_cnt
        .p2align        2
reorder_cnt:
        .word   0                       // 0x0
        .size   reorder_cnt, 4

        .type   A,@object               // @A
        .globl  A
        .p2align        3
A:
        .xword  0
        .size   A, 8

        .type   B,@object               // @B
        .globl  B
        .p2align        3
B:
        .xword  0
        .size   B, 8

        .type   R1,@object              // @R1
        .globl  R1
        .p2align        3
R1:
        .xword  0
        .size   R1, 8

        .type   R2,@object              // @R2
        .globl  R2
        .p2align        3
R2:
        .xword  0
        .size   R2, 8

        .type   continue_memory,@object // @continue_memory
        .globl  continue_memory
        .p2align        3
continue_memory:
        .xword  0
        .size   continue_memory, 8

        .type   mainCore,@object        // @mainCore
        .globl  mainCore
        .p2align        2
mainCore:
        .word   0                       // 0x0
        .size   mainCore, 4

        .type   sideCore,@object        // @sideCore
        .data
        .globl  sideCore
        .p2align        2
sideCore:
        .word   3                       // 0x3
        .size   sideCore, 4

        .type   maxTestTime,@object     // @maxTestTime
        .globl  maxTestTime
        .p2align        2
maxTestTime:
        .word   1000000                 // 0xf4240
        .size   maxTestTime, 4

        .type   sig_start,@object       // @sig_start
        .bss
        .globl  sig_start
        .p2align        3
sig_start:
        .zero   32
        .size   sig_start, 32

        .type   .L.str,@object          // @.str
        .section        .rodata.str1.1,"aMS",@progbits,1
.L.str:
        .asciz  "Failed to allocate A"
        .size   .L.str, 21

        .type   .L.str.4,@object        // @.str.4
.L.str.4:
        .asciz  "Failed to allocate"
        .size   .L.str.4, 19

        .type   .L.str.5,@object        // @.str.5
.L.str.5:
        .asciz  "A: 0x%lx, B: 0x%lx, R1: 0x%lx, R2: 0x%lx
"
        .size   .L.str.5, 42

        .type   .L.str.6,@object        // @.str.6
.L.str.6:
        .asciz  "R1/R2: "
        .size   .L.str.6, 8

        .type   .L.str.7,@object        // @.str.7
.L.str.7:
        .asciz  " "
        .size   .L.str.7, 2

        .type   .L.str.8,@object        // @.str.8
.L.str.8:
        .asciz  "Total cnt: "
        .size   .L.str.8, 12

        .type   .L.str.9,@object        // @.str.9
.L.str.9:
        .asciz  " / "
        .size   .L.str.9, 4

        .type   .L.str.10,@object       // @.str.10
.L.str.10:
        .asciz  "stoi"
        .size   .L.str.10, 5

        .type   .L.str.11,@object       // @.str.11
.L.str.11:
        .asciz  "basic_string::_M_construct null not valid"
        .size   .L.str.11, 42

        .section        .init_array,"aw",@init_array
        .p2align        3
        .xword  _GLOBAL__sub_I_WW_RR_naive_madd_1.cpp
        .ident  "clang version 10.0.0 "
        .section        ".note.GNU-stack","",@progbits
        .addrsig
        .addrsig_sym _Z15thread1_routinePv
        .addrsig_sym _Z15thread2_routinePv
        .addrsig_sym __gxx_personality_v0
        .addrsig_sym _GLOBAL__sub_I_WW_RR_naive_madd_1.cpp
        .addrsig_sym _Unwind_Resume
        .addrsig_sym _ZStL8__ioinit
        .addrsig_sym __dso_handle
        .addrsig_sym sig_start
        .addrsig_sym _ZSt4cout

