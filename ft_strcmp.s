global _ft_strcmp

_ft_strcmp:
section .text
.next:
	mov al, byte [rdi]
	mov bl, byte [rsi]
	cmp rax, 0
	jz .ret
	cmp rbx, 0
	jz .ret
	cmp al, bl
	jne .ret
	inc rdi
	inc rsi
	jmp .next

.ret:
	movzx rax, al
	movzx rbx, bl
	sub rax, rbx
	ret