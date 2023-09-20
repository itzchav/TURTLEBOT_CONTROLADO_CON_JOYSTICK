; Auto-generated. Do not edit!


(cl:in-package erick-srv)


;//! \htmlinclude servCuadrado-request.msg.html

(cl:defclass <servCuadrado-request> (roslisp-msg-protocol:ros-message)
  ((numero
    :reader numero
    :initarg :numero
    :type cl:float
    :initform 0.0))
)

(cl:defclass servCuadrado-request (<servCuadrado-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <servCuadrado-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'servCuadrado-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name erick-srv:<servCuadrado-request> is deprecated: use erick-srv:servCuadrado-request instead.")))

(cl:ensure-generic-function 'numero-val :lambda-list '(m))
(cl:defmethod numero-val ((m <servCuadrado-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erick-srv:numero-val is deprecated.  Use erick-srv:numero instead.")
  (numero m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <servCuadrado-request>) ostream)
  "Serializes a message object of type '<servCuadrado-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'numero))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <servCuadrado-request>) istream)
  "Deserializes a message object of type '<servCuadrado-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'numero) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<servCuadrado-request>)))
  "Returns string type for a service object of type '<servCuadrado-request>"
  "erick/servCuadradoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servCuadrado-request)))
  "Returns string type for a service object of type 'servCuadrado-request"
  "erick/servCuadradoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<servCuadrado-request>)))
  "Returns md5sum for a message object of type '<servCuadrado-request>"
  "34f2e5caf0038897a998616af4afa87b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'servCuadrado-request)))
  "Returns md5sum for a message object of type 'servCuadrado-request"
  "34f2e5caf0038897a998616af4afa87b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<servCuadrado-request>)))
  "Returns full string definition for message of type '<servCuadrado-request>"
  (cl:format cl:nil "# Archivo de mensaje para servicio de calculo del cuadrado~%float64 numero 	            # Campo para mensaje de peticion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'servCuadrado-request)))
  "Returns full string definition for message of type 'servCuadrado-request"
  (cl:format cl:nil "# Archivo de mensaje para servicio de calculo del cuadrado~%float64 numero 	            # Campo para mensaje de peticion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <servCuadrado-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <servCuadrado-request>))
  "Converts a ROS message object to a list"
  (cl:list 'servCuadrado-request
    (cl:cons ':numero (numero msg))
))
;//! \htmlinclude servCuadrado-response.msg.html

(cl:defclass <servCuadrado-response> (roslisp-msg-protocol:ros-message)
  ((respuesta
    :reader respuesta
    :initarg :respuesta
    :type cl:float
    :initform 0.0)
   (completado
    :reader completado
    :initarg :completado
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass servCuadrado-response (<servCuadrado-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <servCuadrado-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'servCuadrado-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name erick-srv:<servCuadrado-response> is deprecated: use erick-srv:servCuadrado-response instead.")))

(cl:ensure-generic-function 'respuesta-val :lambda-list '(m))
(cl:defmethod respuesta-val ((m <servCuadrado-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erick-srv:respuesta-val is deprecated.  Use erick-srv:respuesta instead.")
  (respuesta m))

(cl:ensure-generic-function 'completado-val :lambda-list '(m))
(cl:defmethod completado-val ((m <servCuadrado-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erick-srv:completado-val is deprecated.  Use erick-srv:completado instead.")
  (completado m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <servCuadrado-response>) ostream)
  "Serializes a message object of type '<servCuadrado-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'respuesta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'completado) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <servCuadrado-response>) istream)
  "Deserializes a message object of type '<servCuadrado-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'respuesta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'completado) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<servCuadrado-response>)))
  "Returns string type for a service object of type '<servCuadrado-response>"
  "erick/servCuadradoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servCuadrado-response)))
  "Returns string type for a service object of type 'servCuadrado-response"
  "erick/servCuadradoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<servCuadrado-response>)))
  "Returns md5sum for a message object of type '<servCuadrado-response>"
  "34f2e5caf0038897a998616af4afa87b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'servCuadrado-response)))
  "Returns md5sum for a message object of type 'servCuadrado-response"
  "34f2e5caf0038897a998616af4afa87b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<servCuadrado-response>)))
  "Returns full string definition for message of type '<servCuadrado-response>"
  (cl:format cl:nil "float64 respuesta	        # Campo de mensaje de respuesta~%bool    completado	        # Campo indicando si hubo exito en dar servicio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'servCuadrado-response)))
  "Returns full string definition for message of type 'servCuadrado-response"
  (cl:format cl:nil "float64 respuesta	        # Campo de mensaje de respuesta~%bool    completado	        # Campo indicando si hubo exito en dar servicio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <servCuadrado-response>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <servCuadrado-response>))
  "Converts a ROS message object to a list"
  (cl:list 'servCuadrado-response
    (cl:cons ':respuesta (respuesta msg))
    (cl:cons ':completado (completado msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'servCuadrado)))
  'servCuadrado-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'servCuadrado)))
  'servCuadrado-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servCuadrado)))
  "Returns string type for a service object of type '<servCuadrado>"
  "erick/servCuadrado")