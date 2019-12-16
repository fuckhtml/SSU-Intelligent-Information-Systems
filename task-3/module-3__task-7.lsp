(setq cd (cons 'c (cons 'd ())))
(setq xe (cons 'x (cons 'e ())))
(setq xefg (cons xe (cons 'f (cons 'g ()))))
(setq abcdxefgh (cons 'a (cons 'b (cons cd (cons xefg (cons 'h ()))))))

(print abcdxefgh)
