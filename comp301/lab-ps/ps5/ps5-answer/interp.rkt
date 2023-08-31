#lang eopl

;; interpreter for the LET language.  The \commentboxes are the
;; latex code for inserting the rules into the code in the book.
;; These are too complicated to put here, see the text, sorry.

(require "lang.rkt")
(require "data-structures.rkt")
(require "environments.rkt")

(provide value-of-program value-of)

;;;;;;;;;;;;;;;; the interpreter ;;;;;;;;;;;;;;;;

;; value-of-program : Program -> ExpVal
;; Page: 71
(define value-of-program 
  (lambda (pgm)
    (cases program pgm
      (a-program (exp1)
                 (value-of exp1 (init-env))))))

;; value-of : Exp * Env -> ExpVal
;; Page: 71
(define value-of
  (lambda (exp env)
    (cases expression exp
      
      ;;\commentbox{ (value-of (const-exp \n{}) \r) = \n{}}
      (const-exp (num) (num-val num))
      
      ;;\commentbox{ (value-of (var-exp \x{}) \r) = (apply-env \r \x{})}
      (var-exp (var) (apply-env env var))
      
      ;;\commentbox{\diffspec}
      (diff-exp (exp1 exp2)
                (let ((val1 (value-of exp1 env))
                      (val2 (value-of exp2 env)))
                  (let ((num1 (expval->num val1))
                        (num2 (expval->num val2)))
                    (num-val
                     (- num1 num2)))))
      
      ;;\commentbox{\zerotestspec}
      (zero?-exp (exp1)
                 (let ((val1 (value-of exp1 env)))
                   (let ((num1 (expval->num val1)))
                     (if (zero? num1)
                         (bool-val #t)
                         (bool-val #f)))))
      
      ;;\commentbox{\ma{\theifspec}}
      (if-exp (exp1 exp2 exp3)
              (let ((val1 (value-of exp1 env)))
                (if (expval->bool val1)
                    (value-of exp2 env)
                    (value-of exp3 env))))
      
      ;;\commentbox{\ma{\theletspecsplit}}
      (let-exp (var exp1 body)       
               (let ((val1 (value-of exp1 env)))
                 (value-of body
                           (extend-env var val1 env))))

      ;;;;;;;;;;;;;;;;;;;;;;;;;; PS 6 ;;;;;;;;;;;;;;;;;;
      ;;;;; implement value-of for minus, double, gcd and prime? operations ;;;;;
      
      ;;\commentbox{\minusexp}

      (minus-exp (n)
                 (let ((val1 (expval->num (value-of n env))))
                  (num-val (- 0 val1))))

      (double-exp (n)
                (let ((val1 (expval->num (value-of n env))))
                  (num-val (* 2 val1))))

      (gcd-exp (exp1 exp2)
               (let ((n1 (expval->num (value-of exp1 env)))
                     (n2 (expval->num (value-of exp2 env))))
                  (num-val (gcd-help n1 n2 (min n1 n2)))))

      (prime?-exp (exp1)
               (let ((n1 (expval->num (value-of exp1 env))))
                  (bool-val (p?-helper n1 2))))

      )))
      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      ;;;;; write your helper procedures here;;;;;;;;;;;
      (define (gcd-help n1 n2 res) 
                  (if (and (= (remainder n1 res) 0) (= (remainder n2 res) 0))
                      res
                      (gcd-help n1 n2 (- res 1))))
	(define (p?-helper x y)
	    (cond
		((= x y) #t)
		((<= x 1) #f)
		((and (= (remainder x y) 0) (not (= x y))) #f)
		(else (p?-helper x (+ y 1)))))
