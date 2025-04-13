.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

mov ah,1
int 21h
mov bl,al


cmp bl,'y'
je display
cmp bl,'Y'
je display

jmp exit

display:
mov dl,13
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

mov dl,bl
mov ah,2
int 21h

;exit to DOS
exit:              
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

