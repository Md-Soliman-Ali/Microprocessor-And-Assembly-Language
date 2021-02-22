.model small
.stack 100h
.data
        msg1 db " even$"
        msg2 db " odd$" 
        msg3 db " wrong input !!!!! $" 
     
.code
main proc 
    
    mov ax,@data
   mov ds,ax  
    
   mov ah,1
   int 21h
   mov bl,al
    
   cmp bl,"1"
   JE L1
   cmp bl,"3"
   JE L1
    
   cmp bl,"2"
   JE L2
   cmp bl,"4"
   JE L2 
   
   lea dx,msg3
   mov ah,9
   int 21h
   JMP exit:
   
   
   L1:
   lea dx,msg2
   mov ah,9
   int 21h
   JMP exit
   
   L2:
   lea dx,msg1
   mov ah,9
   int 21h
   exit:
    
    main endp
end main



