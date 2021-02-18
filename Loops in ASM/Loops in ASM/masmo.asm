
INCLUDE Irvine32.inc

.data

.code
main PROC
	mov eax, 1 ; setting the starting point of the loop
	mov ecx, 10 ; Acts as the counter of the loop

	l1: ;label of the loop
		call writeint
		call crlf
		add eax, 1

		loop l1 ;calling the loop

	call readint ; holding the string



main ENDP
END main