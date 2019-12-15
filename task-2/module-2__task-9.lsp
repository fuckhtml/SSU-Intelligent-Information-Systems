(setq x '((A B C) (D E (F X) G) H))

(print (car (cdr (car (cddr (car (cdr x)))))))