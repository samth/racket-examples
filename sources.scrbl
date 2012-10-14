#lang scribble/manual

@(require scribblings/reference/mz scribble/decode scribblings/icons)

@title{Finding Racket sources}

@codeblock{
#lang racket
;; Finds Racket sources in all subdirs
(for ([path (in-directory)])
  (when (regexp-match? #rx"[.]rkt$" path)
    (printf "source file: ~a\n" path)))
}

This program finds all the files with the suffix @tt{.rkt}.

