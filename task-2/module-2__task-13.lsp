(setq x '(A B (C (D E) (F () (X) G)) H))

(print (caar (cddr (car (cddr (car (cddr x)))))))

