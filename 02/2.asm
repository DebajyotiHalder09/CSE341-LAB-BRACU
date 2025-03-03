.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
msg1 db "add/sub/mul/div: $"
msg2 db "enter 1st number: $"
msg3 db "enter 2nd number: $"
num1 db ?
num2 db ?

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

mov ah,9
lea dx,msg1
int 21h

;user input
mov ah,1
int 21h 
mov bl,al ;opr sign saved in bl

;newline
mov dl,10
mov ah,2
int 21h
;cursor-left most
mov dl,13
mov ah,2
int 21h
;1st num
mov ah,9
lea dx,msg2
int 21h
mov num1,al

;newline
mov dl,10
mov ah,2
int 21h
;cursor-left most
mov dl,13
mov ah,2
int 21h
;2nd num
mov ah,9
lea dx,msg3
int 21h
mov num2,al

;newline
mov dl,10
mov ah,2
int 21h
;cursor-left most
mov dl,13
mov ah,2
int 21h

;show output
mov al,num1
mov cl,num2
;now add/sub in bl, how to write logic
mov dl,bl
mov ah,2
int 21h


;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN





