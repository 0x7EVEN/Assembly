;Date 24-08-2021
;compile with NASM -f helloWorld.asm -o hello
;link with ld -m elf_i386 hello.o -o hello
SECTION .data
message   db   "Hello 0x7EVEN",0xa           ;here we go
len       equ  $-message                     ;total length

SECTION .text
global  _start


_start:
mov       eax ,    0x4
mov       ecx ,    message
mov       ebx ,    0x1
mov       edx ,    len
int       0x80

mov       eax ,    0x1
mov       ebx ,    0x0
int       0x80
