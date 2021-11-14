SECTION .data
msg 	db 	"hellow from subroutine", 0Ah

SECTION .text

global _start

_start:

	mov 	eax, msg	; move the address of array
	call 	strlen		; call our function

	mov 	edx, eax	; eax will have result 
	mov 	ecx , msg	
	mov 	ebx , 1
	mov 	eax , 4
	int 	80h

	mov     ebx  , 0
	mov 	eax  , 1
	int  	80h

strlen:
	push 	ebx		; preserving ebx value to collected later
	mov	ebx, eax 	; see line 10 (mov msg-> eax)
	
nextchar:
	cmp 	byte[eax], 0	; compare byte at eax with 0
	jz 	finish	
	inc 	eax	
	jmp 	nextchar

finish:
	sub 	eax , ebx
	pop	ebx
	ret
	