.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
msg1 db "non-negative$"
msg2 db "negative, replaced by 5$"
.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

mov ax,-4

cmp ax,0
jl less   
less:
mov ax,5
 

;exit to DOS
exit:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
