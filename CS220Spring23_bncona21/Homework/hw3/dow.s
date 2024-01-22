//#include "dow.h"
.global dow
.cpu cortex-a53
.text
/*
int dow(int m, int d, int y) {
    int y0 = y - (14 - m) / 12;
    int x = y0 + y0 / 4 - y0 / 100 + y0 / 400;
    int m0 = m + 12 * ((14 - m)/12) - 2;
    int d0 = (d + x + (31 * m0) / 12) % 7;
    return d0;}
*/
dow:
push { r5, r6, r7, r8, r9, r10, r11 }
mov r9, #12
mov r10, #14

	sub r3, r10, r0 //r3 = 14 - m
	sdiv r2, r3, r9 //r2 = (14 - m) /12
	sub r3, r2, r3 //r3 = y0 = y - (14 - m) / 12
mov r11, #400
	add r2, r2, r2 // r2 = (y - (14 - m) / 12) + (y - (14 - m) / 12)
	sub r4, r14, r2 // r4 = 4 - y0 = (y - (14 - m) / 12)
	add r5, r12, r2 // r5 = 100 + y0
	sdiv r5, r5, r11 // r5 = 100 + y0 / 400
	sdiv r4, r2, r4 // r4 = r2 / 12)
        sdiv r4, r4, r5 // r4 = (r2 /12) / r5

mov r11, #2
	sub r5, r10, r0 // r5 = 14 - m
	sdiv r6, r5, r9 // r6 = 14 - m / 12
	mul r6, r6, r9 // r6 = (14-m / 12) * 12
	add r0, r0, r6 // r0 = m + r6
	sub r0, r0, r11 // r0 = m + r6 - 2

mov r11, #31
	mul r7, r11, r0 // r7 = 31 * (m + r6 -2)
	sdiv r7, r7, r9 // r7 = r7 / 12
	add r7, r7, r4 // r7 =  31 * (m + r6 -2) + (r2 /12) / r5
	add r1, r1, r7 // r1 = d + r7
mov r11, #7
        sdiv r8, r1, r11 // r8 = d + r7 / 7
        mul r8, r8, r11 // r8 = r8 *7
        sub r0, r1, r8 // r0 = (d + r7) - (r8 * 7)

pop { r5, r6, r7, r8, r9, r10, r11 }

	bx lr





