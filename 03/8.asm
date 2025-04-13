.MODEL SMALL
 
.STACK 100H
.DATA
; declare variables here
var1 db ? 
msg1 db "Vowel$"
msg2 db "Consonant$"
.CODE
MAIN PROC
; initialize DS
MOV AX,@DATA
MOV DS,AX
 
; enter your code here
mov ah,1       
int 21h        
mov var1,al 

mov dl,13      
mov ah,2       
int 21h
mov dl,10      
mov ah,2
int 21h

mov al,var1    

cmp al,'A'
je vowel
cmp al,'E'
je vowel
cmp al,'I'
je vowel
cmp al,'O'
je vowel
cmp al,'U'
je vowel
cmp al,'a'
je vowel
cmp al,'e'
je vowel
cmp al,'i'
je vowel
cmp al,'o'
je vowel
cmp al,'u'
je vowel
jmp consonant

vowel:
lea dx,msg1
mov ah,9
int 21h
jmp exit

consonant:
lea dx,msg2
mov ah,9
int 21h

;exit to DOS
exit:               
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN