.global cointoss
.text
.cpu cortex-a53

cointoss:
push { r4, r5, r6, r7, lr }

        mov r2, #2
        mov r4, r0 // n
        mov r5, #0 // count number of heads
	mov r6, #0 // i or loop counter

while:
        cmp r6, r4 // if i = n branch to endwhile
        beq endwhile
        bl rand // else branch to rand
	mov r7, r0
        mov r1, r2 //moving 2 into the y for mod formula
	bl mod
        cmp r0, #0
        beq heads

inc_n:
	add r6, r6, #1//Figure out how to loop increment n
        b while

heads:
        add r5, r5, #1
        b inc_n

endwhile:
mov r0, r5

pop { r4, r5, r6, r7, lr}

bx lr




