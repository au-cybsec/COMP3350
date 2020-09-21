; Philip Julian -- poj0002
; 1 -- Piazza students question and answer help

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data

	input byte 1,2,3,4,5,6,7,8 
	shift byte 2

.code
	main Proc
	
	mov eax, 0
	mov ebx, 0
	mov ecx, 0
	mov edx, 0

	; move input parts into eax lower and higher
	mov ah, [input] ; 1
	add ah, shift
	mov al, [input + 1] ; 1
	add al, shift

	; move input parts into ebx lower and higher
	mov bh, [input + 2]
	add bh, shift
	mov bl, [input + 3] 
	add bl, shift

	; move input parts into ecx lower and higher
	mov ch, [input + 4]
	add ch, shift
	mov cl, [input + 5] 
	add cl, shift

	; move input parts into edx lower and higher
	mov dh, [input + 6]
	add dh, shift
	mov dl, [input + 7] 
	add dl, shift
			
		INVOKE ExitProcess,0
	main ENDP
END main