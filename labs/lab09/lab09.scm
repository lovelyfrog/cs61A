;; Scheme ;;

(define (over-or-under x y)
  (if (< x y)
    -1
    (if (= x y)
      0
      1
    )
  )
)

;;; Tests
(over-or-under 1 2)
; expect -1
(over-or-under 2 1)
; expect 1
(over-or-under 1 1)
; expect 0

(define (filter-lst f lst)
  (define (inner f lst)
    (if (null? lst)
      ()
      (if (f (car lst))
        (cons (car lst) (inner f (cdr lst)))
        (inner f (cdr lst))
      )
    )
  )
  (inner f lst)

)

;;; Tests
(define (even? x)
  (= (modulo x 2) 0))
(filter-lst even? '(0 1 1 2 3 5 8))
; expect (0 2 8)

(define (make-adder num)
  (define (adder x)
    (+ x num)
  )
  adder
)

;;; Tests
(define adder (make-adder 5))
(adder 8)
; expect 13

;; Extra questions

(define lst
  (list (cons 1 nil) 2 (list 3 4) 5)
)

(define (composed f g)
  (define (inner x)
    (f (g x))
    )
  inner
)

(define (remove item lst)
  (define (inner lst)
    (if (null? lst)
      ()
      (if (= (car lst) item)
        (inner (cdr lst))
        (cons (car lst) (inner (cdr lst)))
        )
      )
    )
  (inner lst)
)


;;; Tests
(remove 3 nil)
; expect ()
(remove 3 '(1 3 5))
; expect (1 5)
(remove 5 '(5 3 5 5 1 4 5 4))
; expect (3 1 4 4)

(define (no-repeats s)
  (define (inner s)
    (if (null? s)
      ()
      (cons (car s) (inner (filter-lst (lambda (x) (not (= x (car s)))) s)))
      )
    )

  (inner s)
)

(define (substitute s old new)
  (define (inner s)
    (if (null? s)
      ()
      (if (pair? (car s))
        (append (list (inner (car s))) (inner (cdr s)))
        (if (equal? (car s) old)
          (cons new (inner (cdr s)))
          (cons (car s) (inner (cdr s)))
          )
        )
    )
  )
  (inner s)
)


(define (sub-all s olds news)
  (define (inner s olds news)
    (if (not (null? olds))
      (inner (substitute s (car olds) (car news)) (cdr olds) (cdr news))
      s
      )
    )

  (inner s olds news)
)



