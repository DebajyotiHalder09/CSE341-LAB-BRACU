.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

str db "hello world!$"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here


lea dx,str
mov ah,9
int 21h


 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN




