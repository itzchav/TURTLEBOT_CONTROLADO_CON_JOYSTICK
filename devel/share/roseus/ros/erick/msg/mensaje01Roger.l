;; Auto-generated. Do not edit!


(when (boundp 'erick::mensaje01Roger)
  (if (not (find-package "ERICK"))
    (make-package "ERICK"))
  (shadow 'mensaje01Roger (find-package "ERICK")))
(unless (find-package "ERICK::MENSAJE01ROGER")
  (make-package "ERICK::MENSAJE01ROGER"))

(in-package "ROS")
;;//! \htmlinclude mensaje01Roger.msg.html


(defclass erick::mensaje01Roger
  :super ros::object
  :slots (_mensaje ))

(defmethod erick::mensaje01Roger
  (:init
   (&key
    ((:mensaje __mensaje) "")
    )
   (send-super :init)
   (setq _mensaje (string __mensaje))
   self)
  (:mensaje
   (&optional __mensaje)
   (if __mensaje (setq _mensaje __mensaje)) _mensaje)
  (:serialization-length
   ()
   (+
    ;; string _mensaje
    4 (length _mensaje)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mensaje
       (write-long (length _mensaje) s) (princ _mensaje s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mensaje
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mensaje (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get erick::mensaje01Roger :md5sum-) "6a903682ef166367b021ed012ebf97f5")
(setf (get erick::mensaje01Roger :datatype-) "erick/mensaje01Roger")
(setf (get erick::mensaje01Roger :definition-)
      "string mensaje
")



(provide :erick/mensaje01Roger "6a903682ef166367b021ed012ebf97f5")


