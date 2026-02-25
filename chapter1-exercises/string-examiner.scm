(use-modules (srfi srfi-64))

;; -- Your Solution Here

(define (examine-string str target-length)
  (if (>= (string-length str) target-length)
      (string-append "The string '" str "' with " (number->string (string-length str)) " characters is equal to or longer than " (number->string target-length) " characters.")
      (string-append "The string '" str "' with " (number->string (string-length str)) " characters is shorter than " (number->string target-length) " characters.")))

;; -- Validation

(test-begin "string-examiner")

(test-equal "Correct result when input is equal to or longer than target length"
  (examine-string "System Crafters" 12)
  "The string 'System Crafters' with 15 characters is equal to or longer than 12 characters.")

(test-equal "Correct result when input is shorter than target length"
  (examine-string "Scheme" 10)
  "The string 'Scheme' with 6 characters is shorter than 10 characters.")

(test-equal "Correct result when input is equal to target length"
  (examine-string "Scheme" 6)
  "The string 'Scheme' with 6 characters is equal to or longer than 6 characters.")

(test-end)
