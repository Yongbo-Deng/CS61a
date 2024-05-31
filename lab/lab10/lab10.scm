(define (over-or-under num1 num2) 
    (if (< num1 num2) -1
    (if (= num1 num2) 0 1)
    )
)

(define (make-adder num) 
    (define(myfun n)
        (+ num n)
    )
    myfun
)

(define (composed f g) 
    (define (h x)
        (f (g x))
    )
    h
)

(define lst 
    (list (list 1) 2 (list 3 4) 5)
)

(define (duplicate lst) 
    (if (null? lst) nil 
        (cons (car lst) (cons (car lst) (duplicate (cdr lst))))
    )
)
