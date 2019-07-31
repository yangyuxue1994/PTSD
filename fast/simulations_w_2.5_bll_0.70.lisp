
(load "/projects/actr/actr7.x/load-act-r.lisp")
(load "/home/stocco/Desktop/PTSD/fast/ptsd.lisp")
(setf sim (make-instance 'simulation))
(setf (ptev sim) 
      '(1 20 10 5 15))
(setf (ptes sim)
      '(0 1 0.5 0.25 0.75))
(let ((ht (make-hash-table)))
  (setf (gethash :imaginal-activation ht) 2.5)
  (setf (gethash :bll ht) 0.70)
  (setf (model-params sim) ht))

(setf (logfile sim) "simulations_w=2.5_bll=0.70.txt") 
(run-simulations sim)
(quit)
