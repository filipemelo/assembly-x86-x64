section .text
global leap_year
leap_year:
    mov rax, rdi
    mov rbx, 4
    xor rdx, rdx
    idiv rbx
    cmp rdx, 0
    jne false ; is not divided per 4

    mov rax, rdi
    mov rbx, 100
    xor rdx, rdx
    idiv rbx
    cmp rdx, 0
    jne true

    mov rax, rdi
    mov rbx, 400
    xor rdx, rdx
    idiv rbx
    cmp rdx, 0
    jne false ; is not divided per 100

true:    
    mov eax, 1
    jmp endif    
false:
    mov eax, 0
endif:
    ret
