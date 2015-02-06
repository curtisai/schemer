;Ben Bitdiddle has invented a test to determine whether the
;imterpreter he is faced with is using applicative-order
;evaluation or normal-order evaluation. He defines the 
;following two procedures:

(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))
(test 0 (p))

;What behavior will Ben observe with an interpreter that uses
;applicative-order evaluation? What behavior will he observe
;with an interpreter that uses normal-order evalutaion?

;ANS: Since the funcation p just recursively call itself with
;no way to terminate, the test function will execute forever
;to find the value of its second argument. On the other hand,
;the condition in if statement will be true, and the value of 
;y will never get a chance to evaluate, so in normal order, the
;result of (test 0 (p)) will be 0;