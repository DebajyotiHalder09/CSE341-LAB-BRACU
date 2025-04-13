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

mov ax,0
mov cx,1
start:
add ax,cx
add cx,3
cmp cx,148
jle start

;exit to DOS

end:             
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN



