	section .text
	global my_func
my_func:
	xor rax,rax
	jmp section_1
section_1: 
	cmp byte[rdi+rax], 0
	je not_found
	cmp byte[rdi + rax], sil
	je found
	inc rdi
	jmp section_1

not_found:
	mov rax, -84
	ret
found:
	mov r11b, byte[rdi+rax]
	sub r11b, 26 
	sub r11b, 70
	movzx rax, r11b
	ret
