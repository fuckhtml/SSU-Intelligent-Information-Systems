(setq ab (cons 'a (cons 'b ())))
(setq xcd (cons 'x (cons 'c (cons 'd ()))))
(setq xcdef (cons xcd (cons 'e (cons 'f ()))))
(setq gh (cons 'g (cons 'h ())))
(setq abxcdefgh (cons ab (cons xcdef (cons gh ()))))

(print abxcdefgh)