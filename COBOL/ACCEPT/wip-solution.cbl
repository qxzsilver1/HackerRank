       IDENTIFICATION DIVISION.

       PROGRAM-ID. ACCEPT_IT.
       
       ENVIRONMENT DIVISION.
      
       DATA DIVISION.
       
            WORKING-STORAGE SECTION.
            01 variable_name PIC X(2) .
            01 variable_char_cnt PIC 9(2).
            01 var_num_two PIC 9(2).
            01 var_num_three PIC 9(2).
            01 RES PIC X(2).
    

       PROCEDURE DIVISION.
      
            ACCEPT variable_name.
      *>           INSPECT variable_name TALLYING variable_char_cnt FOR ALL CHARACTERS.    
      *> DISPLAY "variable_count : " variable_char_cnt.
      

      *>          INSPECT variable_name TALLYING var_num_two FOR ALL 2.
      *>          DISPLAY "2_count : " var_num_two.
      

      *>          INSPECT variable_name TALLYING var_num_three FOR ALL 3.
      *>          DISPLAY "3_count : " var_num_three.
      
            INSPECT variable_name REPLACING ALL 0 BY 2.
      *>       MOVE FUNCTION REVERSE(variable_name) TO RES.
      
            DISPLAY "THE NUMBER IS ",variable_name.
            STOP RUN.
      
       END PROGRAM ACCEPT_IT.
