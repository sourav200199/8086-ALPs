.model small
.stack 64h

.data
msg db 'Hello World$'

.code
mov ax, @data
mov ds, ax
mov ax, 0002h ; 00 - service no. for disp; 02 - 80 * 25 disp
int 10h

mov ah, 02h ; setting the cursor position
mov dh, 12
mov dl, 36
mov bh, 3 ; page no.
int 10h

mov ah, 05h    ; service no. - activate the display
mov al, 3      ; page no.
int 10h

lea dx, msg
mov ah, 09h   ; service no. - display string
int 21h       

mov ax, 4c00h
int 21h

end
