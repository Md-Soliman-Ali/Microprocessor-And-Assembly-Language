.model small
.stack 100h
.data
.code
main proc 

    
   mov ah,1
   int 21h
   mov bl,al
 
   cmp bl,"`"
   JG L1
   JMP exit
   
   L1:
   cmp bl,"{"
   JL L2
   JMP exit
   
   L2:
   mov dl,bl
   mov ah,2
   int 21h
   exit:
   
    main endp
end main


