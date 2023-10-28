(define (abs x)
  (if (< x 0) (- x) x))

(define (avg x y)
  (/ (+ x y) 2))

(define (square x) (* x  x))

(define (improve guess x)
  (/ 
    (+ 
      (/ x (square guess))
      (* 2 guess))
    3))

(define (good-enough? prev guess x)
  (< (/ (abs (- prev guess)) guess) 0.001))

(define (cubert-iter prev guess x)
  (if (good-enough? prev guess x)
    guess
    (cubert-iter guess (improve guess x) x)))

(define (cubert x) (cubert-iter 0.0 1.0 x))
