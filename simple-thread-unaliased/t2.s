
00000000004d8094 <_Z15thread2_routinePv>:
  4d8094:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
  4d8098:	f9000bf5 	str	x21, [sp, #16]
  4d809c:	a9024ff4 	stp	x20, x19, [sp, #32]
  4d80a0:	910003fd 	mov	x29, sp
  4d80a4:	aa1e03e0 	mov	x0, x30
  4d80a8:	97ff19c6 	bl	49e7c0 <__tsan_func_entry>
  4d80ac:	d0005db3 	adrp	x19, 108e000 <_ZZL27getTypeCacheHashTableBucketmE21__ubsan_vptr_hash_set+0x7f7e0>
  4d80b0:	9120c273 	add	x19, x19, #0x830
  4d80b4:	aa1303e0 	mov	x0, x19
  4d80b8:	97fefece 	bl	497bf0 <__tsan_read8>
  4d80bc:	f9400273 	ldr	x19, [x19]
  4d80c0:	d0005db4 	adrp	x20, 108e000 <_ZZL27getTypeCacheHashTableBucketmE21__ubsan_vptr_hash_set+0x7f7e0>
  4d80c4:	9120e294 	add	x20, x20, #0x838
  4d80c8:	aa1403e0 	mov	x0, x20
  4d80cc:	97fefec9 	bl	497bf0 <__tsan_read8>
  4d80d0:	f9400294 	ldr	x20, [x20]
  4d80d4:	d0005da0 	adrp	x0, 108e000 <_ZZL27getTypeCacheHashTableBucketmE21__ubsan_vptr_hash_set+0x7f7e0>
  4d80d8:	91218000 	add	x0, x0, #0x860
  4d80dc:	97fd6311 	bl	430d20 <__interceptor_pthread_barrier_wait>
  4d80e0:	aa1403e0 	mov	x0, x20
  4d80e4:	97fefce7 	bl	497480 <__tsan_read4>
  4d80e8:	b9400295 	ldr	w21, [x20]
  4d80ec:	d0005db4 	adrp	x20, 108e000 <_ZZL27getTypeCacheHashTableBucketmE21__ubsan_vptr_hash_set+0x7f7e0>
  4d80f0:	91210294 	add	x20, x20, #0x840
  4d80f4:	aa1403e0 	mov	x0, x20
  4d80f8:	97fefebe 	bl	497bf0 <__tsan_read8>
  4d80fc:	f9400294 	ldr	x20, [x20]
  4d8100:	aa1403e0 	mov	x0, x20
  4d8104:	97ff041b 	bl	499170 <__tsan_write4>
  4d8108:	b9000295 	str	w21, [x20]
  4d810c:	d5033bbf 	dmb	ish
  4d8110:	aa1303e0 	mov	x0, x19
  4d8114:	97fefcdb 	bl	497480 <__tsan_read4>
  4d8118:	b9400274 	ldr	w20, [x19]
  4d811c:	d0005db3 	adrp	x19, 108e000 <_ZZL27getTypeCacheHashTableBucketmE21__ubsan_vptr_hash_set+0x7f7e0>
  4d8120:	91212273 	add	x19, x19, #0x848
  4d8124:	aa1303e0 	mov	x0, x19
  4d8128:	97fefeb2 	bl	497bf0 <__tsan_read8>
  4d812c:	f9400273 	ldr	x19, [x19]
  4d8130:	aa1303e0 	mov	x0, x19
  4d8134:	97ff040f 	bl	499170 <__tsan_write4>
  4d8138:	b9000274 	str	w20, [x19]
  4d813c:	97ff19dd 	bl	49e8b0 <__tsan_func_exit>
  4d8140:	a9424ff4 	ldp	x20, x19, [sp, #32]
  4d8144:	f9400bf5 	ldr	x21, [sp, #16]
  4d8148:	aa1f03e0 	mov	x0, xzr
  4d814c:	a8c37bfd 	ldp	x29, x30, [sp], #48
  4d8150:	d65f03c0 	ret
