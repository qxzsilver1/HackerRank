INTEGER :: num

READ *, num

do 10 i = 1, 10
    PRINT 100, num, i, num*i
    100 FORMAT (I0, " x ", I0, " = ", I0)
10 continue

END
