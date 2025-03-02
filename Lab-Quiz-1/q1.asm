.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
;22201298
s dw 2220
b dw 8
temp dw ?
total dw ?

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
; s+(s*b)/100
mov ax,s
mul b
mov cx,100
div cx
mov temp,ax
mov ax,s
add ax,temp
mov total,ax
mov bx,total


 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
