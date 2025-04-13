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

mov ax,-19
mov bx,0

cmp ax,bx
jg greater 
je equal
jl less

greater:
mov bx,1
jmp exit
equal:
mov bx,0
jmp exit
less:
mov bx,-1 

;exit to DOS
exit:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
