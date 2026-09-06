	.file	"caller.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"hello STDOUT\n"
.LC1:
	.string	"ERROR: this is an error"
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	push	rax
	mov	ecx, 13
	mov	edx, OFFSET FLAT:.LC0
	mov	esi, 1
	mov	edi, 1
	xor	eax, eax
	call	syscall
	mov	edx, OFFSET FLAT:.LC1
	mov	ecx, 23
	xor	eax, eax
	mov	esi, 2
	mov	edi, 1
	call	syscall
	xor	eax, eax
	pop	rdx
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
