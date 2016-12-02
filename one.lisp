(defvar *x* 0)
(defvar *y* 0)
(defvar *z* 0)
(defvar *input* "L1, R3, R1, L5, L2, L5, R4, L2, R2, R2, L2, R1, L5, R3, L4, L1, L2, R3, R5, L2, R5, L1, R2, L5, R4, R2, R2, L1, L1, R1, L3, L1, R1, L3, R5, R3, R3, L4, R4, L2, L4, R1, R1, L193, R2, L1, R54, R1, L1, R71, L4, R3, R191, R3, R2, L4, R3, R2, L2, L4, L5, R4, R1, L2, L2, L3, L2, L1, R4, R1, R5, R3, L5, R3, R4, L2, R3, L1, L3, L3, L5, L1, L3, L3, L1, R3, L3, L2, R1, L3, L1, R5, R4, R3, R2, R3, L1, L2, R4, L3, R1, L1, L1, R5, R2, R4, R5, L1, L1, R1, L2, L4, R3, L1, L3, R5, R4, R3, R3, L2, R2, L1, R4, R2, L3, L4, L2, R2, R2, L4, R3, R5, L2, R2, R4, R5, L2, L3, L2, R5, L4, L2, R3, L5, R2, L1, R1, R3, R3, L5, L2, L2, R5")

(defun trim (text) (remove #\, (remove #\space text)))

(defun ssearch (needle haystack)
  (when (integerp (search needle haystack))
    (return-from ssearch (search needle haystack)))
    (return-from ssearch 1))

(defun parse (text)
(when (= (length text) 0) (return-from parse ""))
  (let ((len (+ 1 (min (ssearch "R" (subseq text 1)) (ssearch "L" (subseq text 1))))))
    (move (subseq text 0 len))
      (parse (subseq text len))))


(defun move (text) (format t "~a~%" text)

)
