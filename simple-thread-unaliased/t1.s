
00000000004d7f90 <_Z15thread1_routinePv>:
  4d7f90:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  4d7f94:	a9015ff8 	stp	x24, x23, [sp, #16]
  4d7f98:	a90257f6 	stp	x22, x21, [sp, #32]
  4d7f9c:	a9034ff4 	stp	x20, x19, [sp, #48]
  4d7fa0:	910003fd 	mov	x29, sp
  4d7fa4:	aa1e03e0 	mov	x0, x30
  4d7fa8:	97ff1a06 	bl	49e7c0 <__tsan_func_entry>
  4d7fac:	f0005db3 	adrp	x19, 108e000 <_ZZL27getTypeCacheHashTableBucketmE21__ubsan_vptr_hash_set+0x7f7e0>
  4d7fb0:	9120e273 	add	x19, x19, #0x838
  4d7fb4:	aa1303e0 	mov	x0, x19
  4d7fb8:	97feff0e 	bl	497bf0 <__tsan_read8>
  4d7fbc:	f9400273 	ldr	x19, [x19]
  4d7fc0:	f0005db4 	adrp	x20, 108e000 <_ZZL27getTypeCacheHashTableBucketmE21__ubsan_vptr_hash_set+0x7f7e0>
  4d7fc4:	91210294 	add	x20, x20, #0x840
  4d7fc8:	aa1403e0 	mov	x0, x20
  4d7fcc:	97feff09 	bl	497bf0 <__tsan_read8>
  4d7fd0:	f9400294 	ldr	x20, [x20]
  4d7fd4:	f0005db5 	adrp	x21, 108e000 <_ZZL27getTypeCacheHashTableBucketmE21__ubsan_vptr_hash_set+0x7f7e0>
  4d7fd8:	912122b5 	add	x21, x21, #0x848
  4d7fdc:	aa1503e0 	mov	x0, x21
  4d7fe0:	97feff04 	bl	497bf0 <__tsan_read8>
  4d7fe4:	f94002b5 	ldr	x21, [x21]
  4d7fe8:	f0005db6 	adrp	x22, 108e000 <_ZZL27getTypeCacheHashTableBucketmE21__ubsan_vptr_hash_set+0x7f7e0>
  4d7fec:	912142d6 	add	x22, x22, #0x850
  4d7ff0:	aa1603e0 	mov	x0, x22
  4d7ff4:	97fefeff 	bl	497bf0 <__tsan_read8>
  4d7ff8:	f94002d7 	ldr	x23, [x22]
  4d7ffc:	f0005da0 	adrp	x0, 108e000 <_ZZL27getTypeCacheHashTableBucketmE21__ubsan_vptr_hash_set+0x7f7e0>
  4d8000:	91218000 	add	x0, x0, #0x860
  4d8004:	97fd6347 	bl	430d20 <__interceptor_pthread_barrier_wait>
  4d8008:	d0000276 	adrp	x22, 526000 <_ZN11__sanitizer11report_fileE+0x1d78>
  4d800c:	913282d6 	add	x22, x22, #0xca0
  4d8010:	aa1603e0 	mov	x0, x22
  4d8014:	97fefd1b 	bl	497480 <__tsan_read4>
  4d8018:	b94002d8 	ldr	w24, [x22]
  4d801c:	d0000276 	adrp	x22, 526000 <_ZN11__sanitizer11report_fileE+0x1d78>
  4d8020:	913292d6 	add	x22, x22, #0xca4
  4d8024:	aa1603e0 	mov	x0, x22
  4d8028:	97fefd16 	bl	497480 <__tsan_read4>
  4d802c:	b94002c8 	ldr	w8, [x22]
  4d8030:	1ac80f08 	sdiv	w8, w24, w8
  4d8034:	8b28caf6 	add	x22, x23, w8, sxtw #2
  4d8038:	aa1603e0 	mov	x0, x22
  4d803c:	97ff044d 	bl	499170 <__tsan_write4>
  4d8040:	52800048 	mov	w8, #0x2                   	// #2
  4d8044:	b90002c8 	str	w8, [x22]
  4d8048:	aa1303e0 	mov	x0, x19
  4d804c:	97ff0449 	bl	499170 <__tsan_write4>
  4d8050:	52800028 	mov	w8, #0x1                   	// #1
  4d8054:	aa1403e0 	mov	x0, x20
  4d8058:	b9000268 	str	w8, [x19]
  4d805c:	97ff0445 	bl	499170 <__tsan_write4>
  4d8060:	52800c88 	mov	w8, #0x64                  	// #100
  4d8064:	aa1503e0 	mov	x0, x21
  4d8068:	b9000288 	str	w8, [x20]
  4d806c:	97ff0441 	bl	499170 <__tsan_write4>
  4d8070:	52801908 	mov	w8, #0xc8                  	// #200
  4d8074:	b90002a8 	str	w8, [x21]
  4d8078:	97ff1a0e 	bl	49e8b0 <__tsan_func_exit>
  4d807c:	a9434ff4 	ldp	x20, x19, [sp, #48]
  4d8080:	a94257f6 	ldp	x22, x21, [sp, #32]
  4d8084:	a9415ff8 	ldp	x24, x23, [sp, #16]
  4d8088:	aa1f03e0 	mov	x0, xzr
  4d808c:	a8c47bfd 	ldp	x29, x30, [sp], #64
  4d8090:	d65f03c0 	ret