global _ft_strcmp

_ft_strcmp:
section .text
.next:
	mov al, byte [rsi]
	mov bl, byte [rdi]
	cmp rax, 0
	jz .ret
	cmp rbx, 0
	jz .ret
	cmp rax, rbx
	jne .ret
	inc rdi
	inc rsi
	je .next

.ret:
	sub rax, rbx
	ret