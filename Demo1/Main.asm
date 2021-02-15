.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, deExitCide:DWORD

.data
	;variables

.code
main PROC
	mov eax, 5
	add eax, 10
	sub eax, 3
	INVOKE ExitProcess, 0

main ENDP
END main