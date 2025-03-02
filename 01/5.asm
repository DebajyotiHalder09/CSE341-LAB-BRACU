.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX

;Swap two numbers using ADD/SUB instructions only
 
; enter your code here

mov bx,6
mov cx,7
add bx,cx
sub cx,bx
neg cx
sub bx,cx
 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
