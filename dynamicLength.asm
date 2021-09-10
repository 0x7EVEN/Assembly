; problem with previous code (hello world) was the length of string was hard coded 
; we cant chage the length once it's declared, so it is important to calculate as required.. 
SECTION .data
message         db      "this is unknown length",0xa    ;here we go again : )

section .text
global _start

_start:
mov     eax,message                     ; adding address of array in eax
mov     ebx,eax                         ; adding values in eax in ebx too

nextchar:
cmp     byte[eax],0                     ; looping over the character array
jz      finish                          ; 
inc     eax
jmp     nextchar

finish:
sub     eax,ebx                         ; substracting end-start will give us offset
mov     edx,eax                         ; storing it in data register
mov     eax,0x4                         ; std syscall
mov     ebx,0x1                         ; 
mov     ecx,message
int     0x80

mov     ebx,0x0
mov     eax,0x1
int     0x80
