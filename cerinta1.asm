.data


	sirb16: .space 100
	sirb2: .space 400
	formatscanf: .asciz "%s"
	formatprintf: .asciz "%s\n"
	
	indexsirb2: .long 0 
	
.text


.global main

main:

	
	pushl $sirb16
	pushl $formatscanf
	call scanf
	popl %ebx
	popl %ebx

	mov $sirb16, %edi
	mov $sirb2, %esi
	xorl %ecx, %ecx
	
et_for:
	movb (%edi, %ecx, 1), %al
	
	
	
	cmp $0, %al
	je et_exit
	
	cmp $48, %al
	je et_cifra0
	
	cmp $49, %al
	je et_cifra1
	
	cmp $50, %al
	je et_cifra2
	
	cmp $51, %al
	je et_cifra3
	
	cmp $52, %al
	je et_cifra4
	
	cmp $53, %al
	je et_cifra5
	
	cmp $54, %al
	je et_cifra6
	
	cmp $55, %al
	je et_cifra7
	
	cmp $56, %al
	je et_cifra8
	
	cmp $57, %al
	je et_cifra9
	
	cmp $65, %al
	je et_cifraa
	
	cmp $66, %al
	je et_cifrab
	
	cmp $67, %al
	je et_cifrac
	
	cmp $68, %al
	je et_cifrad
	
	cmp $69, %al
	je et_cifrae
	
	cmp $70, %al
	je et_cifraf
	
continuare:
	incl %ecx
	jmp et_for
	
	
	
et_cifra0:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare

et_cifra1:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare

et_cifra2:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $40, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare

et_cifra3:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare

et_cifra4:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare

et_cifra5:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare

et_cifra6:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare


et_cifra7:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare

et_cifra8:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare

et_cifra9:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare

et_cifraa:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare
	
et_cifrab:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare

et_cifrac:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare

et_cifrad:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare

et_cifrae:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare

et_cifraf:
	pushl %ecx
	movl indexsirb2, %ecx
	
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movl %ecx, indexsirb2
	
	popl %ecx
	jmp continuare



et_exit:
	
	push $sirb2
	push $formatprintf
	call printf
	popl %ebx
	popl %ebx


	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
