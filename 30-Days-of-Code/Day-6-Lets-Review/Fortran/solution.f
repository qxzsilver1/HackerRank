INTEGER :: num
CHARACTER(10000) :: line
CHARACTER(:),ALLOCATABLE :: firstHalf, secondHalf
CHARACTER(10001) :: output

READ *, num

iloop: do i = 1, num
    READ (*,'(a)') line
    !WRITE (*, '(a)') TRIM(line)
    
    jloop: do j = 1, LEN_TRIM(line)
        IF (MOD(j, 2)==1) THEN
            firstHalf = firstHalf // line(j:j)
            !PRINT *, firstHalf
        ELSE
            secondHalf = TRIM(secondHalf) // line(j:j)
            !PRINT *, secondHalf
        ENDIF
    end do jloop
    
    output = TRIM(firstHalf) // " " // secondHalf
    
    WRITE(*,'(a)') TRIM(output)
    
    line = ""
    firstHalf = ""
    secondHalf = ""
    
end do iloop

end
