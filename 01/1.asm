.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX

;task01: Take input in the register AX, 
;and then move it to BX using only MOV instruction
 
; enter your code here

mov ax, 6
mov bx,ax
 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
