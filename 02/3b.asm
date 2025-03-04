.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
msg1 db "input uppercase letter: $"
msg2 db "output in lowercase: $"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

lea dx,msg1
mov ah,9
int 21h

mov ah,1
int 21h
mov bl,al
add bl,32

mov dl,13
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

lea dx,msg2
mov ah,9
int 21h

mov dl,bl
mov ah,2
int 21h

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN


