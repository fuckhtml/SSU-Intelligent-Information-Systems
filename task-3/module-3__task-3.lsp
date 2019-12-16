(setq x (cons 'x ()))

(setq exf (cons 'e
          (cons x
          (cons 'f ()))))

(setq abcd (cons 'a
           (cons 'b
           (cons 'c
           (cons 'd ())))))

(setq abcdexf (cons abcd
              (cons exf ())))

(setq abcdexfgh (cons abcdexf
                (cons 'g
                (cons 'h ()))))

(print abcdexfgh)