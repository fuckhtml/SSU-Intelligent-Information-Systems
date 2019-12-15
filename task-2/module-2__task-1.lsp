(setq x '(A (B (C X D)) (E F) G H))

(print (car (cdr (car (cdr (cadr x))))))