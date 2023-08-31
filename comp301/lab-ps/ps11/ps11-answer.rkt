#lang racket
(require racket/trace)

(define (fib x) (fib-c x (create-final-cont)))
; (define (fib2 x) (fib-c2 x (create-final-cont)))

;;;;;;;;;; PROBLEM 2 ;;;;;;;;;;;;;
; define create-final-cont here
(define create-final-cont
        (lambda () (lambda (y) y)))


; define fib-c here
; this is the fibonacci function with continuation passing
; it will be using create-fib-c x cont in its body

(define (fib-c x cont)
        (create-fib-c x cont))

; define create-fib-c here
; it creates the continuation for fibonacci
(define (create-fib-c x cont)
        (if (or (= x 0) (= x 1))
            (cont 1)
            (fib-c (- x 2) 
              (lambda (y)
                (fib-c (- x 1) 
                  (lambda (z)
                    (apply-cont z y cont)))))))


; define apply-cont here
(define apply-cont
        (lambda (x y cont) (cont (+ x y))))

; define function fib-c2 here
; this is also a fibonacci function with continuation passing
; but unlike fib-c, this one does not use create-fib-c function.
; (define (fib-c2))

; (trace apply-cont)
(trace fib-c)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; some tests
(display (fib 6)) ; should output 8
(display "\n")
; (display (fib2 6)) ; should output 8
