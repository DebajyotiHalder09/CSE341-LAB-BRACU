.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

;22201298
A dw 22
B dw 20
C dw 12
D dw 98
_div dw 2220
total dw ? 
x dw ?

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;x=(A+B*C-D), total=_div/x
mov ax,B
mul c
mov bx,ax
add bx,A
sub bx,D
mov x,bx
mov dx,0
mov ax,_div
div bx
mov total,ax

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN




