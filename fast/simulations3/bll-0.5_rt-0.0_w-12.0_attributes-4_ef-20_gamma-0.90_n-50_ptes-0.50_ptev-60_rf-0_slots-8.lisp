(ql:quickload "split-sequence")
(push :actr-fast *features*)
(load "/projects/actr/actr7.x/load-act-r.lisp")
(load "/home/stocco/Desktop/PTSD/fast/ptsd.lisp")
(let ((sim (make-instance 'simulation)))
  (setf (num-attributes sim) 4)
  (setf (num-slots sim) 8)
  (setf (rumination-frequency sim) 0)
  (setf (event-frequency sim) 20)
  (setf (gamma sim) 0.90)
  (setf (ptes sim) '(0.50))
  (setf (ptev sim) '(60))
  (setf (n sim) 50)
  (setf (gethash :imaginal-activation (model-params sim)) 12.0)
  (setf (gethash :rt (model-params sim)) 0.0)
  (setf (gethash :bll (model-params sim)) 0.5)
  (setf (logfile sim) "bll-0.5_rt-0.0_w-12.0_attributes-4_ef-20_gamma-0.90_n-50_ptes-0.50_ptev-60_rf-0_slots-8.csv")
  (run-simulations sim))
(quit)
