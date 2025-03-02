.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX

;Perform the following arithmetic operations
 
; enter your code here

;1. 36DF * AF
mov ax,036DFh
mov bx,0AFh
mul bx

;2. F4D5 / C9A5 
mov dx,0
mov ax,0F4d5h
mov bx,0C9A5h
div bx

;3. CA92 * BAF9 
mov ax,0CA92h
mov bx,0BAF9h
mul bx
 
;4. C2A2 * ABCD / BED
mov ax,0ABCDh
mov bx,0BEDh
div bx
mov bx,0C2A2h
mul bx


;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
