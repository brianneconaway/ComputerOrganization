/*
int mypow(int x, int y){
        if (y == 0)
                return 1;

        else if (y % 2 == 0){
                int p = mypow(x, y/2);
                return p*p;
        }
        else {
        int a = mypow(x, y-1);
        return x * a;
}
*/
.global mypow
.cpu cortex-a53
.text

mypow:
push { r4, r5, r6, r7, lr }

mov r5, r0 // x
mov r6, r1 // y

	cmp r1, #0 // if (y==0)
	beq return1 // go to return 1
	mov r0, r1
	mov r1, #2

	bl mod //mod

	mov r1, r6
	cmp r0, #0
	beq even

	//mov r0, r5
	sub r1, r6, #1 // y-1
	bl mypow
	mul r0, r5, r0 // x * a
	pop { r4, r5, r6, r7, lr }
	bx lr

even:
	mov r0, r5
	mov r4, #2
	sdiv r1, r6, r4 // y/2
        bl mypow // recursion
	mul r0, r0, r0 // p * p
	pop { r4, r5, r6, r7, lr }
	bx lr //print r0 (recursion is there)


return1:
mov r4, #1
pop { r4, r5, r6, r7, lr }
bx lr

