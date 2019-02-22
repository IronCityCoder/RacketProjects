#lang racket

;Note this uses writeln instead of printf because I use the jdoodle online editor.

#|
(define firstName "mary") ;Messing around with strings.
(define lastName "sue")
(writeln (string-append firstName " " lastName)) ;Appending two strings together.
|#

#|
(define dank "Racket")
(define boi "Programming")
(define sentence (format "~a ~a is quite fun!" dank boi))
(writeln sentence) ;We print out the combined sentence;
|#

;(let* ([x 1] [y (+ x 1)]) ;Pretty basic stuff. X equals 1, Y equals X plus 1. 
 ;   (writeln(* x y))) ;Now lets print out x times y. 1 * 2 is 2.
 
