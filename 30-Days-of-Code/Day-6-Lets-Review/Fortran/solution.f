INTEGER :: num
CHARACTER(10000) :: line

READ *, num

iloop: do i = 1, num
    READ (*,'(a)') line
    WRITE (*, '(a)') line
    
    !jloop: do j = 1,
    !end do jloop
end do iloop
