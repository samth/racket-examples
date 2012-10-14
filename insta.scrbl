#lang scribble/manual

@(require scribblings/reference/mz scribble/decode scribblings/icons)

@title{A Simple Web Server}

@codeblock{
#lang web-server/insta

;; A "hello world" web server
(define (start request)
  (response/xexpr
   '(html
     (body "Hello World"))))}

