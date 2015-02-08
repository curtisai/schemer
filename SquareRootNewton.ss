;Square Roots by Newton's Method

(define (sqrt_iter guess x)
  (if (good_enough? guess x)
      guess
      (sqrt_iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x Y) 2))

(define (good_enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))