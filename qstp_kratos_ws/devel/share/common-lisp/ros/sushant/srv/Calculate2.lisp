; Auto-generated. Do not edit!


(cl:in-package sushant-srv)


;//! \htmlinclude Calculate2-request.msg.html

(cl:defclass <Calculate2-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (op
    :reader op
    :initarg :op
    :type cl:string
    :initform ""))
)

(cl:defclass Calculate2-request (<Calculate2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Calculate2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Calculate2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sushant-srv:<Calculate2-request> is deprecated: use sushant-srv:Calculate2-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Calculate2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushant-srv:a-val is deprecated.  Use sushant-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'op-val :lambda-list '(m))
(cl:defmethod op-val ((m <Calculate2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushant-srv:op-val is deprecated.  Use sushant-srv:op instead.")
  (op m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Calculate2-request>) ostream)
  "Serializes a message object of type '<Calculate2-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'op))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'op))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Calculate2-request>) istream)
  "Deserializes a message object of type '<Calculate2-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'op) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'op) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Calculate2-request>)))
  "Returns string type for a service object of type '<Calculate2-request>"
  "sushant/Calculate2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calculate2-request)))
  "Returns string type for a service object of type 'Calculate2-request"
  "sushant/Calculate2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Calculate2-request>)))
  "Returns md5sum for a message object of type '<Calculate2-request>"
  "e7673e4ea221df947a4d6bd8795746a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Calculate2-request)))
  "Returns md5sum for a message object of type 'Calculate2-request"
  "e7673e4ea221df947a4d6bd8795746a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Calculate2-request>)))
  "Returns full string definition for message of type '<Calculate2-request>"
  (cl:format cl:nil "float32 a~%string op~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Calculate2-request)))
  "Returns full string definition for message of type 'Calculate2-request"
  (cl:format cl:nil "float32 a~%string op~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Calculate2-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'op))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Calculate2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Calculate2-request
    (cl:cons ':a (a msg))
    (cl:cons ':op (op msg))
))
;//! \htmlinclude Calculate2-response.msg.html

(cl:defclass <Calculate2-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:float
    :initform 0.0))
)

(cl:defclass Calculate2-response (<Calculate2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Calculate2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Calculate2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sushant-srv:<Calculate2-response> is deprecated: use sushant-srv:Calculate2-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <Calculate2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushant-srv:res-val is deprecated.  Use sushant-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Calculate2-response>) ostream)
  "Serializes a message object of type '<Calculate2-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Calculate2-response>) istream)
  "Deserializes a message object of type '<Calculate2-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'res) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Calculate2-response>)))
  "Returns string type for a service object of type '<Calculate2-response>"
  "sushant/Calculate2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calculate2-response)))
  "Returns string type for a service object of type 'Calculate2-response"
  "sushant/Calculate2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Calculate2-response>)))
  "Returns md5sum for a message object of type '<Calculate2-response>"
  "e7673e4ea221df947a4d6bd8795746a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Calculate2-response)))
  "Returns md5sum for a message object of type 'Calculate2-response"
  "e7673e4ea221df947a4d6bd8795746a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Calculate2-response>)))
  "Returns full string definition for message of type '<Calculate2-response>"
  (cl:format cl:nil "float32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Calculate2-response)))
  "Returns full string definition for message of type 'Calculate2-response"
  (cl:format cl:nil "float32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Calculate2-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Calculate2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Calculate2-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Calculate2)))
  'Calculate2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Calculate2)))
  'Calculate2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calculate2)))
  "Returns string type for a service object of type '<Calculate2>"
  "sushant/Calculate2")