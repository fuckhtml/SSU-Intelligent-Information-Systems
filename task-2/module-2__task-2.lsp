(setq x '(A (B (C D (X E)) F G) H))

(print (car (car (cddr (car (cdr (car (cdr x))))))))