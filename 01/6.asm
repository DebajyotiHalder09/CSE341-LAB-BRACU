.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

A dw 5
B dw 6
C dw ?

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX

;Perform the following arithmetic instructions
;A, B, C are three variables to be declared beforehand
 
; enter your code here

;1. A = B - A
mov ax,A
mov bx,B
sub bx,ax
mov A,bx

;2. A = -(A + 1)
mov bx,A
add bx,1
neg bx
mov A,bx 

;3. C = A + (B + 1); use inc
mov bx,B
inc bx
mov ax,A
add ax,bx
mov C,ax 

;4. A = B – (A – 1); use dec
mov ax,A
dec ax
mov bx,B
sub bx,ax
mov A,bx
 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
