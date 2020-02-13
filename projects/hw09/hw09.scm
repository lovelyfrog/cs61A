
; Tail recursion

(define (replicate x n)
  (define (replicate-tail ans cur-n)
    (if (= cur-n n)
      ans
      (replicate-tail (cons x ans) (+ cur-n 1)))
    )
  (replicate-tail nil 0)
  )

(define (accumulate combiner start n term)
  (define (inner cur-acc cur-n)
    (if (= cur-n (+ n 1))
      cur-acc
      (inner (combiner cur-acc (term cur-n)) (+ cur-n 1))
      )
    )
  (inner start 1)
)

(define (accumulate-tail combiner start n term)
  (define (inner cur-acc cur-n)
    (if (= cur-n (+ n 1))
      cur-acc
      (inner (combiner cur-acc (term cur-n)) (+ cur-n 1))
      )
    )
  (inner start 1)
)

; Streams

(define (map-stream f s)
    (if (null? s)
    	nil
    	(cons-stream (f (car s)) (map-stream f (cdr-stream s)))))

(define multiples-of-three
  (cons-stream 3 (map-stream (lambda (x) (+ x 3)) multiples-of-three))
)


(define (nondecreastream s)
    (define (first-nds curstream s)
      (if (null? s)
        (cons-stream curstream nil)
        (if (null? curstream)
          (first-nds (cons (car s) nil) (cdr-stream s))
          (if (< (car curstream) (car s))
            (first-nds (append curstream  (cons (car s) nil)) (cdr-stream s))
            (cons-stream curstream  (first-nds nil s))
          )
        )
      )
    )
    (first-nds nil s)
)


(define finite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 3
                (cons-stream 1
                    (cons-stream 2
                        (cons-stream 2
                            (cons-stream 1 nil))))))))

(define infinite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 2
                infinite-test-stream))))