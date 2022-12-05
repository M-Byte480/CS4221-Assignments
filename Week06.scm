#lang racket

(define sqr (lambda (x) (* x x
                           )))

(define root+ (lambda (a b c) 
                (  / ( + (- b) 
                (sqrt 
                   (- (sqr b) 
                      (* 4 (* a c)))))(* 2 a))
                ))

(define root- (lambda (a b c) 
                (  / ( - (- b) 
                (sqrt 
                   (- (sqr b) 
                      (* 4 (* a c)))))(* 2 a))
                ))
(define root (lambda (a b c) 
               (print (root+ a b c))
               (printf " & " )
               (print (root- a b c))
               ))

(define pyth (lambda (b c) (sqrt (+ (sqr b) (sqr c)))))                  