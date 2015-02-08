(define (factorial n)
  (define (fact-iter product count)
    (if (> counter n)
        product
        (factor-iter (* counter product)
          (+ counter 1)
          n)))
  (fact-iter 1 1))

(define (con-factorial n)
  (if (= n 1)
      1
      (* n (con-factorial (- n 1)))))