; Auto-generated. Do not edit!


(cl:in-package erick-msg)


;//! \htmlinclude mensaje01Roger.msg.html

(cl:defclass <mensaje01Roger> (roslisp-msg-protocol:ros-message)
  ((mensaje
    :reader mensaje
    :initarg :mensaje
    :type cl:string
    :initform ""))
)

(cl:defclass mensaje01Roger (<mensaje01Roger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mensaje01Roger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mensaje01Roger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name erick-msg:<mensaje01Roger> is deprecated: use erick-msg:mensaje01Roger instead.")))

(cl:ensure-generic-function 'mensaje-val :lambda-list '(m))
(cl:defmethod mensaje-val ((m <mensaje01Roger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader erick-msg:mensaje-val is deprecated.  Use erick-msg:mensaje instead.")
  (mensaje m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mensaje01Roger>) ostream)
  "Serializes a message object of type '<mensaje01Roger>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mensaje))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mensaje))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mensaje01Roger>) istream)
  "Deserializes a message object of type '<mensaje01Roger>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mensaje) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mensaje) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mensaje01Roger>)))
  "Returns string type for a message object of type '<mensaje01Roger>"
  "erick/mensaje01Roger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mensaje01Roger)))
  "Returns string type for a message object of type 'mensaje01Roger"
  "erick/mensaje01Roger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mensaje01Roger>)))
  "Returns md5sum for a message object of type '<mensaje01Roger>"
  "6a903682ef166367b021ed012ebf97f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mensaje01Roger)))
  "Returns md5sum for a message object of type 'mensaje01Roger"
  "6a903682ef166367b021ed012ebf97f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mensaje01Roger>)))
  "Returns full string definition for message of type '<mensaje01Roger>"
  (cl:format cl:nil "string mensaje~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mensaje01Roger)))
  "Returns full string definition for message of type 'mensaje01Roger"
  (cl:format cl:nil "string mensaje~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mensaje01Roger>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mensaje))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mensaje01Roger>))
  "Converts a ROS message object to a list"
  (cl:list 'mensaje01Roger
    (cl:cons ':mensaje (mensaje msg))
))
