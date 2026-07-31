// as execve_aarch64.s -o x.o
// ld x.o -o x

.text

.globl _start
_start:
        // execve("/bin/bash", 0, 0)
	// #221 = execve()
	// syscall register is w8
        ldr x0, =binbash
        mov x1, #0
        mov x2, #0
        mov x8, #221
        svc #0 

binbash:
        .ascii "/bin/bash\0"
