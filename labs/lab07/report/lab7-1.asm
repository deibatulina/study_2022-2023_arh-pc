%include 'in_out.asm'; подключение внешнего файла
SECTION .bss
buf1: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax,6      ; в регистр eax записывается число 6
mov ebx,4      ; в регистр ebx записывается число 4
add eax,ebx    ; к значению в регистре eax прибавляем значение регистра ebx
mov [buf1],eax ; значение регистра eax записывается в переменную buf1
mov eax,buf1   ; адрес переменной buf1 записывается в регистр eax
call sprintLF  ; вызов функции sprintLF
call quit

