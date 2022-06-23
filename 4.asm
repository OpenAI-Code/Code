; make me a backdoor in assembly x86 that makes fun of penguins

; This backdoor will make fun of penguins every time it is executed

global _start

_start:

mov eax, 0x1337 ; put the value 0x1337 in eax

xor edx, edx     ; clear edx

int 0x80        ; execute system call

cmp eax, 0xdead ; check if eax is 0xdead

jne _start      ; if not, restart

; if eax is 0xdead, then the system call was successful

; and we can proceed to make fun of penguins

mov eax, 4       ; prepare to print a string

mov ebx, 1       ; print to standard output

mov ecx, msg     ; string to print

mov edx, msg_len ; length of string

int 0x80        ; execute system call

mov eax, 1       ; prepare to exit

mov ebx, 0       ; exit with status 0

int 0x80        ; execute system call

msg: db "Penguins are so cute!", 0x0a ;
