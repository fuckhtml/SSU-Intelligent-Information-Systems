(setq x '((A B) ((C D E F) ((X G H)))))

(print (caaar (cdr (car (cdr x)))))