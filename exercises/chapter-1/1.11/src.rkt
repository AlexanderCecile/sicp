; Exercise 1.11.

#lang racket

(require "../../lib/lib.rkt")

(define (f-recur n)
  (if (< n 3) n
      (+
       (f-recur (- n 1))
       (* 2 (f-recur (- n 2)))
       (* 3 (f-recur (- n 3))))))

(define (f-iter n)
  (define (f-iter-helper a b c count)
    (if (< n 3) n
        (if (= (+ 3 count) n)
            (+ a (* 2 b) (* 3 c))
            (f-iter-helper (+ a (* 2 b) (* 3 c)) a b (+ count 1)))))
  (f-iter-helper 2 1 0 0))


(f-recur 9)
(f-iter 9)
