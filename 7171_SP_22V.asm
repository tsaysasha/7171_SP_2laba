format ELF executable 3
segment readable executable
entry start
start:
mov esi, arr
mov ecx, arrsize
xor eax, eax
xor ebx, ebx

main_loop:
lodsb
test al, 00100010b
jz zero_in_bit_5_1
jmp continue
zero_in_bit_5_1:
inc ebx
continue:
loop main_loop
mov eax,1
mov ebx,0
int 0x80

segment readable writeable
arr db 00000001b,00000010b,00000011b,00000100b,00000101b,00100000b,00100010b,00111111b,00000000b,00101010b
arrsize = 10
