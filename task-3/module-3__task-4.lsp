(setq cd 
      (cons 'c (cons 'd ())))

(setq fx 
      (cons 'f (cons 'x ())))

(setq fxgh 
      (cons fx (cons 'g (cons 'h ()))))

(setq abcdefxgh 
      (cons 'a (cons 'b (cons cd (cons 'e (cons fxgh ()))))))

(print abcdefxgh)