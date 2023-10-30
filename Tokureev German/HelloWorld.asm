section .data
    hello db 'Hello, World!',10 ; строка вывода
    len equ $ - hello ; длина строки

section .text
    global _start

_start:
    ; вывод сообщения на консоль
    mov edx, len ; задаем длину строки
    mov ecx, hello ; задаем адрес строки
    mov ebx, 1 ; задаем файловый дескриптор (1 - стандартный вывод)
    mov eax, 4 ; системный вызов для записи
    int 0x80 ; вызов операционной системы

    ; завершение программы
    mov eax, 1 ; системный вызов для выхода
    xor ebx, ebx ; код возврата 0
    int 0x80 ; вызов операционной системы
