(load "/projects/actr/actr7.x/load-act-r.lisp")
(load "/home/andrea/Documents/Research/PTSD/fast/ptsd.lisp")
(let ((sim (make-instance 'simulation)))
  (setf (ptev sim) '(50))
  (setf (ptes sim) '(0.75))
  (setf (event-frequency sim) 20)
  (setf (rumination-frequency sim) 10)
  (setf (num-attributes sim) 6)
  (setf (num-slots sim) 8)
  (setf (gethash :imaginal-activation (model-params sim)) 5.0)
  (setf (gethash :bll (model-params sim)) 0.5)
  (setf (gethash :rt (model-params sim)) 2.0)
  (setf (logfile sim) "bll-0.5_rt-2.0_w-5.0_attributes-6_ef-20_ptes-0.75_ptev-50_rf-10_slots-8.csv")
  (run-simulations sim))
(quit)
