	.file	"signal.c"
# GNU C23 (GCC) version 15.2.1 20250808 (Red Hat 15.2.1-1) (x86_64-redhat-linux)
#	compiled by GNU C version 15.2.1 20250808 (Red Hat 15.2.1-1), GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Signal received."
	.text
	.p2align 4
	.globl	handler
	.type	handler, @function
handler:
.LFB11:
	.cfi_startproc
# signal.c:5: 	printf("Signal received.");
	movl	$.LC0, %edi	#,
	xorl	%eax, %eax	#
	jmp	printf	#
	.cfi_endproc
.LFE11:
	.size	handler, .-handler
	.section	.rodata.str1.1
.LC1:
	.string	"Process started"
.LC2:
	.string	"usrsig min:%d, usrsig max:%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# signal.c:9: 	signal(SIGUSR1,handler);
	movl	$handler, %esi	#,
	movl	$10, %edi	#,
	call	signal	#
# signal.c:10: 	printf("Process started\n");
	movl	$.LC1, %edi	#,
	call	puts	#
# signal.c:11: 	printf("usrsig min:%d, usrsig max:%d\n",SIGRTMIN,SIGRTMAX);
	call	__libc_current_sigrtmax	#
	movl	%eax, %ebx	#, _1
# signal.c:11: 	printf("usrsig min:%d, usrsig max:%d\n",SIGRTMIN,SIGRTMAX);
	call	__libc_current_sigrtmin	#
# signal.c:11: 	printf("usrsig min:%d, usrsig max:%d\n",SIGRTMIN,SIGRTMAX);
	movl	%ebx, %edx	# _1,
	movl	$.LC2, %edi	#,
	movl	%eax, %esi	# _2,
	xorl	%eax, %eax	#
	call	printf	#
.L4:
	jmp	.L4	#
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250808 (Red Hat 15.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
