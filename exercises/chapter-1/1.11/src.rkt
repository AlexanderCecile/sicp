#lang sicp

(define (f-recur n)
  (if (< n 3) n
      (+
       (f-recur (- n 1))
       (* 2 (f-recur (- n 2)))
       (* 3 (f-recur (- n 3))))))

#| a comment |#

(define (f-iter n)
  796)

(display (= (f-recur 9) (f-iter 9) 796))
(newline)
