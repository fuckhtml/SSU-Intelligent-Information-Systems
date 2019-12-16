(setq ab (cons 'a (cons 'b ())))
(setq cde (cons 'c (cons 'd (cons 'e ()))))
(setq xh (cons 'x (cons 'h ())))
(setq fgxh (cons 'f (cons 'g (cons xh ()))))
(setq abcdefgxh (cons ab (cons cde (cons fgxh ()))))

(print abcdefgxh)