.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
msg1 db "ENTER A STRING OF CAPITAL LETTERS: $"
msg2 db "THE LONGEST CONSECUTIVELY INCREASING STRNG IS: $"
msg3 dw ?

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

lea dx,msg1
mov ah,9
int 21h     

start_reading:
mov ah,1
int 21h
cmp al,0Dh
je stop_reading
jmp start_reading

stop_reading:
mov dl,13
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

lea dx,msg2
mov ah,9
int 21h

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
