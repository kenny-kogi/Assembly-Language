
INCLUDE Irvine32.inc

.data
	Msg byte "Hello Assembly", 0
.code
main PROC
	mov edx, offset Msg ;moving message variable to edx register
	call Writestring ; calling the wtite method

	;to read a character instead use eg mov al, "A" then call writechar method instead
	
	call readint



	invoke ExitProcess, 0
main ENDP
END main