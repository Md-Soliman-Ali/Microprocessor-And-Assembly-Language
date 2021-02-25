.model small
.stack 100h
.data
        msg1 db " Y$"
        msg2 db " y$" 
.code
main proc 
    
   mov ax,@data
   mov ds,ax  
    
   mov ah,1
   int 21h
   mov bl,al
    
   cmp bl,"y"
   JE L1
 
   cmp bl,"Y"
   JE L2
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

