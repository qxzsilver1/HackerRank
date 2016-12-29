(defvar num (parse-integer (string-trim '(#\Space #\Tab #\Newline) (read-line))))


(cond ((= (rem num 2) 1) (princ "Weird")) 
      ((and (>= num 6) (<= num 20)) (princ "Weird"))
      (t (princ "Not Weird")))
