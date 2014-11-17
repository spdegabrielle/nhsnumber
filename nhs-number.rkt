#lang racket/base
(require racket/list)

; nhs number validator
;; 10 digits
;; last is check digit
(provide 
; calculate-nhs-number-check-digit
 valid-nhs-number? 
 )


(define (string->list-of-digits str)
 
  )

(define (number->list-of-digits number)
   (number->string str))
  )


(define (calculate-nhs-number-check-digit list-of-digits)
  (let ((c (- 11 (modulo (apply + (map * list-of-digits '(10 9 8 7 6 5 4 3 2))) 11))))
    (cond
      [(eq? c 11) 0]
      [(eq? c 10) #f] ;invalid
      [else c]
      )))

(define (valid-nhs-number? num-or-string)
 (cond
   [(string? num-or-string) (validate list-of-digits)]
  
  
  )

(define (validate list-of-digits)
  (and (last list-of-digits)
  (equal? 
   (calculate-nhs-number-check-digit (take list-of-digits 9))
   (last list-of-digits)
   )))
