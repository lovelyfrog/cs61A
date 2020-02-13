(define (sum lst)
	(define (sum-tail exist-lst exist-sum)
		(if (null? exist-lst)
			exist-sum
			(sum-tail (cdr exist-lst) (+ exist-sum (car exist-lst)))
			)
		)
	(sum-tail lst 0)
	)

(define (fib n)
	(define (fib-sofar cur last last-last)
		(if (<= n 1) 
			n
			(if (= cur n) (+ last last-last)
				(fib-sofar (+ cur 1) (+ last last-last) last))
			)
		)

	(fib-sofar 2 0 1)
)

(define (reverse lst)
	(define (reverse-sofar lst lst-sofar)
		(if (null? lst)
			lst-sofar
			(reverse-sofar (cdr lst) (cons (car lst) lst-sofar))
			)
		)
	(reverse-sofar lst nil)
	)

(define (append a b)
	(define (rev-append-tail a b)
		(if (null? a)
			b
			(rev-append-tail (cdr a) (cons (car a) b))
			)
		)
	(rev-append-tail (reverse a) b)
)

(define (cons-all first rests)
  (define (inner ans inner-rests)
    (if (null? inner-rests)
      ans
      (inner (append ans (cons (cons first (car inner-rests)) nil)) (cdr inner-rests))
    )
  (inner () rests)
  )
)




