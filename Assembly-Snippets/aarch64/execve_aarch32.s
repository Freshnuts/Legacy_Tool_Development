// as execve_aarch64.s -o x.o
// ld x.o -o x

.text

.globl _start
_start:
        // execve("/bin/bash", 0, 0)
	// #221 = execve()
	// syscall register is w8
        ldr w0, =binbash
        mov w1, #0
        mov w2, #0
        mov w8, #221
        svc #0 

binbash:
        .ascii "/bin/bash\0"
