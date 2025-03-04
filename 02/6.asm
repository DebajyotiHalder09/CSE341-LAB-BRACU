.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
msg1 db "ENTER THREE INITIALS: $"
c1 db ?
c2 db ?
c3 db ?

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

lea dx,msg1
mov ah,9
int 21h

mov ah,1
int 21h
mov c1,al
mov ah,1
int 21h
mov c2,al
mov ah,1
int 21h
mov c3,al

mov dl,13
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

mov dl,c1
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

mov dl,c2
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

mov dl,c3
mov ah,2
int 21h 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN





