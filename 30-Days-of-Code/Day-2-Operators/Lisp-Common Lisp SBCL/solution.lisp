(defvar mealCost (string-trim '(#\Space #\Tab #\Newline) (read-line)))
(defvar tipPercent (string-trim '(#\Space #\Tab #\Newline) (read-line)))
(defvar taxPercent (string-trim '(#\Space #\Tab #\Newline) (read-line)))

(defun parse-float (s)
  (let ((readval (handler-case
                  (read-from-string s)
                  (sb-int:simple-reader-error nil)
                  (end-of-file nil))))
    (cond ((realp readval ) (+ readval 0.0))
          (t (error (concatenate 'string "not a float: " s))))))

(defvar tip (* (read-from-string mealCost) (/ (parse-integer tipPercent) 100.0)))
(defvar tax (* (read-from-string mealCost) (/ (parse-integer taxPercent) 100.0)))
(defvar totalCost (+ (read-from-string mealCost) tip tax))

(defvar roundedTotalCost (truncate (ffloor (+ 0.5 totalCost))))

(princ (concatenate 'string "The total meal cost is " (write-to-string roundedTotalCost) " dollars."))
