.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

product dw 0
M dw 5
N dw 4

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

mov cx,N
mov ax,product
mov bx,M

start:
add ax,bx
loop start

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN



