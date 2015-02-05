(define (count sent)
  (if (empty? sent)
      0
      (+ 1 (count (bf sent)))))

(define (counti sent)
  (define (iter wds result)
    (if (empty? wds)
        result
        (iter (bf wds)(+1 result))))
  (iter sent 0))s