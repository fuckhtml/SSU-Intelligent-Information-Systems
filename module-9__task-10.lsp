(defun func
    (l1 l2) 
    
    (if (atom (car (cdr l1))) 
        (append (list (car l1)) (list (car l2))) 
        (append (list (car l1)) (list (cdr l2)))
    )
)

(defun func1 (L N)
  (cond
   ((null L) nil)
   ((minusp N) L)
   ((zerop N) (cdr L))
   (T (cons (car L) (func1 (cdr L) (1- N))))))


(defun func2 (w)
  (or (null w) (unless (member (car w) (cdr w)) (func2 (cdr w)))))



(defun contain (X A) ;; X - список, A - атом
  (if (null X) nil ;; если список пуст, А в нем не содержится
      (or (eq (car X) A) (contain (cdr X) A)))) ;; иначе или A совпадает с головой списка или содержится в хвосте.

(defun include1 (Y X) ;; Y - список, в котором ищем. X - что ищем
  (if (null X) T ;; Пустое множество содержится в любом
     (and (contain Y (car X)) (include1 Y (cdr X))))) ;; иначе
     ;; X входит в Y, если голова и хвост X входят в Y

(setq l1 '(a b c))
(setq l2 '(1 2 3))
(print (func l1 l2))

(print (func1 l1 1))
(print (func2 '(1 2 2)))

(print (include1 '(1 2 3) '(1 2 4) ))
