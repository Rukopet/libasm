global _ft_strcpy

_ft_strcpy:
section .text
	mov r12, rdi
.next:
	cmp byte[rsi], 0
	je .ret
	mov r11b, byte [rsi]
	mov byte[r12], r11b
	inc r12
	inc rsi
	jmp .next

.ret:
	mov rax, rdi
	mov byte [r12], 0
	ret