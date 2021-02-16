.model small
.stack 100h
.data
.code
main proc
    
  mov ah,1
  int 21h
  mov bl,al
  sub al,48
  
  Loop: 
        mov cx,0
        mov cl,al
        mov ah,2
        mov dl,"*"
        
        top:
        int 21h
        Loop top
        exit:
        
        main endp
end main