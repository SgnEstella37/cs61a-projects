(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cadar x) (car (cdr (car x))))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Problem 14
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 14
  (define (helper s i)
    (if (null? s)
        nil
        (cons (list i (car s))
              (helper (cdr s) (+ i 1)))))
  (helper s 0))
  ; END PROBLEM 14
  


;; Problem 15

;; Return the value for a key in a dictionary list
(define (get dict key)
  ; BEGIN PROBLEM 15
  (if (null? dict) #f
  (if (equal? (caar dict) key) (cadar dict)
  (get (cdr dict) key))
  ; END PROBLEM 15
  ))

;; Return a dictionary list with a (key value) pair
(define (set dict key val)
  ; BEGIN PROBLEM 15
  (if (null? dict) (list(list key val))
    (if (equal? (caar dict) key)
      (cons (list key val) (cdr dict))
      (cons (car dict) (set (cdr dict) key val)))))
  ; END PROBLEM 15
  

;; Problem 16

;; implement solution-code
(define (solution-code problem solution)
  ; BEGIN PROBLEM 16
  (cond
    ((equal? problem '_____) solution)
    ((pair? problem)
     (cons (solution-code (car problem) solution)
           (solution-code (cdr problem) solution)))
    (else problem)))
  ; END PROBLEM 16
  
