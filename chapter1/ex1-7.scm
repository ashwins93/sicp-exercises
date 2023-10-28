(define (abs x)
  (if (< x 0) (- x) x))

(define (avg x y)
  (/ (+ x y) 2))

(define (square x) (* x  x))

(define (improve guess x)
  (avg guess (/ x guess)))

(define (good-enough? prev guess x)
  (< (/ (abs (- prev guess)) guess) 0.001))

(define (sqrt-iter prev guess x)
  (if (good-enough? prev guess x)
    guess
    (sqrt-iter guess (improve guess x) x)))

(define (sqrt x) (sqrt-iter 0.0 1.0 x))
