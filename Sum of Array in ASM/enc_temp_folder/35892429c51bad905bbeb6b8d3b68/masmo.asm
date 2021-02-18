
INCLUDE Irvine32.inc

.data
	A dword 2, 3, 4, 5, 5 ; an 32bit array
	msg1 byte "Sum = ", 0
	msg2 byte "length = ", 0
	sum dword ? ;sum variable
.code
main PROC
	mov ebx, offset A ; moving the address of the array to register ebx
	mov eax, 0 ; setting the initial value of the eax register to 0
	mov ecx, 5 ; setting the counter

l1: ; loop label
	add eax, [ebx]
	add ebx, 4

	loop l1 ; starting the loop
	mov edx, offset msg1
	call writestring
	mov sum, eax ; moving the total value to sum
	mov eax, sum
	call writeint ; printing output
	call crlf ; new line

	mov edx, offset msg2
	call writestring
	mov eax,0 ; initialize with zero
	mov ax,lengthof A
	call writeint

call readint


main ENDP
END main