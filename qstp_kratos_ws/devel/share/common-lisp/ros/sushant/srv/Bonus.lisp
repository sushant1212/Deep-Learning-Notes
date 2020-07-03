; Auto-generated. Do not edit!


(cl:in-package sushant-srv)


;//! \htmlinclude Bonus-request.msg.html

(cl:defclass <Bonus-request> (roslisp-msg-protocol:ros-message)
  ((arg
    :reader arg
    :initarg :arg
    :type cl:integer
    :initform 0))
)

(cl:defclass Bonus-request (<Bonus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bonus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bonus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sushant-srv:<Bonus-request> is deprecated: use sushant-srv:Bonus-request instead.")))

(cl:ensure-generic-function 'arg-val :lambda-list '(m))
(cl:defmethod arg-val ((m <Bonus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushant-srv:arg-val is deprecated.  Use sushant-srv:arg instead.")
  (arg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bonus-request>) ostream)
  "Serializes a message object of type '<Bonus-request>"
  (cl:let* ((signed (cl:slot-value msg 'arg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bonus-request>) istream)
  "Deserializes a message object of type '<Bonus-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bonus-request>)))
  "Returns string type for a service object of type '<Bonus-request>"
  "sushant/BonusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bonus-request)))
  "Returns string type for a service object of type 'Bonus-request"
  "sushant/BonusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bonus-request>)))
  "Returns md5sum for a message object of type '<Bonus-request>"
  "4cb0d890bc6d9d096c24937d23485ba6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bonus-request)))
  "Returns md5sum for a message object of type 'Bonus-request"
  "4cb0d890bc6d9d096c24937d23485ba6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bonus-request>)))
  "Returns full string definition for message of type '<Bonus-request>"
  (cl:format cl:nil "int32 arg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bonus-request)))
  "Returns full string definition for message of type 'Bonus-request"
  (cl:format cl:nil "int32 arg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bonus-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bonus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Bonus-request
    (cl:cons ':arg (arg msg))
))
;//! \htmlinclude Bonus-response.msg.html

(cl:defclass <Bonus-response> (roslisp-msg-protocol:ros-message)
  ((out
    :reader out
    :initarg :out
    :type cl:integer
    :initform 0))
)

(cl:defclass Bonus-response (<Bonus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bonus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bonus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sushant-srv:<Bonus-response> is deprecated: use sushant-srv:Bonus-response instead.")))

(cl:ensure-generic-function 'out-val :lambda-list '(m))
(cl:defmethod out-val ((m <Bonus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushant-srv:out-val is deprecated.  Use sushant-srv:out instead.")
  (out m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bonus-response>) ostream)
  "Serializes a message object of type '<Bonus-response>"
  (cl:let* ((signed (cl:slot-value msg 'out)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bonus-response>) istream)
  "Deserializes a message object of type '<Bonus-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'out) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bonus-response>)))
  "Returns string type for a service object of type '<Bonus-response>"
  "sushant/BonusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bonus-response)))
  "Returns string type for a service object of type 'Bonus-response"
  "sushant/BonusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bonus-response>)))
  "Returns md5sum for a message object of type '<Bonus-response>"
  "4cb0d890bc6d9d096c24937d23485ba6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bonus-response)))
  "Returns md5sum for a message object of type 'Bonus-response"
  "4cb0d890bc6d9d096c24937d23485ba6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bonus-response>)))
  "Returns full string definition for message of type '<Bonus-response>"
  (cl:format cl:nil "int32 out~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bonus-response)))
  "Returns full string definition for message of type 'Bonus-response"
  (cl:format cl:nil "int32 out~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bonus-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bonus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Bonus-response
    (cl:cons ':out (out msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Bonus)))
  'Bonus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Bonus)))
  'Bonus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bonus)))
  "Returns string type for a service object of type '<Bonus>"
  "sushant/Bonus")