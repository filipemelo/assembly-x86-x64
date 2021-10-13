section .text
global leap_year

%macro divide_by 1
    mov rax, rdi
    mov rbx, %1
    xor rdx, rdx
    div rbx ;idiv rbx
    test rdx, rdx ;cmp rdx, 0
%endmacro

leap_year:
    divide_by 4
    jne false

    divide_by 100
    jne true

    divide_by 400
    jne false
true:    
    mov rax, 1
    ret ;jmp endif  
false:
    xor rax, rax ;mov eax, 0
    ret
