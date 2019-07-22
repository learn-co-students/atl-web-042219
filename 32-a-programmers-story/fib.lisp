;; (trace fib)

(defun fib (n)
  (if (< n 2)
      n
      (+ (fib (- n 1))
         (fib (- n 2)))))

;; TODO: Memoize fib
;; TODO: Define a function to automatically memoize any single argument function?
