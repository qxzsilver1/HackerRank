(let ((n (read)))
     (loop for i from 1 to 10
           do (format t "~a x ~a = ~a~%" n i (* n i))))
