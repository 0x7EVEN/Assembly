;1st program in assembly language


SECTION .data
message db "Hello Arif",0xa  	;variable message with string "H -> A in it with endl"
len equ $-message		;length of our message string

SECTION .text
global _start
_start:
mov eax,0x4			;moving the OPCODE 1 in Eax < opcode for write
mov ebx,0x1			;
mov edx,len			;
mov ecx,message
int 0x80			;

mov ebx,0x0			;ebx for error code - 0 for no errors
mov eax,0x1			;OPCODE 1 for invoking exit call
int 0x80
