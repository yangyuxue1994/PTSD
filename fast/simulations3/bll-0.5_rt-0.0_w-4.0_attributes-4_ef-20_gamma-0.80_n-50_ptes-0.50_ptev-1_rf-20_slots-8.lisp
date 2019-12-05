(ql:quickload "split-sequence")
(push :actr-fast *features*)
(load "/projects/actr/actr7.x/load-act-r.lisp")
(load "/home/stocco/Desktop/PTSD/fast/ptsd.lisp")
(let ((sim (make-instance 'simulation)))
  (setf (num-attributes sim) 4)
  (setf (gamma sim) 0.80)
  (setf (num-slots sim) 8)
  (setf (ptes sim) '(0.50))
  (setf (rumination-frequency sim) 20)
  (setf (event-frequency sim) 20)
  (setf (n sim) 50)
  (setf (ptev sim) '(1))
  (setf (gethash :rt (model-params sim)) 0.0)
  (setf (gethash :imaginal-activation (model-params sim)) 4.0)
  (setf (gethash :bll (model-params sim)) 0.5)
  (setf (logfile sim) "bll-0.5_rt-0.0_w-4.0_attributes-4_ef-20_gamma-0.80_n-50_ptes-0.50_ptev-1_rf-20_slots-8.csv")
  (run-simulations sim))
(quit)
