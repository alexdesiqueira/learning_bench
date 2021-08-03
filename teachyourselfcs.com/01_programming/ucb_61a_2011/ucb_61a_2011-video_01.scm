#lang planet dyoo/simply-scheme:2

;; first, last, butfirst, butlast, and other procedures from this class
;; are defined here: https://people.eecs.berkeley.edu/~bh/61a-pages/Scheme/source/src/ucb/bscheme/simply.scm
;; They can be used adding
;; #lang planet dyoo/simply-scheme:2
;; to the beginning of the file, as explained here:
;; http://planet.racket-lang.org/package-source/dyoo/simply-scheme.plt/2/2/planet-docs/manual/index.html

6

(+ 6 8)

(+ 6 8 2 99 4000)

(+)  ;; returns 0, the id element of sum
(*)  ;; returns 1, the id element of prod
; (/)  ;; breaks :)

; How things "behave" in Racket

+  ;; shows that + is a procedure...
sin  ;; ... the same way as sin
'+  ;; returns +
'hello  ;; returns hello

; Composition of functions

(+ (* 3 7) (* 10 10))

(+ 3 2 7)  ;; 3, 2, 7: args; +: function; (): "hey, call this function with these args"

; Some functions from STk (instructions on the header of this file)
(first 'hello)
(last 'hello)
(butfirst 'hello)
(butlast 'hello)

(word 'now 'here)

(sentence 'now 'here)

'(magical mystery tour)

(first '(got to get you into my life))

(first (bf '(a hard days night)))

(first (first (bf '(she loves you))))

(define pi 3.141592654)

pi

(* pi 5 5)

;; defining the square of a number.

(define (square x)
  (* x x))

(square (+ 2 3))

(define hello (+ 2 3))

; Defining a simple procedure for plurals.

(define (plural wd)
  (word wd 's))

(plural 'computer)

(plural 'book)

(plural 'boy)

(plural 'fly)  ;; flys; gotta fix this one.

(define (plural-2 wd)
  (if (equal? (last wd) 'y)
      (word (bl wd) 'ies)
      (word wd 's)))

(plural-2 'book)

(plural-2 'fly)

(plural-2 'boy)  ;; now we broke this one :)
  
