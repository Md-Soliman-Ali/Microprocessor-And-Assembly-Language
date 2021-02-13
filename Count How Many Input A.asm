.MODEL SMALL
.STACK
.DATA 
.CODE

  MAIN PROC
    
    MOV CL,0
    ADD CL,48
    MOV AH,1  
   
    COUNT:
    INT 21H
     
    CMP AL,0DH
    JE PRINT
    CMP AL,"a" 
    JE X
    CMP AL,0DH  
    JNE COUNT 
    
    X:
    INC CL
    JMP COUNT
      
    PRINT:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
    MOV AH,2
    MOV DL,CL
    INT 21H 
    JMP exit
    exit:             
     
     MAIN ENDP
  END MAIN