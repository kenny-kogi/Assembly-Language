
INCLUDE Irvine32.inc

.data
	msg1 byte "Enter your age", 0
	msg2 byte "Your age is ", 0

.code
main PROC
	mov edx, offset msg1
	call writestring
	call readint ; reading the input from the user

	call crlf ; jumping to the next line

	mov edx, offset msg2
	call writestring
	call writeint ; printing the output





main ENDP
END main