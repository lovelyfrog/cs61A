(define (partial-sums stream)
  (define (helper sum inner-stream)
  	(if (null? inner-stream)
  		nil
  		(cons-stream (+ (car inner-stream) sum) (helper (+ (car inner-stream) sum) (cdr-stream inner-stream)))
  		)
  	)
  (helper 0 stream)
)