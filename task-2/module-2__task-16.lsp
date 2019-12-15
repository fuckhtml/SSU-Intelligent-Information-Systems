(setq x '(A (B C D E (((F) X) G H))))

(print (car (cdr (caar (cddddr (car (cdr x)))))))
