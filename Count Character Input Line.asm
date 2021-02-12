.model small
.stack 100h
.data
.code
main proc 
    
    rept:
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    inc cl
    cmp bl," "
    
    JNE rept
    add cl,15
    mov ah,2
    mov dl,cl
    int 21h
    exit:
    
    main endp
end main

