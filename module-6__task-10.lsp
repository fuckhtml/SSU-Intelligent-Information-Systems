(setq l1 '('fir 'sed (1 2 3) (5) ()))
(setq l2 '('H 'J 'U ('L 'M 'N) ('D 'E 'L)))
(setq l3 '(4 5 (6 7)))

(print (and (numberp (car (cdddr l1)))
            (atom    (car (cdddr l2)))
            (listp   (car (cddr  l3)))))
