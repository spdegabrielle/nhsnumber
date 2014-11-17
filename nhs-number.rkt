#lang racket/base
(require racket/list)

; nhs number validator
;; 10 digits
;; last is check digit
(provide 
 ; calculate-nhs-number-check-digit
 valid-nhs-number? )

(define (valid-nhs-number? nhsnumstring)
  (if (regexp-match #px"^\\d{10}$" (regexp-match #px"^\\d{10}$" "12345678A0"))
      ()
      (error 'not-a-10-digit-number)
      ))


(define (calculate-nhs-number-check-digit list-of-digits)
  (let ((c (- 11 (modulo (apply + (map * list-of-digits '(10 9 8 7 6 5 4 3 2))) 11))))
    (cond
      [(eq? c 11) 0]
      [(eq? c 10) #f] ;invalid
      [else c]
      )))


(define (validate list-of-digits)
  (and (last list-of-digits)
       (equal? 
        (calculate-nhs-number-check-digit (take list-of-digits 9))
        (last list-of-digits)
        )))
