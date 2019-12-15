(setq x '((A B) (C D E) (F G (X H))))

(print (caar (cddr (car (cddr x)))))