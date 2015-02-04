(define (sumcube a b)
  (if (> a b)
      0
      (+ (* a a a)(sumcube(+ a 1) b))))