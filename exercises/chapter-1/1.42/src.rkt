; Exercise 1.42.

#lang racket

(require "../../lib/lib.rkt")

(define (compose f g)
  (lambda (x) (f (g x))))

((compose square inc) 6)