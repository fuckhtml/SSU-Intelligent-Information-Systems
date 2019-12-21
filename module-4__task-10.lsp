(setq l1 '('fir 'sed (1 2 3) (5) ()))
(setq l2 '('H 'J 'U ('L 'M 'N) ('D 'E 'L)))
(setq l3 '(4 5 (6 7)))

(print (list (caar (cdddr l1))
             (car(cdddr l2))
             (car (cddr l3))) )
