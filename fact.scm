(RESTART 1)
; For interpreter

(define (factorial n)
  (define (fact-iter current_product counter)
    (if (> counter n)
	current_product
	(fact-iter (* current_product counter) 
		   (+ counter 1))))
  (fact-iter 1 1))

(factorial 6)
(factorial 10)
