(defun func
    (l1 l2) 
    
    (if (atom (car (cdr l1))) 
        (append (list (car l1)) (list (car l2))) 
        (append (list (car l1)) (list (cdr l2)))
    )
)

(setq l1 '(a b c))
(setq l2 '(1 2 3))

(print (func l1 l2))
