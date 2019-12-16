(setq bc (cons 'b (cons 'c ())))
(setq xd (cons 'x (cons 'd ())))
(setq xde (cons xd (cons 'e ())))
(setq abcxdefgh (cons 'a (cons bc (cons xde (cons 'f (cons 'g (cons 'h ())))))))

(print abcxdefgh)