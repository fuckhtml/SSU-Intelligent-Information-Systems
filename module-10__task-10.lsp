;; 10. 1. Написать функцию, которая по списку lst и атому obj возвращает множество всех объектов, непосредственно следующих за вхождениями obj в lst,с учетом всех вхождений атома в подсписки.
;; 2. Написать функцию, возвращающую число атомов на каждом уровне списка в виде ((1 <число атомов на первом уровне>) (2 <на втором>)..). Пример (a (b (c (d e (f) k 1 5) e))) –> ((1 1) (2 1) (3 2) (4 5) (5 1)).
;; 3. Напишите программу, возвращающую список, содержащий информацию о количестве подсписков на каждом уровне вложенности: ((<уровень> <количество подсписков>)...)


(defun task (lst obj)
  (let ((r nil) (flg nil))
   (iter (for i in lst)
     (when (listp i) (setq r (append r (task i obj))))
     (cond ((equal i obj) (setq flg t)) 
           (flg (collecting i into r) (setq flg nil))))
   r))
 
 
(task '(1 2 3 4 (2 3 5) 6) 3)
 
(task '(1 2 3 4 (2 3 (5)) 6) 3)
 

;;==> task
 
;;(task '(1 2 3 4 (2 3 5) 6) 3)
;;==> (4 5)
 
;;(task '(1 2 3 4 (2 3 (5)) 6) 3)
;;==> (4 (5))
