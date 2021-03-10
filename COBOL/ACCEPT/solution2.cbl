       IDENTIFICATION DIVISION.

       PROGRAM-ID. ACCEPT_IT.
       
       ENVIRONMENT DIVISION.
      
       DATA DIVISION.
       
      		WORKING-STORAGE SECTION.
      		01 variable_name PIC 9(2) .


       PROCEDURE DIVISION.
            ACCEPT variable_name.

            IF  variable_name EQUAL 3
                MOVE 32       TO variable_name
            ELSE 
                MOVE 23       TO variable_name
            END-IF.

            DISPLAY "THE NUMBER IS " variable_name.      

            STOP RUN.
      
       END PROGRAM ACCEPT_IT.
