section .data
    hello db 'Hello, World!',0  ; 存储要输出的字符串，并以null结尾

section .text
    global _start  ; 程序的入口点

_start:
    ; syscall号：1（write），rdi：文件描述符（1表示标准输出），rsi：字符串地址，rdx：字符串长度
    mov rax, 1       ; syscall号1代表write
    mov rdi, 1       ; 文件描述符1表示标准输出
    mov rsi, hello   ; 字符串地址
    mov rdx, 13      ; 字符串长度
    syscall

    ; syscall号：60（_exit），rdi：返回码
    mov rax, 60      ; syscall号60代表_exit
    xor rdi, rdi     ; 返回码0表示成功
    syscall
