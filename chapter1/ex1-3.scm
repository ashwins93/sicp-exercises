(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-largest x y z) 
  (cond 
    ((and (< x y) (< x z)) (sum-of-squares y z))
    ((and (< y x) (< y z)) (sum-of-squares x z))
    ((and (< z x) (< z y)) (sum-of-squares x y))))

(sum-largest 3 4 5)

(= (sum-largest 3 4 5) (sum-of-squares 4 5))