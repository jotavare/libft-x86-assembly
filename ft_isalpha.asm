; is value a alpha?
; int   ft_isalpha(int c)

; . local labels
; ASCII A-Z: 65-90
; ASCII a-z: 97-122

.section .text
    .global ft_isalpha

ft_isalpha:
    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]

.is_upper:
    cmp eax, 65
    jl .not_alpha
    cmp eax, 90
    jle .not_alpha

.is_lower:
    cmp eax, 97
    jl .not_alpha
    cmp eax, 122
    jg .not_alpha

.is_alpha:
    mov eax, 1
    jmp .exit

.not_alpha:
    mov eax, 0
    jmp .exit

.exit:
    pop ebp
    ret

; stack layout
; ------------
; +8 : int c
; +4 : return address
;  0 : ebp <- esp

; if it was variable inside the function, it would be
; [ebp - 4] = int c