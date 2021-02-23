.model small
.stack 100h
.data
     msg1 db " is wrong input !!!!! $"
.code
main proc 
    
 mov ax,@data
   mov ds,ax  
    
   mov ah,1
   int 21h
   mov bl,al
 
   cmp bl,"/"
   JG L1
   
   lea dx,msg1
   mov ah,9
   int 21h
   JMP exit
   
   L1:
   cmp bl,":"
   JL L2
   lea dx,msg1
   mov ah,9
   int 21h  
   JMP exit
   
   L2:
   mov ah,2
   mov dl,bl
   int 21h
   exit:
   
    main endp
end main



