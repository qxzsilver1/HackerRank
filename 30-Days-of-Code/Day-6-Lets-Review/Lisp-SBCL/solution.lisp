(defun make-str (len)
  (make-array len :element-type 'character :fill-pointer 0))

(defun string-split (s)
  (let* ((len (length s)) (firstHalf (make-str len)) (secondHalf (make-str len)))
    (dotimes (i len)
      (let ((c (char s i)))
        (if (= (mod i 2) 0)
          (format firstHalf "~c" c)
          (format secondHalf "~c" c))))
  (format t "~a ~a~%" firstHalf secondHalf)))

(defparameter *n* (read))

(dotimes (i *n*) (string-split (read-line)))
