#lang racket


;;; Start with an empty stack
(define stack '())

;;; Push something onto the stack
(define push (lambda (x) (set! stack (cons x stack))))

;;; Pop the stack. Indicate an error if we try to pop an empty stack
(define pop (lambda ()
              (if (= (length stack) 0) (set! stack (cons "Error: Empty stack" stack)) 1)         
              (define return-val (car stack))
              (set! stack (cdr stack))
              return-val)
              )

;;; Show the top item without popping the stack

(define top (lambda ()
              (if (= (length stack) 0) "Error: Empty stack" (car stack))
              ))

;;; SHow contents of key variables
(define show (lambda ()
               (display "Original String: ")(print origString)(display "\n")
               (display "Input String: ")(print inputString)(display "\n")
               (display "Output String: " )(print outputString)(display "\n")
               (display "Stack: " )(print stack)(display "\n")

 ))

;;; Input and output strings
(define origString '(a b c d e f))
(define inputString origString)
(define outputString '())


;;; Shorthand for push and pop that interact with input and output string
(define o (lambda () (set! stack (cons (car inputString) stack)) (set! inputString (cdr inputString))))

(define x (lambda () (if (< 0 (length stack))
                          (begin (set! outputString (append outputString (list (car stack)))) (set! stack (cdr stack)))
                          (display "Error: Stack is empty")))
  )

;;; Reset everything
(define reset (lambda () (set! inputString origString)
                (set! stack '())
                (set! outputString '())
                (display "Stack and strings reset!\n")
                (show)
                ))

;;; Set new value for original string that will survive a reset
(define setString (lambda (x) (set! origString x) (reset)))

;;; Show some help
(define help (lambda()
   (display "CS4221 Stack Emulator (c) Conor Ryan 2018\n")
  (display "Available commands are:\n")
  (display "\t(push X): Push X onto stack\n")
  (display "\t(pop): Pop the stack\n")              
  (display "\t(show): Show contents of stack and input and output strings\n")    
  (display "\t(o): Remove the first item from the input string and push it onto the stack\n")    
  (display "\t(x): Pop the stack and send the item to the output string\n")    
  (display "\t(reset): Reset Everything\n")         
  (display "\t(setString '(m y s t r i n g)): Use the string (m y s t r i n g) [Note the space between the letters and the ' before it] from now on.\n")                  
  ))