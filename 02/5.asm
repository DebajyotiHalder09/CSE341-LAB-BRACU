.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
msg1 db "?$"
msg2 db "THE SUM OF $"
msg3 db " AND $"
msg4 db " IS $"

num1 db ?
num2 db ?

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

;display a "?"
lea dx,msg1
mov ah,9
int 21h

;reading two inputs, sum < 10
mov ah,1
int 21h
sub al,30h
mov num1,al

mov ah,1
int 21h
sub al,30h
mov num2,al

;calculating sum
mov bl,num1
mov cl,num2
add bl,cl;sum saved in bl

;move to newline
mov dl,13
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

;display output as required
lea dx,msg2;THE SUM OF
mov ah,9
int 21h
;display 1st input
add num1,30h
mov dl,num1
mov ah,2
int 21h

lea dx,msg3;AND
mov ah,9
int 21h
;display 2nd input
add num2,30h
mov dl,num2
mov ah,2
int 21h
lea dx,msg4;IS 
mov ah,9
int 21h
;display sum 
add bl,30h
mov dl,bl
mov ah,2
int 21h      
           
;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN


