(define-macro (switch expr cases)
    (if (eq? (eval expr) (car (car cases)))
    	(cons 'eval (cdr (car cases)))
    	`(switch ,expr ,(cdr cases))
    	)
    
)

(define (flatmap f x)
  'YOUR-CODE-HERE)

(define (expand lst)
  'YOUR-CODE-HERE)

(define (interpret instr dist)
  'YOUR-CODE-HERE)

(define (apply-many n f x)
  (if (zero? n)
      x
      (apply-many (- n 1) f (f x))))

(define (dragon n d)
  (interpret (apply-many n expand '(f x)) d))