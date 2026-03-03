	.file	"flock.c"
# GNU C23 (GCC) version 15.2.1 20250808 (Red Hat 15.2.1-1) (x86_64-redhat-linux)
#	compiled by GNU C version 15.2.1 20250808 (Red Hat 15.2.1-1), GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"/var/home/pauls/Desktop/development/C/flock_test_file"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"fd failed"
.LC2:
	.string	"flock failed"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB22:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# flock.c:9: 	int fd = open("/var/home/pauls/Desktop/development/C/flock_test_file", O_RDWR);
	xorl	%eax, %eax	#
	movl	$2, %esi	#,
	movl	$.LC0, %edi	#,
	call	open	#
# flock.c:10: 	if (fd == -1) {
	cmpl	$-1, %eax	#, fd
	je	.L8	#,
# flock.c:15: 	if (flock(fd, LOCK_EX) == -1) {
	movl	$2, %esi	#,
	movl	%eax, %edi	# fd,
	movl	%eax, %ebx	#, fd
	call	flock	#
# flock.c:15: 	if (flock(fd, LOCK_EX) == -1) {
	cmpl	$-1, %eax	#, _1
	je	.L9	#,
# flock.c:20: 	pause();
	call	pause	#
# flock.c:22: 	flock(fd, LOCK_UN);
	movl	%ebx, %edi	# fd,
	movl	$8, %esi	#,
	call	flock	#
# flock.c:23: 	close(fd);
	movl	%ebx, %edi	# fd,
	call	close	#
# flock.c:24: 	return 0;
	xorl	%eax, %eax	# <retval>
# flock.c:25: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
.L8:
	.cfi_restore_state
# flock.c:11: 		printf("fd failed\n");
	movl	$.LC1, %edi	#,
	call	puts	#
.L3:
# flock.c:12: 		return 1;
	movl	$1, %eax	#, <retval>
# flock.c:25: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
.L9:
	.cfi_restore_state
# flock.c:16: 		printf("flock failed\n");
	movl	$.LC2, %edi	#,
	call	puts	#
# flock.c:17: 		return 1;
	jmp	.L3	#
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250808 (Red Hat 15.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
