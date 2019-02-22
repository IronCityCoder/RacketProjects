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
 
#|
; Recursive code to check if N is even or odd.
(letrec ([is-even? (lambda (n)
                        (or (zero? n)
                            (is-odd? (sub1 n))))]
            [is-odd? (lambda (n)
                        (and (not (zero? n))
                                (is-even? (sub1 n))))])
    (writeln (is-odd? 11)))
 |#
 
 #|
(struct dog (name breed age))
(define my-pet
    (dog "charles" "ruff" 9001))
(writeln my-pet)
(define (isDog str)
    (dog? str))
(writeln (isDog my-pet))

;Let us see if this dog is the OP (overpowered) dog.
(define (isDogPowerful doggo)
    (if (> (dog-age doggo) 9000) ;If the age of the dog is over 9000
        (writeln "Doggo OP!") ;It is OP
        (writeln "Doggo not OP!"))) ;Otherwise it is not OP

(isDogPowerful my-pet)
|#

#|
;Let's create a struct with a list of games!
(struct games (zelda skyrim mario) #:mutable)
;How many levels are in each game?
(define levels
    (games 3 999 29))
;Let's add another level to mario!
(set-games-mario! levels 30)
;Mario now has 30 levels.
(writeln (games-mario levels))
|#
