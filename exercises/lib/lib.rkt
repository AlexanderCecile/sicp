(module lib racket
  (provide inc dec square)

  (define (inc x)
    (+ x 1))

  (define (dec x)
    (- x 1))
  
  (define (square x)
    (* x x)))