(define (min-way a b graph)

  (define strike-out-tops '())

  (define (strike-out? u)

    (memq u strike-out-tops))

 

  (define labels 

    (map (lambda (x) 

           (let ((u (car x)))

             (cons u (if (= u a) 0 -1)))) 

         graph))

 

  ;; вершина с минимальной меткой (-1 означает бесконечность)

  (define (top-with-min-label)

    (let ((y '()))

      (for-each (lambda (x)

                  (if (and  (not (= (cdr x) -1))

                            (not (strike-out? (car x)))

                            (or (null? y) (< (cdr x) (cdr y))))

                      (set! y x)))

                labels)

      y))

 

  (define (set-labels! u m)

      (set! labels 

            (map (lambda (y)

                   (if (= u (car y)) (cons u m) y))

                 labels)))

 

  (define (dijkstra)

    (if (< (length strike-out-tops) (length graph))

        (let* ((y (top-with-min-label))

               (u (car y))

               (m (+ 1 (cdr y)))

               ;соседние вершины

               (s (map (lambda (x) (assq x labels)) 

                        (cadr (assq u graph)))))

          (set! strike-out-tops 

                (cons u strike-out-tops))

          (for-each (lambda (x)

                      (if (and (not (strike-out? (car x)))

                               (or (= (cdr x) -1)

                                   (< m (cdr x))))

                          (set-labels! (car x) m)))

                    s)

          (dijkstra))))

 

  (define (make-way b)

    (if (= a b)

        (list a)

        (let ((y (assq b labels))

              (z '())

              (s (map (lambda (x)

                        (assq x labels))

                      (cadr (assq b graph)))))    

          (for-each (lambda (x)

                      (if (= (+ 1 (cdr x)) (cdr y))

                          (set! z x)))

                    s)

          (cons b (make-way (car z))))))

  (dijkstra)

  (make-way b))

 

(define graph '((1 (2 3 6))

                (2 (1 3 4))

                (3 (1 2 4 6))

                (4 (2 3 5))

                (5 (4 6))

                (6 (1 3 5))))

(min-way 1 5 graph)
