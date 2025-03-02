.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
var1 dw ?
var2 dw ?
result dw ?

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX

;Perform the following arithmetic operation:
;(1 + 2) * (3 – 1) / 5 + 3 + 2 – (1 * 2) 
 
; enter your code here

mov ax,1
add ax,2
mov bx,3
sub bx,1
mul bx
mov dx,0
mov bx,5
div bx
add ax,3
add ax,2
mov var1,ax
mov ax,1
mov bx,2
mul bx
mov var2,ax
mov ax,var1
sub ax,var2
mov result,ax 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN




