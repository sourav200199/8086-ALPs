.model small
.stack 64h
.data
msg db 'SOURAV 20BCB0054'
.code
mov ax, @data
mov ds, ax
mov ah, 40h       ; service no. to write to a file/device
mov cx, 16        ; counter
mov bx, 1         ; file handle
lea dx, msg
int 21h
mov ax, 4c00h
int 21h
end
