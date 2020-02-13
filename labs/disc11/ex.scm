(define-macro (make-lambda expr)
	`(lambda () ,expr))

(define (has-even? s)
	(cond ((null? s) #f)
		  ((even? (car s)) #t)
		  (else (has-even? (cdr-stream s)))))

(define (naturals n)
	(cons-stream n (naturals (+ n 1))))

(define nat (naturals 0))

(define (map-stream f s)
	(if (null? s)
		()
		(cons-stream (f (car s)) (map-stream f (cdr-stream s)))
	)
)

(define (slice s start end)
	(define (slice-inside s n)
		(if (null? s)
			()
			(if (< n start)
				(slice-inside (cdr-stream s) (+ n 1))
				(if (= n end)
					()
					(cons (car s) (slice-inside (cdr-stream s) (+ n 1)))
				)
			)
		)
	)
	(slice-inside s 0)
)

(define (combine-with f xs ys)
	(if (or (null? xs) (null? ys))
	nil
	(cons-stream
		(f (car xs) (car ys))
		(combine-with f (cdr-stream xs) (cdr-stream ys)))))

(define factorials (cons-stream 1 (combine-with * (cdr-stream nat) factorials)))

(define fibs (cons-stream 0 (cons-stream 1 (combine-with + (cdr-stream fibs) fibs))))

(define (exp n)
	(define x-n (cons-stream n (combine-with * nat x-n)))
	(cons-stream 1 (combine-with (lambda (x y) ()) (cdr-stream nat) (exp n)))
)
