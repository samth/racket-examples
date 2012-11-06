#lang scribble/manual

@(require scribblings/reference/mz scribble/decode scribblings/icons)

@title{Unique lines}

@codeblock{
;; Report each unique line from stdin
(let ([saw (make-hash)])
  (for ([line (in-lines)])
    (unless (hash-ref saw line #f)
      (displayln line))
    (hash-set! saw line #t)))
}

This program forever reads lines from standard input, and prints the ones it hasn't seen before.

First, we create a hashtable with @racket[make-hash], to keep track of the lines we've seen. 
Then, we use a @racket[for] loop to iterate over the sequence of lines read from @racketfont{stdin} with @racket[(in-lines)]. Each line is bound to @racket[line] in the loop.

@margin-note*{Note that we can provide a default value for @racket[hash-ref] to return, in case the key is not found. Here we've use @racket[#f], the false value, so @racket[hash-ref] is always true or false.}
To check if we've seen @racket[line] before, we look in our hashmap with @racket[hash-ref]. 
If @racket[line] is there, @racket[(hash-ref saw line #f)] will return true and we will print @racket[line] with @racket[displayln].Finally, to remember the line we've just read, we store it in the hashtable with @racket[hash-set!].