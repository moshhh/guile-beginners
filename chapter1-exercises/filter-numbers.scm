(use-modules (srfi srfi-64))

;; -- Your Solution Here

(define (filter-numbers num lst)
  (if (pair? lst)
      (if (number? (car lst))
	  (if (<= num (car lst))
	      (cons (car lst) (filter-numbers num (cdr lst)))
	      (filter-numbers num (cdr lst)))
	  (filter-numbers num (cdr lst)))
      lst))

;; -- Validation

(test-begin "filter-numbers")

(test-equal "Filters out numbers less than 50"
  '(57 102 50 65)
  (filter-numbers 50 '(20 57 102 49 50 65)))

(test-equal "List is unchanged when all are greater than threshold"
  '(20 57 102 49 50 65)
  (filter-numbers 2 '(20 57 102 49 50 65)))

(test-equal "Skips non-number values"
  '(2 4)
  (filter-numbers 2 '(1 2 "three" 4)))

(test-equal "Returns an empty list when given an empty list"
  '()
  (filter-numbers 2 '()))

(test-end)
