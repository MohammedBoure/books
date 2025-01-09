            MOV Al, 'a'
casea:      CMP AL,'a'
            JNE caseb
            ;<instruction>
            MOV BL,'a'
            JMP finCase      
caseb:      CMP AL,'b'
            JNE casec
            ;<instruction>
            MOV BL,'b'
            JMP finCase  
casec:      CMP AL,'c'
            JNE default
            ;<instruction>
            MOV BL,'c'
            JMP finCase              
default:    MOV BL,'d'   
finCase:    RET