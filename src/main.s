.code16
.globl start

_start:
	cli
	mov $0, %ax
	mov %ax, %ds
	mov %ax, %es
	mov %ax, %ss
	mov $0x7c00, %sp


	mov $msg, %si
	call print
	cli
	hlt

print:
1:
	lodsb
	cmp $0, %al
	jz 1f
	mov $0x0E, %ah
	int $0x10
	jmp 1b
1:

msg:
	.asciz "Hello, World"
