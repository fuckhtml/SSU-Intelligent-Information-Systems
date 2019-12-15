(setq x '(A (B C ((X D) E F) G) H))

(print (caaar (cddr (car (cdr x)))))