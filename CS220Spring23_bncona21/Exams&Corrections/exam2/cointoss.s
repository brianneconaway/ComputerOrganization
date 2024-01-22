.global cointoss                         // I don't know how to use -S without a c file
.cpu cortex-a53                         // so I just wrote my own, and used the rand function
.text                                    // from class, im better at assembly then this i promise

random:
 push { r4, r5, lr }
        mov r4, r0
        mov r5, r1
        bl rand // branch and link to rand

        sub r1, r5, r4 // y - x
        bl mod
        add r0, r0, r4
        pop { r4, r5, lr }
        bx lr


cointoss:

	mov r1, #0 // count
	mov r0, r3

while:
	cmp r3, #0
	beq endwhile
	bl random
	cmp r3, #0
	beq heads
	b while

heads:
	add r1, r1, #1

endwhile:
mov r0, r3
bx lr
