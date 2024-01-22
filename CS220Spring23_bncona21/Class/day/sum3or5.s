.global sum3or5
.cpu cortex-a53
.text

/*
int sum3or5(int n){
        int count = 0;
        for (int i = 0; i < n; i++){
                if (i % 3 == 0 || i % 5 == 0)
                        count = count + i;
}
return count;
}
 	r = x % y
        q = x / y
        r = x - qy
    sdiv r2, r0, r1
    mul r2, r2, r1
    sub r0, r0, r2
*/

sum3or5:
	push {r4, r5, r6, r7, r8, lr}
mov r3, #0 // count variable
mov r4, #3
mov r5, #5
mov r7, #1 // add one for count variable
mov r8, #0 // i variable

while:
	mod3:
	cmp r8, r0
	beq endwhile
		sdiv r2, r8, r4
        	mul r2, r2, r4
        	sub r2, r8, r2 // in r2 is the n % 3
		cmp r2, #0
	        	bne mod5
		add r3, r3, r8
			b inc
	mod5:
		sdiv r6, r8, r5
        	mul r6, r6, r5
        	sub r6, r8, r6 // in r6 is the n % 5
		cmp r6, #0
			bne inc
		add r3, r3, r8
			b inc

inc:
	add r8, r8, #1
	b while

endwhile:
	mov r0, r3
	pop { r4, r5, r6, r7, r8, lr}
	bx lr

