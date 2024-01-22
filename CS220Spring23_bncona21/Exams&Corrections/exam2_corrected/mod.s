.global mod
.cpu cortex-a53 // application processor

/*
        r = x % y
        q = x / y
        r = x - qy

*/
.text

mod:
mov r1, #2

    sdiv r2, r0, r1 // dont have to save regeristers 0-3
    mul r2, r2, r1
    sub r0, r0, r2
    bx lr

