assume cs:code, ds:data
data segment
data ends
code segment
start: mov ax, data
       mov ds, ax
stmt: mov ah, 00h
      int 16h
      cmp al, 00h
      je pend
      jmp again
again: mov ah, 0eh
       int 10h
       jmp stmt
pend: mov ax, 4c00h
      int 21h
code ends
end start
end
