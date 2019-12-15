(setq x '(A (B) (C D (E X)) F G H))

(print (car (cdr (car (cddr (car (cddr x)))))))