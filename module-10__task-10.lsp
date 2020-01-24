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
