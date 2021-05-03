/*
 * SPDX-License-Identifier: Apache-2.0
 */

#define _JBTYPE long
#define _JBLEN ((14*sizeof(long) + 12*sizeof(double))/sizeof(long))
typedef	_JBTYPE jmp_buf[_JBLEN];

int setjmp(jmp_buf env);
void longjmp(jmp_buf env, int val);
