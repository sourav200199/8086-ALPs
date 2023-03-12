.model small
.stack 64h

.data
fname db 'FIO0054.txt',0
msg db 'Hello, this is Sourav'
len equ $-msg

.code
mov ax, @data
mov ds, ax

; CREATING A FILE
mov ah, 3ch ; service no. - creating a file
lea dx, fname
mov cl, 1 ; attribute
int 21h

; WRITING TO A FILE
mov bx, ax ; now the bx has the file handle
mov ah, 40h ; service no. - write to a file
mov cx, len
lea dx, msg
int 21h

; CLOSING THE FILE
mov ah, 3eh
mov bx, 1
int 21h

mov ax, 4c00h
int 21h

end

