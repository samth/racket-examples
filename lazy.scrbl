#lang scribble/manual

@(require scribblings/reference/mz)

@title{Lazy Racket}

@codeblock{
#lang lazy
;; An infinite list:
(define fibs
  (list* 1 1 (map + fibs (cdr fibs))))
 
;; Print the 1000th Fibonacci number:
(print (list-ref fibs 1000))
}

In this program, we use @racket[Lazy Racket] to define an "infinite" fibonacci
sequence, and to print its 1001st element.

The first line of this program specifies that we are using the 
@racket[Lazy Racket] language. In @racket[Lazy Racket], expressions are only 
evaluated when their results are needed.

Then, we define @racket[fibs] as a lazy list with @racket[list*]. 
Its first 2 elements are 1, its remaining elements are defined by the expression 
@racket[(map + fibs (cdr fibs))]. The @racket[map] function applies @racket[+] 
to lists @racket[fibs] and @racket[(cdr fibs)], this adds each element of 
@racket[fibs] with the next, to produce a third element. 

@margin-note*{ Accessing the nth element of a lazy list forces evaluation of 
              its first n elements. These values are cached and do not need 
              to be re-evaluated when we look them up again. }


Then, we @racket[print] the 1001st element of @racket[fibs], which we access 
with @racket[(list-ref fibs 1000)] (note that list indexes start at 0). 


