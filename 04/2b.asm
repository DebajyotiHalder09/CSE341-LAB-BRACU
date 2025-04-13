.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

sum dw ?;declayred sum as 16-bit variable

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

mov ax,0
mov cx,100
start:
add ax,cx
sub cx,5
cmp cx,5
jge start

mov sum,ax

;exit to DOS

end:             
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN



