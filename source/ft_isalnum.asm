; is value a alphanumeric?
; int	ft_isalnum(int c)

; ASCII 0-9: 48-57
; ASCII A-Z: 65-90
; ASCII a-z: 97-122

.section .text
    .global ft_isalnum

ft_isalnum:
    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]

.is_num:
    cmp eax, 48
    jl .not_alnum
    cmp eax, 57
    jle .is_alnum

.is_alpha:
    cmp eax, 65
    jl .not_alnum
    cmp eax, 90
    jle .is_alnum

.is_lower:
    cmp eax, 97
    jl .not_alnum
    cmp eax, 122
    jle .is_alnum

.is_alnum:
    mov eax, 1
    jmp .exit

.not_alnum:
    mov eax, 0
    jmp .exit

.exit:
    pop ebp
    mov ebx, 1
    ret
    