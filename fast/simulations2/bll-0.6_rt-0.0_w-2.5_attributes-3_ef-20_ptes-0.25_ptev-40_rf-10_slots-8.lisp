(load "/projects/actr/actr7.x/load-act-r.lisp")
(load "/home/andrea/Documents/Research/PTSD/fast/ptsd.lisp")
(let ((sim (make-instance 'simulation)))
  (setf (ptev sim) '(40))
  (setf (ptes sim) '(0.25))
  (setf (event-frequency sim) 20)
  (setf (rumination-frequency sim) 10)
  (setf (num-attributes sim) 3)
  (setf (num-slots sim) 8)
  (setf (gethash :imaginal-activation (model-params sim)) 2.5)
  (setf (gethash :bll (model-params sim)) 0.6)
  (setf (gethash :rt (model-params sim)) 0.0)
  (setf (logfile sim) "bll-0.6_rt-0.0_w-2.5_attributes-3_ef-20_ptes-0.25_ptev-40_rf-10_slots-8.csv")
  (run-simulations sim))
(quit)
