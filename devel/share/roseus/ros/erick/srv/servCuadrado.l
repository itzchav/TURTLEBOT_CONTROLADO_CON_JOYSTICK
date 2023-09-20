;; Auto-generated. Do not edit!


(when (boundp 'erick::servCuadrado)
  (if (not (find-package "ERICK"))
    (make-package "ERICK"))
  (shadow 'servCuadrado (find-package "ERICK")))
(unless (find-package "ERICK::SERVCUADRADO")
  (make-package "ERICK::SERVCUADRADO"))
(unless (find-package "ERICK::SERVCUADRADOREQUEST")
  (make-package "ERICK::SERVCUADRADOREQUEST"))
(unless (find-package "ERICK::SERVCUADRADORESPONSE")
  (make-package "ERICK::SERVCUADRADORESPONSE"))

(in-package "ROS")





(defclass erick::servCuadradoRequest
  :super ros::object
  :slots (_numero ))

(defmethod erick::servCuadradoRequest
  (:init
   (&key
    ((:numero __numero) 0.0)
    )
   (send-super :init)
   (setq _numero (float __numero))
   self)
  (:numero
   (&optional __numero)
   (if __numero (setq _numero __numero)) _numero)
  (:serialization-length
   ()
   (+
    ;; float64 _numero
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _numero
       (sys::poke _numero (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _numero
     (setq _numero (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass erick::servCuadradoResponse
  :super ros::object
  :slots (_respuesta _completado ))

(defmethod erick::servCuadradoResponse
  (:init
   (&key
    ((:respuesta __respuesta) 0.0)
    ((:completado __completado) nil)
    )
   (send-super :init)
   (setq _respuesta (float __respuesta))
   (setq _completado __completado)
   self)
  (:respuesta
   (&optional __respuesta)
   (if __respuesta (setq _respuesta __respuesta)) _respuesta)
  (:completado
   (&optional __completado)
   (if __completado (setq _completado __completado)) _completado)
  (:serialization-length
   ()
   (+
    ;; float64 _respuesta
    8
    ;; bool _completado
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _respuesta
       (sys::poke _respuesta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _completado
       (if _completado (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _respuesta
     (setq _respuesta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _completado
     (setq _completado (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass erick::servCuadrado
  :super ros::object
  :slots ())

(setf (get erick::servCuadrado :md5sum-) "34f2e5caf0038897a998616af4afa87b")
(setf (get erick::servCuadrado :datatype-) "erick/servCuadrado")
(setf (get erick::servCuadrado :request) erick::servCuadradoRequest)
(setf (get erick::servCuadrado :response) erick::servCuadradoResponse)

(defmethod erick::servCuadradoRequest
  (:response () (instance erick::servCuadradoResponse :init)))

(setf (get erick::servCuadradoRequest :md5sum-) "34f2e5caf0038897a998616af4afa87b")
(setf (get erick::servCuadradoRequest :datatype-) "erick/servCuadradoRequest")
(setf (get erick::servCuadradoRequest :definition-)
      "# Archivo de mensaje para servicio de calculo del cuadrado
float64 numero 	            # Campo para mensaje de peticion
---
float64 respuesta	        # Campo de mensaje de respuesta
bool    completado	        # Campo indicando si hubo exito en dar servicio
")

(setf (get erick::servCuadradoResponse :md5sum-) "34f2e5caf0038897a998616af4afa87b")
(setf (get erick::servCuadradoResponse :datatype-) "erick/servCuadradoResponse")
(setf (get erick::servCuadradoResponse :definition-)
      "# Archivo de mensaje para servicio de calculo del cuadrado
float64 numero 	            # Campo para mensaje de peticion
---
float64 respuesta	        # Campo de mensaje de respuesta
bool    completado	        # Campo indicando si hubo exito en dar servicio
")



(provide :erick/servCuadrado "34f2e5caf0038897a998616af4afa87b")


