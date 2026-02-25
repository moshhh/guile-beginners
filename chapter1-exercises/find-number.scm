(use-modules (srfi srfi-64))

;; -- Your Solution Here

(define (find-number num lst)
  (and (pair? lst)
       (if (eqv? num (car lst))
	   num
	   (find-number num (cdr lst)))))

;; -- Validation

(test-begin "find-number")

(test-eqv "Finds 2"
  2
  (find-number 2 '(1 2 3 4 5)))

(test-eqv "Finds 5"
  5
  (find-number 5 '(1 2 3 4 5)))

(test-eqv "Doesn't find 6"
  #f
  (find-number 6 '(1 2 3 4 5)))

(test-eqv "Returns #f when given an empty list"
  #f
  (find-number 6 '()))

(test-end)
