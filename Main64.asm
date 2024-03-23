;https://programminghaven.home.blog/2020/02/16/setup-an-assembly-project-on-visual-studio-2019/
;VS2022 MASM 64bit project setup and MsgBox example

ExitProcess PROTO
MessageBoxA PROTO	;message box call

.data
myText			db "Hello World", 0			;MsgBox title null terminated
myCaption		db "Message Box Testing", 0 ;MsgBox text null terminated

.code
main PROC

	sub rsp, 28h   ;reserved the stack area as parameter passing area

	;MsgBox code
	mov rcx, 0
	lea rdx, myText
	lea r8, myCaption
	mov r9, 0
	call MessageBoxA	

	mov rcx, 0			;Exit Code 0
	call ExitProcess
main ENDP

END