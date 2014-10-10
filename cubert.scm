(RESTART 1)
; for interpreter

(define (cubert x)
  (define (cube a)
    (* a a a))
  (define (square a)
    (* a a))
  (define (improve guess)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3.0))
  (define (is-good-enough? guess)
    (< (abs (- (cube guess) x)) 0.001))
  (define (try guess)
    (if (is-good-enough? guess) 
	guess
	(try (improve guess))))
  (try 1))

(cubert 64)
