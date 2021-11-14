SECTION .data
msg db 		"string", 0Ah  ; msg variable with msg string

SECTION .text
global _start

_start:
	mov  edx , 7  	; number of bytes
	mov  ecx , msg 	; memory address
	mov  ebx , 1    ; VIMP - writing to STDOUT 
	mov  eax , 4  	; invoke SYS_WRITE syscall (optcode is 4 from docs or linux manual can be reffered)
	int  80h

			; now writing return programme

	mov  ebx , 0    ; return SYSCALL
	mov  eax , 1 	; SYS_EXIT optcode 1
	int  80h   	; for invoking


