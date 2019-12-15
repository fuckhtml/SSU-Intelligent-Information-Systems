(setq x '(((A B C D E) (F (X (G))) H)))

(print (caar (cdr (car (cdr (car x))))))