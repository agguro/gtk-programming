	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"text"
.LC1:
	.string	"List Items"
	.text
	.globl	init_list
	.type	init_list, @function
init_list:
.LFB1026:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 56
	.cfi_offset 3, -24
	mov	QWORD PTR -56[rbp], rdi
	call	gtk_cell_renderer_text_new@PLT
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	r8d, 0
	mov	ecx, 0
	lea	rdx, .LC0[rip]
	mov	rsi, rax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	gtk_tree_view_column_new_with_attributes@PLT
	mov	QWORD PTR -32[rbp], rax
	call	gtk_tree_view_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	gtk_tree_view_append_column@PLT
	mov	esi, 64
	mov	edi, 1
	mov	eax, 0
	call	gtk_list_store_new@PLT
	mov	QWORD PTR -24[rbp], rax
	call	gtk_tree_model_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	rbx, rax
	call	gtk_tree_view_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	rsi, rbx
	mov	rdi, rax
	call	gtk_tree_view_set_model@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	g_object_unref@PLT
	nop
	add	rsp, 56
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1026:
	.size	init_list, .-init_list
	.globl	add_to_list
	.type	add_to_list, @function
add_to_list:
.LFB1027:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 88
	.cfi_offset 3, -24
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	call	gtk_list_store_get_type@PLT
	mov	rbx, rax
	call	gtk_tree_view_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	rdi, rax
	call	gtk_tree_view_get_model@PLT
	mov	rsi, rbx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	QWORD PTR -72[rbp], rax
	lea	rdx, -64[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	gtk_list_store_append@PLT
	mov	rdx, QWORD PTR -96[rbp]
	lea	rsi, -64[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	r8d, -1
	mov	rcx, rdx
	mov	edx, 0
	mov	rdi, rax
	mov	eax, 0
	call	gtk_list_store_set@PLT
	nop
	mov	rax, QWORD PTR -24[rbp]
	xor	rax, QWORD PTR fs:40
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	add	rsp, 88
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1027:
	.size	add_to_list, .-add_to_list
	.globl	on_changed
	.type	on_changed, @function
on_changed:
.LFB1028:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 88
	.cfi_offset 3, -24
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	call	gtk_tree_selection_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	rcx, rax
	lea	rdx, -64[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	gtk_tree_selection_get_selected@PLT
	test	eax, eax
	je	.L7
	mov	rax, QWORD PTR -80[rbp]
	lea	rdx, -72[rbp]
	lea	rsi, -64[rbp]
	mov	r8d, -1
	mov	rcx, rdx
	mov	edx, 0
	mov	rdi, rax
	mov	eax, 0
	call	gtk_tree_model_get@PLT
	mov	rbx, QWORD PTR -72[rbp]
	call	gtk_label_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	rsi, rbx
	mov	rdi, rax
	call	gtk_label_set_text@PLT
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	g_free@PLT
.L7:
	nop
	mov	rax, QWORD PTR -24[rbp]
	xor	rax, QWORD PTR fs:40
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	add	rsp, 88
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1028:
	.size	on_changed, .-on_changed
	.section	.rodata
.LC2:
	.string	"List view"
.LC3:
	.string	""
.LC4:
	.string	"Aliens"
.LC5:
	.string	"Leon"
.LC6:
	.string	"The Verdict"
.LC7:
	.string	"North Face"
.LC8:
	.string	"Der Untergang"
.LC9:
	.string	"changed"
.LC10:
	.string	"destroy"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1029:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	DWORD PTR -52[rbp], edi
	mov	QWORD PTR -64[rbp], rsi
	lea	rdx, -64[rbp]
	lea	rax, -52[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	gtk_init@PLT
	mov	edi, 0
	call	gtk_window_new@PLT
	mov	QWORD PTR -40[rbp], rax
	call	gtk_tree_view_new@PLT
	mov	QWORD PTR -32[rbp], rax
	call	gtk_window_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	lea	rsi, .LC2[rip]
	mov	rdi, rax
	call	gtk_window_set_title@PLT
	call	gtk_window_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	esi, 1
	mov	rdi, rax
	call	gtk_window_set_position@PLT
	call	gtk_container_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	esi, 10
	mov	rdi, rax
	call	gtk_container_set_border_width@PLT
	call	gtk_window_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	edx, 250
	mov	esi, 270
	mov	rdi, rax
	call	gtk_window_set_default_size@PLT
	call	gtk_tree_view_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	esi, 0
	mov	rdi, rax
	call	gtk_tree_view_set_headers_visible@PLT
	mov	esi, 0
	mov	edi, 0
	call	gtk_vbox_new@PLT
	mov	QWORD PTR -24[rbp], rax
	call	gtk_box_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	rdi, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	r8d, 5
	mov	ecx, 1
	mov	edx, 1
	mov	rsi, rax
	call	gtk_box_pack_start@PLT
	lea	rdi, .LC3[rip]
	call	gtk_label_new@PLT
	mov	QWORD PTR -16[rbp], rax
	call	gtk_box_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	r8d, 5
	mov	ecx, 0
	mov	edx, 0
	mov	rsi, rax
	call	gtk_box_pack_start@PLT
	call	gtk_container_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	gtk_container_add@PLT
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	init_list
	mov	rax, QWORD PTR -32[rbp]
	lea	rsi, .LC4[rip]
	mov	rdi, rax
	call	add_to_list
	mov	rax, QWORD PTR -32[rbp]
	lea	rsi, .LC5[rip]
	mov	rdi, rax
	call	add_to_list
	mov	rax, QWORD PTR -32[rbp]
	lea	rsi, .LC6[rip]
	mov	rdi, rax
	call	add_to_list
	mov	rax, QWORD PTR -32[rbp]
	lea	rsi, .LC7[rip]
	mov	rdi, rax
	call	add_to_list
	mov	rax, QWORD PTR -32[rbp]
	lea	rsi, .LC8[rip]
	mov	rdi, rax
	call	add_to_list
	call	gtk_tree_view_get_type@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	rdi, rax
	call	gtk_tree_view_get_selection@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	r9d, 0
	mov	r8d, 0
	mov	rcx, rdx
	lea	rdx, on_changed[rip]
	lea	rsi, .LC9[rip]
	mov	rdi, rax
	call	g_signal_connect_data@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	esi, 80
	mov	rdi, rax
	call	g_type_check_instance_cast@PLT
	mov	rdi, rax
	mov	r9d, 0
	mov	r8d, 0
	mov	ecx, 0
	mov	rax, QWORD PTR gtk_main_quit@GOTPCREL[rip]
	mov	rdx, rax
	lea	rsi, .LC10[rip]
	call	g_signal_connect_data@PLT
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	gtk_widget_show_all@PLT
	call	gtk_main@PLT
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1029:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
