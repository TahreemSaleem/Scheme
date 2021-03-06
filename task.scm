(define pred (lambda (n) (((n (lambda (g) (lambda (k) (((g one) (lambda (u) (plus (g k) one))) k)))) (lambda (v) zero)) zero)))
(define iszero (lambda (n) ((n (lambda (x) false)) true)))

(define and (lambda (m n) (lambda (a b) (m (n a b) b))))
(define sub (lambda (n m)(m (pred n))))
(define add (lambda (m n) (lambda (f) (lambda (x) ((m f) ((n f) x))))))
(define or (lambda (m n) (lambda (a b) (m a (n a b)))))
(define not (lambda (m) (lambda (a b) (m b a))))
(define leq (lambda(m n)(iszero (sub m n))))
(define geq (lambda(m n)(iszero (sub n m))))

