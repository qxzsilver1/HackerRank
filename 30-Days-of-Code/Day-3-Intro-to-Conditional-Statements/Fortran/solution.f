INTEGER :: num, n

READ *, num
n = num

IF (MOD(n, 2)==1) THEN
    WRITE(*,'(a)') "Weird"
ELSE IF (n >= 6 .AND. n <= 20) THEN
    WRITE(*,'(a)') "Weird"
ELSE
    WRITE(*,'(a)') "Not Weird"
END IF

END
