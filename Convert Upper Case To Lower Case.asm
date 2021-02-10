.model small
.stack 100h
.data
       msg1 db "upper form: $"
       msg2 db "lower form: $" 
     
.code
main proc 
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h 
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2 
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h 
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,2
    add bl,32
    mov dl,bl
    int 21h  
    
    main endp
end main



