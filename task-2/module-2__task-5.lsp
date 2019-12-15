(setq x '(A (B C D) ((E F) (G X)) H))

(print (car (cdr (car (cdr (car (cddr x)))))))