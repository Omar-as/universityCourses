#lang racket

(define (fib x) (fib-c x (create-final-cont)))
(define (fib2 x) (fib-c2 x (create-final-cont)))

;;;;;;;;;; PROBLEM 2 ;;;;;;;;;;;;;
; define create-final-cont here


; define fib-c here
; this is the fibonacci function with continuation passing
; it will be using create-fib-c x cont in its body


; define create-fib-c here
; it creates the continuation for fibonacci


; define apply-cont here


; define function fib-c2 here
; this is also a fibonacci function with continuation passing
; but unlike fib-c, this one does not use create-fib-c function.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; some tests
(display (fib 6)) ; should output 8
(display "\n")
(display (fib2 6)) ; should output 8
