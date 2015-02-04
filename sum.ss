(define (sum fn a b)
  (if (< a b)
      0
      (+ (fn a) (sum fn (+ a 1) b ))))

(define (square x)
  (* x x ))

(define (cube x)
  (* x x x))