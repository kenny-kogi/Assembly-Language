INCLUDE Irvine32.inc

.data
	 var1 dword ?
	 var2 dword ?

	 msg byte "Enter TWORD Integer Values", 0
	 msg1 byte "Addition", 0
	 msg2 byte "Subtraction", 0
	 msg3 byte "Multiplication", 0
	 msg4 byte "Division", 0
.code
main PROC
	mov edx, offset msg
	call writestring
	call readint

	mov var1, eax
	call readint
	mov var2, eax
	;addition
	call crlf
	mov edx, offset msg1
	call writestring
	add eax, var1
	call writeint
	;subtraction
	call crlf
	mov edx, offset msg2
	call writestring
	add eax, var1
	sub eax, var2
	call writeint
	;multiplication
	call crlf
	mov edx, offset msg3
	call writestring
	mov edx, 0
	mov eax, var1
	mov ebx, var2
	mul ebx
	call writeint
	;division
	call crlf
	mov edx, offset msg4
	call writestring
	mov edx, 0
	mov eax, var1
	mov ebx, var2
	div ebx
	call writeint
	call readint

	invoke ExitProcess, 0
main ENDP
END main