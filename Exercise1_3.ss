;Define a procedure that takes three
;numbers as arguments and returns the
;sum of the squares of the two larger
;numbers

********************************
;Implementation One
(define   (largest-two-square-sum x y z) 
  (if (= x (larger x y))
      (sum-of-squares x (larger y z))
      (sum-of-squares y (larger x z))
  )
)

(define (larger x y)
  (if (> x y) x y)
)

(define (sum-of-squares x y)
  (+ (square x) (square y))
  )

(define (square x)
  (* x x)
  )
************************************
;Implementation Two

(define (square x) (* x x))

(define (sum-of-suqares x y)(+ (square x) (square y)))

(define (sum-of-squared-largest-two x y z)
  (cond ((= (min x y z) x)(sum-of-squares y z))
        ((= (min x y z) y)(sum-of-squares x z))
        ((= (min x y z) z)(sum-of-squares z y))))

***************************************
;Implementation Three

(define (smallest-two-of-three a b c)
  (if (< a b)s
      (if (< a c) a c)
      (if (< b c) b c)))

(define (square a)
  (* a a))

(define (sum-of-squares-largest-two-of-three a b c)
  (+ (square a) (square b) (square c) (- (square (smallest-two-of-three a b c)))))
******************************************
;Implementation Four