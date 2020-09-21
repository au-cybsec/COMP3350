; Project 2 (Other solutions could work as well)

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

; Setup the input array and the shift variable
.data
        input byte 1,2,3,4,5,6,7,8
        shift byte 2
.code
        main proc

        ; clear up the registers to make sure there is no old values inside them
        mov eax, 0
        mov ebx, 0
        mov ecx, 0
        mov edx, 0

        ; Setup EAX register with first and second values from the input array
            mov cx, 5

        L0:
            mov dl, 5
            add dl, 48

            mov ah, 2h
            int 21h
        loop L0


            ; Setup EBX register with 3rd and 4th values from the input array



            ; Setup ECX register with 5th and 6th values from the input array





            ; Setup EDX register with 7th and 8th values from the input array


            ; exit the program
            invoke ExitProcess, 0
        main endp
end main