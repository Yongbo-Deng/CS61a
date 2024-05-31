(define (my-filter pred s) 
    (if (null? s)
        nil
    (if (pred (car s))
        (cons (car s) (my-filter pred (cdr s)))
        (my-filter pred (cdr s))
    )    
    )
)

(define (interleave lst1 lst2) 
    (cond
    ((null? lst1)
        lst2
    )
    ((null? lst2)
        lst1
    )
    (else
        (cons (car lst1) (cons (car lst2) (interleave (cdr lst1) (cdr lst2))))
    )
    )
)

(define (accumulate joiner start n term)
    (if (= n 1)
        (joiner start (term n))
        (joiner (term n) (accumulate joiner start (- n 1) term))
    )
)
  

(define (no-repeats lst) 
    (define (helper first rest)
        (if (null? rest) 
            #f
            (if (= first (car rest))
                #t
                (helper first (cdr rest))
            )
        )
    )

    (if (null? lst)
        nil
        (if (helper (car lst) (no-repeats (cdr lst)))
            (no-repeats (cdr lst))
            (cons (car lst) (no-repeats (cdr lst)))
        )
    )
)
