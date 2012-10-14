#lang scribble/manual

@title{Printing the Greek alphabet}

@margin-note{Throughout this document, all of the code is hyperlinked
             to its documentation. So if you click on @racket[+], you'll
             see what it does.}

@codeblock{
#lang racket

;; Print the Greek alphabet
(for ([i (in-range 25)])
  (displayln
   (integer->char
    (+ i (char->integer #\u3B1)))))
}

This program, like all the others we will see, start with @racketfont{#lang} on
the first line.  
@margin-note*{For more about @racketfont{#lang}, see }
This line specifies the @emph{language} that we will use for
the rest of the module.  In this case, the language is @racketmodname[racket],
which is the default language that we use for Racket programs.  The
@racketmodname[racket] language includes all of the core Racket language along
with lots of libraries.  The @racketmodname[racket/base] language is smaller,
including just the core language---using @racketmodname[racket/base] can be
useful to avoid the memory overhead of the larger @racketmodname[racket].
Other languages that you'll see often in Racket programs include 
@racketmodname[typed/racket], @racketmodname[racket/gui], 
@racketmodname[scribble/manual] and others.

