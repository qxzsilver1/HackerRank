        IDENTIFICATION DIVISION.
        PROGRAM-ID. ACCEPT_IT.

        ENVIRONMENT DIVISION.
        INPUT-OUTPUT SECTION.
        FILE-CONTROL.

            SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

        DATA DIVISION.
         FILE SECTION.
         FD SYSIN.
         01 input_line PIC 9(36).
         88 EOF VALUE HIGH-VALUES.
      
         WORKING-STORAGE SECTION.
         01 variable_name PIC 9(2) VALUE ZERO.


        PROCEDURE DIVISION.
         OPEN INPUT SYSIN
         READ SYSIN
             AT END SET EOF TO TRUE
         END-READ
         PERFORM UNTIL EOF
             DISPLAY "THE NUMBER IS " input_line
             READ SYSIN
                 AT END SET EOF TO TRUE
             END-READ
         END-PERFORM
         CLOSE SYSIN
         STOP RUN.
        END PROGRAM ACCEPT_IT.
