(RESTART 1)
; For interpreter sake

(define x 2)
(+ x 2)

(define (square x)
  (* x x))

(square 100)

(define (sum-of-squares x y)
  (+ (square x)
     (square y)))

(sum-of-squares 2 3)
(sum-of-squares (square 10) (square 1000))

(define (abs x)
  (cond ((> x 0) x)
	((= x 0) 0)
	((< x 0) (- x))))

(abs -10)

(define (abs x)
  (cond ((< x 0) (- x))
	(else x)))

(abs -10)
(abs 0)
(abs 10)

(define (greatest a b)
  (if (> a b)
      a
      b))

(greatest 1 2)
(greatest 10 1)

(define (greatest3 a b c)
  (cond ((and (> a b) (> a c)) a)
	((and (> b a) (> b c)) b)
	((and (> c a) (> c b)) c)))

(greatest3 1 2 3)
(greatest3 10 1 2)
(greatest3 1 10 -1)

(not 2)
(not 0)
(not (< 3 2))
(not #t)
(not #f)

(= 1 2)

; Exercise 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

; Exercise 1.3
; take 2 largest nos of 3 given nos and find the sum of their squares
(define (square x) 
  (* x x))

(define (sum-of-squares x y)
  (+ (square x)
     (square y)))

(define (largest-of-3 a b c)
  (cond ((> a b) 
	 (cond ((> a c) a)
	       (else c)))
	(else (cond ((> b c) b)
		    (else c)))))

(largest-of-3 1 2 3)
(largest-of-3 3 2 1)
(largest-of-3 4 2 5)
(largest-of-3 1 4 5)
(largest-of-3 1 6 5)

(define (2nd-largest-of-3 a b c)
  (define large (largest-of-3 a b c))
  (cond ((= a large)
	 (if (> b c) b c))
	((= b large)
	 (if (> a c) a c))
	((= c large)
	 (if (> a b) a b))))

(2nd-largest-of-3 1 2 3)
(2nd-largest-of-3 3 5 2)
(2nd-largest-of-3 11 1 2)

(define (sum-of-squares-2-largest-nos a b c)
  (define large (largest-of-3 a b c))
  (define 2nd-large (2nd-largest-of-3 a b c))
  (sum-of-squares large 2nd-large))

(sum-of-squares-2-largest-nos 1 2 3)

(define add +)
(add 2 3)

(define square (lambda (x) (* x x)))
(square 2)
square
+
