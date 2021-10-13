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
    test dil, 3 ; test rdi, 3 0b0011
    jne false

    divide_by 100
    jne true

    test edi, 15; 0b1111
    jne false
true:    
    mov al, 1
    ret ;jmp endif  
false:
    xor rax, rax ;mov eax, 0
    ret    
