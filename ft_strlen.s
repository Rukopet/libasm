global _ft_strlen

_ft_strlen:
section .text
	mov eax, 0
.next:
	cmp byte [rdi], 0
	je .ret
	inc rdi
	inc eax
	jmp .next

.ret:
	ret