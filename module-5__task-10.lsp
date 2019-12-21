(setq l1 '('fir 'sed (1 2 3) (5) ()))
(setq l2 '('H 'J 'U ('L 'M 'N) ('D 'E 'L)))
(setq l3 '(4 5 (6 7)))

(print (append (list (car l1))
               (list (car (cdr l1)))
               (list (car (cddr l1)))
               (list (car (cddddr l1)))
               
               (list (car l2))
               (list (car (cdr l2)))
               (list (car (cddr l2)))
               (list (car (cddddr l2)))
               
                     
               (list (car l3))
               (list (car (cdr l3)))))
