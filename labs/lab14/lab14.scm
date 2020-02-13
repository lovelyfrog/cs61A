; Lab 14: Final Review

(define (compose-all funcs)
  (define (compose x inner-funcs)
  	(if (null? inner-funcs)
  		x
  		(compose ((car inner-funcs) x) (cdr inner-funcs))
  		)
  	)
  (define (f x)
  	(compose x funcs)
  	)
  f
)

(define (has-cycle? s)
  (define (pair-tracker seen-so-far curr)
    (cond ((null? curr) #f)
          ((and (contains? seen-so-far curr) (eq? curr s)) #t)
          (else (pair-tracker (append seen-so-far (list (car s))) (cdr-stream curr)))
    )
    	)
  (pair-tracker (list (car s)) (cdr-stream s))
)

(define (contains? lst s)
  (define (inner lst s)
  	(if (null? lst)
  		#t
  		(if (eq? (car lst) (car s))
  			(inner (cdr lst) (cdr-stream s))
  			#f
  			)
  				)
  		)
  (inner lst s)
)

