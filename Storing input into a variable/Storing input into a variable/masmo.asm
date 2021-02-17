
INCLUDE Irvine32.inc

.data
	msg byte "Enter variable one: ", 0
	msg1 byte "Enter variable two: ", 0

	disp1 byte "variable 1 = ", 0
	disp2 byte "variable 2 = ", 0

	var1 dword ?
	var2 dword ?

.code
main PROC
	mov edx, offset msg
	call writestring
	call readint
	mov var1, eax


	call crlf

	mov edx, offset msg1
	call writestring
	call readint
	mov var2, eax
	
	
	call crlf

	mov edx, offset disp1
	call writestring
	mov eax, var1
	call writeint


	call crlf


	mov edx, offset disp2
	call writestring
	mov eax, var2
	call writeint
	call readint




main ENDP
END main