global _ft_write
extern ___error

_ft_write:
section .text
	mov rax, 0x2000004 ;номер системного вызова
	syscall
	jc .failed ; jump carry
	ret

.failed:
	push rax         ;откладываем на стек rax (value too)
    call ___error    ;вызываем функцию ___error, для ошибки
    pop qword [rax]  ;достанем его со стека rax => в 64-битноый \
    ; формат, error меняет размер
    mov rax, -1      ;запишем в возвращаемое значение -1
    ret