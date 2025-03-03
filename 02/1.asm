.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
msg db "Plase insert character: $"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

;showing msg line
lea dx,msg
mov ah,9
int 21h

;taking user input
mov ah,1
int 21h
mov bl,al

;move to the new line and start from left most
mov dl,10
mov ah,2
int 21h
mov dl,13
mov ah,2
int 21h

;showing ouput
mov dl,bl
mov ah,2
int 21h
;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN





