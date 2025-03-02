.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX

;Swap two numbers, using a maximum of 3 registers.

; enter your code here

mov bx,6
mov cx,7
mov dx,bx
mov bx,cx
mov cx,dx
 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
