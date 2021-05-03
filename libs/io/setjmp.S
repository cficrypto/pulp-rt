/*
 * SPDX-License-Identifier: Apache-2.0
 */

/* int setjmp (jmp_buf);  */
  .globl  setjmp
  .type   setjmp, @function
setjmp:
	sw ra,  0*4(a0)
	sw s0,  1*4(a0)
	sw s1,  2*4(a0)
	sw s2,  3*4(a0)
	sw s3,  4*4(a0)
	sw s4,  5*4(a0)
	sw s5,  6*4(a0)
	sw s6,  7*4(a0)
	sw s7,  8*4(a0)
	sw s8,  9*4(a0)
	sw s9, 10*4(a0)
	sw s10,11*4(a0)
	sw s11,12*4(a0)
	sw sp, 13*4(a0)

#ifndef __riscv_float_abi_soft
	fsw fs0, 14*4+ 0*8(a0)
	fsw fs1, 14*4+ 1*8(a0)
	fsw fs2, 14*4+ 2*8(a0)
	fsw fs3, 14*4+ 3*8(a0)
	fsw fs4, 14*4+ 4*8(a0)
	fsw fs5, 14*4+ 5*8(a0)
	fsw fs6, 14*4+ 6*8(a0)
	fsw fs7, 14*4+ 7*8(a0)
	fsw fs8, 14*4+ 8*8(a0)
	fsw fs9, 14*4+ 9*8(a0)
	fsw fs10,14*4+10*8(a0)
	fsw fs11,14*4+11*8(a0)
#endif

	li    a0, 0
	ret
	.size	setjmp, .-setjmp

/* volatile void longjmp (jmp_buf, int);  */
  .globl  longjmp
  .type   longjmp, @function
longjmp:
	lw ra,  0*4(a0)
	lw s0,  1*4(a0)
	lw s1,  2*4(a0)
	lw s2,  3*4(a0)
	lw s3,  4*4(a0)
	lw s4,  5*4(a0)
	lw s5,  6*4(a0)
	lw s6,  7*4(a0)
	lw s7,  8*4(a0)
	lw s8,  9*4(a0)
	lw s9, 10*4(a0)
	lw s10,11*4(a0)
	lw s11,12*4(a0)
	lw sp, 13*4(a0)

#ifndef __riscv_float_abi_soft
	flw fs0, 14*4+ 0*8(a0)
	flw fs1, 14*4+ 1*8(a0)
	flw fs2, 14*4+ 2*8(a0)
	flw fs3, 14*4+ 3*8(a0)
	flw fs4, 14*4+ 4*8(a0)
	flw fs5, 14*4+ 5*8(a0)
	flw fs6, 14*4+ 6*8(a0)
	flw fs7, 14*4+ 7*8(a0)
	flw fs8, 14*4+ 8*8(a0)
	flw fs9, 14*4+ 9*8(a0)
	flw fs10,14*4+10*8(a0)
	flw fs11,14*4+11*8(a0)
#endif

	seqz a0, a1
	add  a0, a0, a1   # a0 = (a1 == 0) ? 1 : a1
	ret
	.size	longjmp, .-longjmp
