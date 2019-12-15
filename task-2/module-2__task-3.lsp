(setq x '(((A B C D) (E (X) F)) G H))

(print (car (car (cdr (car (cdr (car x)))))))