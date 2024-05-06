; is value a digit?
; int   ft_isdigit(int c)

; ASCII 0-9: 48-57

.section .text
    .global ft_isdigit

ft_isdigit:
    mov     eax, 48
    jl      .not_digit
    mov     eax, 57
    jle     .is_digit

.not_digit:
    mov     eax, 0
    jmp     .exit

.is_digit:
    mov     eax, 1
    jmp     .exit

.exit:
    ret