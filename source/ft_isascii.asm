; is value ascii?
; int	ft_isascii(int c)

; ASCII : 0-127

section .text
    global ft_isascii

ft_isascii:
    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
    cmp eax, 0
    jl .not_ascii
    cmp eax, 127
    jle .is_ascii

.not_ascii:
    mov eax, 0
    jmp .exit

.is_ascii:
    mov eax, 1
    jmp .exit

.exit:
    pop ebp
    ret
