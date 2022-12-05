#lang racket
; ============================ Test Data ================================== ;
(define testData1 (list 1 2 3 4 5 6 7 8 9 -5 'i 10)) ; Use for Q7
(define testData2 (list 1 2 3 4 5 6 7 8 9 10)) ; Use for Q8 - Q10
; ============================== Q3 ==================================== ;
(define mod (lambda (x y) (if (< x 0) (+ x y) (mod (- x y) y))))
(define mod2 (lambda (x y) (if (< x y) x (mod (- x y) y))))

; ============================== Q4 ==================================== ;

(define sumN (lambda (x) (if (<= x 1) 1 (+ (sumN (- x 1)) x))))

; =============================== Q5 =================================== ;

(define multiple6 (lambda (x) (if (<= x 1) 6 (+ (multiple6(- x 1)) 6 ))))

; =============================== Q6 =================================== ;

(define mult(lambda (x y) (if (<= y 1) x (+ (mult x (- y 1)) x ))))

; ================================ Q7 ================================== ;

(define myfun (lambda (n) (if (integer? n) (if (>= n 0) (if (= (mod n 4) 0) n (myfun (- n 1))) (~a "negative number")) (~a "Not a number, pal."))))

; ================================ Rest: ================================== ;

(define q8 (lambda (x) (if (<= x 1) 12 (*(q8 (- x 1) ) (+ 3 x)))))
(define q9 (lambda (n) (if (>= n 1) (if (= n 1) 7 (+ (q9 (- n 1)) (+ 3 n))) (display "Still cant do that pal"))))
(define q10 (lambda (n) (if (= 1 n) 5 (+ (q10 (- n 1)) (+ 1 n)))))