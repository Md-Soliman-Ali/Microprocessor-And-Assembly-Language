.stack 100h
.model small
.data
.code proc
    
    mov ah,1
    int 21h
    mov bl,al 
    
    mov ah,1
    int 21h
    mov cl,al
    
    cmp bl,cl
    jl gr 
        
    mov ah,2
    mov dl,0dh
    int 21h
    mov ah,2
    mov dl,0ah
    int 21h   
    
    mov ah,2
    mov dl,cl
    int 21h 
    
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit:
    
   gr:
   mov ah,2
   mov dl,bl
   int 21h
   mov ah,2
   mov dl,cl
   int 21h 
   exit:



