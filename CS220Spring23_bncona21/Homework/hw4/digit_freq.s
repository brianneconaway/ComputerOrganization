.global digit_freq
.text
.cpu cortex-a53

/*
void digit_freq(int n, int freq[])
 int num;
        int length = 10;

        for (int i = 0; i < 10; i++){
                freq[i] = 0;
        }
        while (n > 0) {

                num = (n % 10);
                freq[num]++;
                n = n / 10;   }
}
*/

mod:
    sdiv r2, r0, r1 // dont have to save regeristers 0-3
    mul r2, r2, r1
    sub r0, r0, r2
	bx lr

digit_freq:
//num = r3
push {r4-r10, lr }

mov r7, r0 // n = r7
mov r9, r1

while:
	cmp r0, #0
	beq endwhile

	mov r1, #10
	bl mod
	mov r1, #10

	sdiv r7, r7, r1 // n / 10, answer in r0

	//ldr r5, =freq // load the address of freq
	//ldr r5, [r9] // freq[digit]
	mov r10, #4
	mul r5, r0, r10
	add r5, r5, r9 //increment freq[digit]        // might be the issue
	ldr r4, [r5] //moving information of r0 into r0
	add r4, r4, #1
	str r4, [r5] // store freq[digit]
	mov r0, r7

	b while


endwhile:
	pop { r4-r10, lr }
	bx lr

