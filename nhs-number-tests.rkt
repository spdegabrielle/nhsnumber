#lang racket/base
; nhs number validator
;; 10 digits
;; last is check digit
(require "nhs-number.rkt")
;;
(define (test)
  (display (list 
            (valid-nhs-number? '(9 9 9 9 9 9 9 9 9 9 ))
            (valid-nhs-number? '(6 6 6 6 6 6 6 6 6 6 ))
            (valid-nhs-number? '(4 4 4 4 4 3 4 4 4 4 ))
            )))
(test)
