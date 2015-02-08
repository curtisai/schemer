;Alyssa P. Hacker doesn't see why if needs to 
;be procided as a special form. "Why can't I 
;just defin it as an ordinary procedure in 
;terms of cond?" She asks. Alyssa's friend Eva
;Lu Ator claims this can indeed be done, and
;she defines a new version of if:

(define (new_if predicate then_clause else_clause)
  (cond (predicate then_clause)
        (else elseclasuse)))

;Eva demonstrates the program for Alyssa:

(new_if (= 2 3) 0 5)

(new_if (= 1 1) 0 5)

;Delighted, Alysse uses new_if to rewrite the
;square_root program:

(define (sqrt-iter guess x)
  (new-if (good_enough? guess x)
    guess
    (sqrt_iter (improve guess x) x)))

;What happens when Alyssa attempts to use
;this to compute square roots?

;*******************************
;In Scheme, if is a special form, not a function.
;So applicative order evaluation doesn't apply.
;But Alyssa's new_if is a function, that means 
;if it has recursive procedures as its arguments,
;then the recursion occurs before conds.