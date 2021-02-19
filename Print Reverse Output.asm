.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    xor cx,cx
    
   inp:
    int 21h
    cmp al,0dh
    je exit
    push ax
    inc cx
    jmp inp
    exit:
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
   
   oup:
    pop dx
    int 21h
    loop oup
    
    main endp
end main