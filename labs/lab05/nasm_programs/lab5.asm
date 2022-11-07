; lab5.asm
SECTION .data                                    ; Начало секции данных
	name_surname:	DB 'Darya Ibatulina',10  ; 'Darya Ibatulina' плюс
			     	     	         ; символ перевода строки
	name_surnameLen: EQU $-name_surname      ; Длина строки name_surname
	                                         
SECTION .text           ; Начало секции кода
	GLOBAL _start
	
_start:                 ; Точка входа в программу
mov eax,4               ; Системный вызов для записи (sys_write)
mov ebx,1               ; Описатель файла '1' - стандартный вывод
mov ecx,name_surname    ; Адрес строки name_surname в ecx
mov edx,name_surnameLen ; Размер строки name_surname
int 80h                 ; Вызов ядра

mov eax,1               ; Системный вызов для выхода (sys_exit)
mov ebx,0               ; Выход с кодом возврата '0' (без ошибок)
int 80h                 ; Вызов ядра
