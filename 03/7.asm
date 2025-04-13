.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
num1 db ? 
msg1 db "EVEN$"
msg2 db "ODD$"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

mov ah,1
int 21h
sub al,30h
mov num1,al

mov dl,13
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

mov ah,0
mov al,num1
mov bl,2
div bl

cmp ah,0
je even
jg odd
jl odd

even:
lea dx,msg1
mov ah,9
int 21h
jmp exit
odd:
lea dx,msg2
mov ah,9
int 21h






 

;exit to DOS
exit:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
