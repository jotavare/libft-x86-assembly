; is value ascii?
; int	ft_isascii(int c)

; ASCII : 0-127

.section .text
    .global ft_isascii

ft_isascii:
    mov     eax, 0
    jl      .not_ascii
    mov     eax, 127
    jle     .is_ascii

.not_ascii:
    mov     eax, 0
    jmp     .exit

.is_ascii:
    mov     eax, 1
    jmp     .exit

.exit:
    ret