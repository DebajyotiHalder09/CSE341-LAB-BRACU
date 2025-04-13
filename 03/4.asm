.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
msg1 db 'o'
msg2 db 'e'

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

mov al,4 ;1 or 3,2 or 4

cmp al,1
je diso
cmp al,3
je diso
cmp al,2
je dise
cmp al,4
je dise

diso:
mov dl,msg1
mov ah,2
int 21h
jmp exit
dise:
mov dl,msg2
mov ah,2
int 21h

 

;exit to DOS
exit:               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
