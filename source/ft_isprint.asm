; is the value printable?
; int	ft_isprint(int c)

; ASCII : 32 - 126

.section .text
    .global ft_isprint

ft_isprint:
    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
    cmp eax, 32
    jl .not_printable
    cmp eax, 126
    jg .not_printable
    mov eax, 1
    jmp .is_printable

.not_printable:
    mov eax, 0
    jmp .exit

.is_printable:
    mov eax, 1
    jmp .exit

.exit
    pop ebp
    ret
    