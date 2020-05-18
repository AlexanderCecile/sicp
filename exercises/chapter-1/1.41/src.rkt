; Exercise 1.41.

#lang racket

(require "../../lib/lib.rkt")

(define (double f)
  (lambda (x) (f (f x))))

(((double (double double)) inc) 5)


