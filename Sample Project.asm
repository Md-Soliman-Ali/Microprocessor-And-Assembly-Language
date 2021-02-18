.MODEL SMALL
.STACK 100H
.DATA    

MSG1 DB '                ..... WELCOME TO GROUP ALPHA FIRST QUIZ .....$'
MSG2 DB '                        Md.Soliman Ali (171-15-8572)$'
MSG3 DB '                        Tabassum Tanha (171-15-1282)$'
MSG0 DB '                        Sharmin Shammi (171-15-1281)$'
MSG4 DB '                        Rabin Islam Sabuz (171-15-1267)$'
MSG5 DB 'Press Enter For Playing Our Mind Game: $'
MSG6 DB 'Yess You did it,Now Your <<Level>> Is Rise Up!!!$'
MSG7 DB 'Wake Up & Refresh Your Mind !!! $'
MSG8 DB 'You have successfully completed your quiz.$'
MSG10 DB 'Press 1 to Re-attempt quiz & other keyword for Exit.$' 

QUES1 DB '1. What is the calling code of Bangladesh? $'
QUESANS1 DB '   a) +880    b) +966    c) +44    d)+86$'
QUES2 DB '2. What is the national tree of Bangladesh?$'
QUESANS2 DB '   a) Lichi Tree    b) Mango Tree    c) Banana Tree    d) Jackfruit Tree$'
QUES3 DB '3. Who is the chairman of DIU?$'
QUESANS3 DB '   a) Dr. Syed Akter Hossain b) Dr.S.M. Mahbub Ul Haque Majumder                   c) Md. Sabur Khan d) Dr.S.M. Aminul Haque$'
QUES4 DB '4. What is the International holiday?$'
QUESANS4 DB '   a) Friday    b) Sunday    c) Thrusday    d) Saturday$'
QUES5 DB '5. Which is the second country to recoginize Bangladesh?$'
QUESANS5 DB '   a) Bhutan    b) India    c) Nepal    d) Rasia$'

.CODE
MAIN PROC 
    
    MOV AX,@DATA
	MOV DS,AX
    
	LEA DX,MSG1
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
    MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG2
	MOV AH,9
	INT 21H
    
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG3
	MOV AH,9
	INT 21H
    
    MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H 
    
    LEA DX,MSG0
	MOV AH,9
	INT 21H
    
    MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG4
	MOV AH,9
	INT 21H
	
	START:
    MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
    MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG5
	MOV AH,9
	INT 21H
	
	MOV AH, 1
	INT 21H
	
	CMP AL, 0DH
	JE READY
	JNE START
	
	READY:
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,QUES1
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,QUESANS1
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	MOV AH, 1
	INT 21H
	CMP AL, 'a'  
	
	JE READY2
    JNE NOTREADY2
	
	READY2:
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG6
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
    LEA DX,QUES2
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,QUESANS2
	MOV AH,9
	INT 21H 
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	MOV AH, 1
	INT 21H
	
	CMP AL, 'b'
	JE READY3
	JNE NOTREADY3
	
	NOTREADY2:
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG7
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
    LEA DX,QUES2
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,QUESANS2
	MOV AH,9
	INT 21H  
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	MOV AH, 1
	INT 21H
	
	CMP AL, 'b'
	JE  READY3 
	JNE NOTREADY3
	
	READY3:
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG6
	MOV AH,9
	INT 21H

	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
     
    LEA DX,QUES3
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,QUESANS3
	MOV AH,9
	INT 21H  
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	MOV AH, 1
	INT 21H
	
	CMP AL, 'c'
	JE READY4
	JNE NOTREADY4
	
	NOTREADY3:
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG7
	MOV AH,9
	INT 21H

	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
    LEA DX,QUES3
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,QUESANS3
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	MOV AH, 1
	INT 21H
	
	CMP AL, 'c'
	JE READY4 
	JNE NOTREADY4
	
	READY4:
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG6
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
    LEA DX,QUES4
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,QUESANS4
	MOV AH,9
	INT 21H  
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	MOV AH, 1
	INT 21H
	
	CMP AL, 'b'
	JE READY5
	JNE NOTREADY5
	
	NOTREADY4:
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG7
	MOV AH,9
	INT 21H

	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H 
    
    LEA DX,QUES4
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,QUESANS4
	MOV AH,9
	INT 21H 
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	MOV AH, 1
	INT 21H
	
	CMP AL, 'b'
	JE READY5 
	JNE NOTREADY5
	
	READY5:
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG6
	MOV AH,9
	INT 21H

	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
    LEA DX,QUES5
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,QUESANS5
	MOV AH,9
	INT 21H  
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	MOV AH, 1
	INT 21H
	
	CMP AL, 'a'
	JE EXIT
	JNE EXIT
	
	NOTREADY5:
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG7
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
    LEA DX,QUES5
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,QUESANS5
	MOV AH,9
	INT 21H  
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	MOV AH, 1
	INT 21H
	
	CMP AL, 'a'
	JE EXIT 
	JNE NOTEXIT
	
	EXIT:
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H 
    
	LEA DX,MSG6
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG8
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	JMP EXIT2
	
	NOTEXIT:
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	LEA DX,MSG7
	MOV AH,9
	INT 21H
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
    MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
	  

    LEA DX,MSG8
	MOV AH,9
	INT 21H 
	
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
    MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    
	JMP EXIT2 
    	
	EXIT2: 
	LEA DX,MSG10
	MOV AH,9
	INT 21H
	
	MOV AH,1
	INT 21H
	
	CMP AL,'1'
	JE START 
	
	MAIN ENDP
END MAIN