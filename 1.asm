; write me assembly x86 code that makes fun of people

; This code is for making fun of people

mov eax, 4
mov ebx, 1
mov ecx, msg
mov edx, len
int 0x80

mov eax, 1
mov ebx, 0
int 0x80

msg:
db "You're a loser!", 0xa
len:
equ $ - msg
