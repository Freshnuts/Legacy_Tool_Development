
// compile arm32 binary in aarch64
// arm-linux-gnueabi-as x.s -o x32.o
// arm-linux-gnueabi-ld x32.o -o x32


.text

.globl _start
_start:
        // execve("/bin/bash")
	// #11 = execve()
	// syscall register is r7 for 32 bit.
        ldr r0, =binbash
        mov r1, #0
        mov r2, #0
        mov r7, #11
        svc #0 

binbash:
        .ascii "/bin/bash\0"
