(define (repeatedly-cube n x)
    (if (zero? n)
        x
        (let
            ((y (repeatedly-cube (- n 1) x)))
            (* y y y))))


(define-macro (def func bindings body)
    
    `(define ,(cons func bindings) ,body)

)

(define (cons-all first rests)
  (define (inner ans inner-rests)
    (if (null? inner-rests)
      ans
      (inner (append ans (cons (cons first (car inner-rests)) nil)) (cdr inner-rests))
    )
  (inner () rests)
  )