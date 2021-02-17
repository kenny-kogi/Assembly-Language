
INCLUDE Irvine32.inc

.data
	Msg byte "Hello Assembly", 0
.code
main PROC
	mov edx, offset Msg
	call Writestring

	call readint


	invoke ExitProcess, 0
main ENDP
END main