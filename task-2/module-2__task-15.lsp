(setq x '((A ((B C D E F) X)) G H))

(print (car (cdr (car (cdr (car x))))))
