
      IDENTIFICATION DIVISION.
      PROGRAM-ID. HARRY_LASERS.
      
      ENVIRONMENT DIVISION.
      INPUT-OUTPUT SECTION. 
      FILE-CONTROL. 
      SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL. 
      
      DATA DIVISION.
        FILE SECTION.
        FD SYSIN.
      
        01 ln PIC X(255).
            88 EOF VALUE HIGH-VALUES.
                WORKING-STORAGE SECTION.
        01 NUM_TESTS    PIC 9(3).
        01 X1           PIC S9(6).
        01 Y1           PIC S9(6).
        01 X2           PIC S9(6).
        01 Y2           PIC S9(6).
        01 XM           PIC S9(6).
        01 YM           PIC S9(6).
        01 T            PIC S9(6).
        01 ABC          PIC S9(36).
        01 ABD          PIC S9(36).
        01 CDA          PIC S9(36).
        01 CDB          PIC S9(36).
        01 TEMP         PIC S9(5).
      
      PROCEDURE DIVISION.
      OPEN INPUT SYSIN
      READ SYSIN
      AT END SET EOF TO TRUE
      END-READ
      MOVE ln TO T     
          PERFORM INTERSECT 1 TIMES
          EXIT.    
          INTERSECT.

           PERFORM T TIMES 
           READ SYSIN
             AT END SET EOF TO TRUE
           END-READ

           UNSTRING ln
          DELIMITED BY ALL SPACE
          INTO X1
               Y1
               X2
               Y2
               XM
               YM


          COMPUTE ABC = XM * Y1 - YM * X1
          COMPUTE ABD = XM * Y2 - YM * X2
          COMPUTE CDA = (X2 - X1) * (-Y1) - (Y2 - Y1) * (-X1)
          COMPUTE CDB = (X2 - X1) * (YM - Y1) - (Y2 - Y1) * (XM - X1)

          IF (((ABC IS > 0 AND ABD IS < 0) OR (ABC IS < 0 AND ABD IS > 0))
          AND ((CDA IS > 0 AND CDB IS < 0) OR (CDA IS < 0 AND CDB IS > 0 )))
                DISPLAY "NO"


          ELSE
            IF ((ABC IS= 0) AND ((0 IS <= X1 OR XM IS<= X1) AND
          (X1 IS<= 0 OR X1 IS<= XM)
            AND (0 IS<= Y1 OR YM IS<= Y1) AND (Y1 IS<= 0 OR Y1 IS<= YM)))
                DISPLAY "NO"

          ELSE


            IF ((ABD IS = 0) AND ((0 IS <= X2 OR XM <= X2) AND
          (X2 <= 0 OR X2 <= XM)
            AND (0 <= Y2 OR YM <= Y2) AND (Y2 <= 0 OR Y2 <= YM)))
                DISPLAY "NO"

          ELSE


            IF (( CDA IS = 0) AND ((X1 <= 0 OR X2 <= 0) AND
          (0 <= X1 OR 0 <= X2) AND
            (Y1 <= 0 OR Y2 <= 0) AND (0 <= Y1 OR 0 <= Y2)))
                DISPLAY "NO"

          ELSE


            IF ((CDB IS = 0) AND ((X1 <= XM OR X2 <=XM) AND
          (XM <= X1 OR XM <= X2) AND
            (Y1 <= YM OR Y2 <= YM) AND (YM <= Y1 OR YM <= Y2)))
                DISPLAY "NO"

           ELSE


            DISPLAY "YES"
             END-PERFORM

            CLOSE SYSIN
            STOP RUN.
      
