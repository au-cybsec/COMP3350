; Philip Julian -- poj0002
; Project 3 

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
		shift dword 386input byte 5,0ah,3,6,0ch
		output byte ;fill in here -----------------------------------------

.code
		main proc
			; this loop will iterate length-shift times
			; this loop will place the 'non wrapped' values 
			; Start reading from input at 0
			; start writing at shift

		l1:
			; move the value from input into al
			; move the value from al into output
			; increment the input index
			; increment the output index

		loop l1

			; this loop will iterate shift times
			; start writing at index 0
			; start reading at index length - shift
			; (this loop will place the 'wrapped' values)
		
		l2:
			; move the value from input into al
			; move the value from al into output
			; increment the input index
			; increment the output index

		loop l2

		invoke ExitProcess,0
	main endp
end main