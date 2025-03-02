.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

X dw 10
Y dw 15
Z dw 3 
result dw ? 
quotient dw ?
remainder dw ?

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX

;Perform the following arithmetic operations

; enter your code here

;1.X * Y
mov ax,X
mov bx,Y
mul bx 
mov result,bx 

;2.X / Y
mov dx,0
mov ax,X
mov bx,Y
div bx
mov quotient,ax
mov remainder,dx  

;3.X * Y / Z  
mov dx,0
mov ax,Y
mov bx,Z
div bx      
mov bx,X
mul ax
mov result,ax  
  

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
