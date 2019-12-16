(setq b (cons 'b ()))
(setq ex (cons 'e (cons 'x ())))
(setq cdex (cons 'c (cons 'd (cons ex ()))))
(setq abcdexfgh (cons 'a (cons b (cons cdex (cons 'f (cons 'g (cons 'h ())))))))

(print abcdexfgh)
