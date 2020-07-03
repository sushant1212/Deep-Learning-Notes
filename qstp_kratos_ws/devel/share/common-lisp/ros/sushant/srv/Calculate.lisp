; Auto-generated. Do not edit!


(cl:in-package sushant-srv)


;//! \htmlinclude Calculate-request.msg.html

(cl:defclass <Calculate-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0)
   (op
    :reader op
    :initarg :op
    :type cl:string
    :initform ""))
)

(cl:defclass Calculate-request (<Calculate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Calculate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Calculate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sushant-srv:<Calculate-request> is deprecated: use sushant-srv:Calculate-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Calculate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushant-srv:a-val is deprecated.  Use sushant-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <Calculate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushant-srv:b-val is deprecated.  Use sushant-srv:b instead.")
  (b m))

(cl:ensure-generic-function 'op-val :lambda-list '(m))
(cl:defmethod op-val ((m <Calculate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushant-srv:op-val is deprecated.  Use sushant-srv:op instead.")
  (op m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Calculate-request>) ostream)
  "Serializes a message object of type '<Calculate-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'b))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Calculate-request>) istream)
  "Deserializes a message object of type '<Calculate-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Calculate-request>)))
  "Returns string type for a service object of type '<Calculate-request>"
  "sushant/CalculateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calculate-request)))
  "Returns string type for a service object of type 'Calculate-request"
  "sushant/CalculateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Calculate-request>)))
  "Returns md5sum for a message object of type '<Calculate-request>"
  "4f9050e81d07f2b4cef4589399b1dcb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Calculate-request)))
  "Returns md5sum for a message object of type 'Calculate-request"
  "4f9050e81d07f2b4cef4589399b1dcb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Calculate-request>)))
  "Returns full string definition for message of type '<Calculate-request>"
  (cl:format cl:nil "float32 a~%float32 b~%string op~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Calculate-request)))
  "Returns full string definition for message of type 'Calculate-request"
  (cl:format cl:nil "float32 a~%float32 b~%string op~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Calculate-request>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'op))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Calculate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Calculate-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':op (op msg))
))
;//! \htmlinclude Calculate-response.msg.html

(cl:defclass <Calculate-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:float
    :initform 0.0))
)

(cl:defclass Calculate-response (<Calculate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Calculate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Calculate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sushant-srv:<Calculate-response> is deprecated: use sushant-srv:Calculate-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <Calculate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sushant-srv:res-val is deprecated.  Use sushant-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Calculate-response>) ostream)
  "Serializes a message object of type '<Calculate-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Calculate-response>) istream)
  "Deserializes a message object of type '<Calculate-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'res) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Calculate-response>)))
  "Returns string type for a service object of type '<Calculate-response>"
  "sushant/CalculateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calculate-response)))
  "Returns string type for a service object of type 'Calculate-response"
  "sushant/CalculateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Calculate-response>)))
  "Returns md5sum for a message object of type '<Calculate-response>"
  "4f9050e81d07f2b4cef4589399b1dcb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Calculate-response)))
  "Returns md5sum for a message object of type 'Calculate-response"
  "4f9050e81d07f2b4cef4589399b1dcb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Calculate-response>)))
  "Returns full string definition for message of type '<Calculate-response>"
  (cl:format cl:nil "float32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Calculate-response)))
  "Returns full string definition for message of type 'Calculate-response"
  (cl:format cl:nil "float32 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Calculate-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Calculate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Calculate-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Calculate)))
  'Calculate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Calculate)))
  'Calculate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calculate)))
  "Returns string type for a service object of type '<Calculate>"
  "sushant/Calculate")