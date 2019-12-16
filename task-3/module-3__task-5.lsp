(setq bcd (cons 'b (cons 'c (cons 'd ()))))
(setq ef (cons 'e (cons 'f ())))
(setq gx (cons 'g (cons 'x ())))
(setq efgx (cons ef (cons gx ())))
(setq abcdefgxh (cons 'a (cons bcd (cons efgx (cons 'h ())))))

(print abcdefgxh)