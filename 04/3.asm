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

mov cx,5
mov dl,30h
start: 
mov ah,1
int 21h 
loop start

mov dl,13
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,bl

mov cx,5
print:
mov dl,2Ah
mov ah,2
int 21h 
loop print

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN





