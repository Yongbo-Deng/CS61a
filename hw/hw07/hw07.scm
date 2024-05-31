(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ascending? asc-lst) (if (null? (cdr asc-lst)) #t 
                                 (and (<= (car asc-lst) (cadr asc-lst)) (ascending? (cdr asc-lst)))))

(define (square n) (* n n))

(define (pow base exp) (if (= 1 exp) base 
                           (if (even? exp) (pow (square base) (/ exp 2)) 
                           (* base (pow (square base) (/ (- exp 1) 2))))))
