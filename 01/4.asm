.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX

;Subtract two numbers using two registers. 
;Do you always get the correct answer?
;What happens when you subtract larger number 
;from the smaller one?
 
; enter your code here

mov ax,5
mov bx,5
sub bx,ax
 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
