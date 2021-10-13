section .text
global leap_year

%macro divide_by_100 0 
    mov eax, 1	
	imul ecx, edi, -1030792151	; multiply by modular inverse of 25
	cmp	ecx, 171798688			; compare to floor((2**32-1)/25)
%endmacro

leap_year:
    test dil, 3 ; test rdi, 3 0b0011
    jne false

    divide_by_100 ; facilitate the code reading
    ja true ; if ~(25|n), return 1

    test edi, 15; 0b1111
    jne false
true:    
    mov al, 1
    ret ;jmp endif  
false:
    xor rax, rax ;mov eax, 0
    ret    
