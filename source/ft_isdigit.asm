; is value a digit?
; int   ft_isdigit(int c)

; ASCII 0-9: 48-57

.section .text
    .global ft_isdigit

ft_isdigit:
    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
    cmp eax, 48
    jl .not_digit
    cmp eax, 57
    jle .is_digit

.not_digit:
    mov eax, 0
    jmp .exit

.is_digit:
    mov eax, 1
    jmp .exit

.exit:
    pop ebp
    ret
