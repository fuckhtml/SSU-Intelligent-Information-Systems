(setq xe (cons 'b 
         (cons 'c ())))

(setq cdxe (cons 'c 
           (cons 'd
           (cons xe ()))))

(setq bcdxefg (cons 'b
              (cons cdxe
              (cons 'f
              (cons 'g ())))))

(setq abcdxefgh (cons 'a
                (cons bcdxefg
                (cons 'h ()))))

(print abcdxefgh)