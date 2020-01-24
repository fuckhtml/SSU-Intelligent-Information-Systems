;; Граф задан парами (a b) (из a можно попасть в b). Найти последовательность перемещений из начальной вершины в заданную.

;; Обход в ширину
             
;; список вершин, связанных с данной и не посещенных             
             
(defun getall (v graph chk) 
 (remove-if #'(lambda (z) (member z chk))
                 (mapcar #'(lambda (y) (if (eq (car y) v) (cadr y) (car y))) 
                        (remove-if-not #'(lambda (x) (member v x)) graph))))
  
;; Построение каркаса             
             
(defun bfsi (graph &optional (chk '(1)) (queue '(1)))
   (cond ((null queue) nil)
         (t (let ((n (getall (car queue) graph chk)))
                 (append (mapcar #'(lambda (x) (list (car queue) x)) n)
                         (bfsi graph (append chk n) (append (cdr queue) n)))))))
 
(defun bfs (graph v)
  (bfsi graph (list v) (list v)))                         
 
;; Поиск пути  
                 
(defun find-path (stree v1 v2 &optional path)
  (if (eq v1 (caar path)) path
         (dolist (i stree nil)
           (when (eq (cadr i) v2) (return (find-path stree v1 (car i) (cons i path)))))))
      
(defun shortest-path (graph vbeg vend)
  (let ((stree (bfs graph vbeg)))
       (find-path stree vbeg vend)))  
       
(shortest-path '((1 2)(1 3) (2 3) (2 4) (3 4) (3 5) (3 6) (4 6)) 1 5)
;;==> ((1 3) (3 5))

(shortest-path '((1 2)(1 3) (2 3) (2 4) (3 4) (3 5) (3 6) (4 6)) 1 6)
;;==> ((1 3) (3 6))
 
(shortest-path '((1 2)(1 3) (2 3) (2 4) (3 4) (3 5) (4 6)) 1 6)
;;==> ((1 2) (2 4) (4 6))
