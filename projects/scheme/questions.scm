(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

; Some utility functions that you may find useful to implement.

(define (cons-all first rests)
  (define (inner ans inner-rests)
    (if (null? inner-rests)
      ans
      (inner (append ans (cons (cons first (car inner-rests)) nil)) (cdr inner-rests))
    )
  )
  (inner () rests)
)

(define (zip pairs)
  (define (inner ans rest-pairs)
    (if (null? rest-pairs)
      ans
      (inner (cons (append (car ans) (list (caar rest-pairs))) (cons (append (cadr ans) (cdar rest-pairs)) nil)) (cdr rest-pairs))
      )
    )
  (inner (list nil nil) pairs)
  )

;; Problem 16
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 16
  (define (inner ans i inner-s)
    (if (null? inner-s)
      ans
      (inner (append ans (cons (list i (car inner-s)) nil)) (+ i 1) (cdr inner-s))
      )
    )
  (inner () 0 s)
  )
  ; END PROBLEM 16

;; Problem 17
;; List all ways to make change for TOTAL with DENOMS
(define (list-change total denoms)
  ; BEGIN PROBLEM 17
  (define (inner inner-denoms inner-total)
    (if (= inner-total 0)
      (list nil)
      (if (null? inner-denoms)
        ()
        (if (<= (car inner-denoms) inner-total)
              (append (cons-all (car inner-denoms) (inner inner-denoms (- inner-total (car inner-denoms)))) 
                (inner (cdr inner-denoms) inner-total))
              (inner (cdr inner-denoms) inner-total)
          )
        )
      )
    )
  (inner denoms total)
  )
  ; END PROBLEM 17

;; Problem 18
;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         ; BEGIN PROBLEM 18
         expr
         ; END PROBLEM 18
         )
        ((quoted? expr)
         ; BEGIN PROBLEM 18
         expr
         ; END PROBLEM 18
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 18
           (append `(,form ,params) (let-to-lambda body))
           ; END PROBLEM 18
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 18
           (append `((lambda ,(car (zip values)) ,(let-to-lambda (car body)))) (map (lambda (x) (let-to-lambda x)) (cadr (zip values))))
           ; END PROBLEM 18
           ))
        (else
         ; BEGIN PROBLEM 18
         (map (lambda (x) (let-to-lambda x)) expr)
         ; END PROBLEM 18
         )))