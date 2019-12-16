(setq abc (cons 'a (cons 'b (cons 'c ()))))
(setq fx (cons 'f (cons 'x ())))
(setq defxg (cons 'd (cons 'e (cons fx (cons 'g ())))))
(setq abcdefxgh (cons abc (cons defxg (cons 'h ()))))

(print abcdefxgh)
