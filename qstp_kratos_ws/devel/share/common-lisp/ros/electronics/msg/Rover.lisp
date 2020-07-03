; Auto-generated. Do not edit!


(cl:in-package electronics-msg)


;//! \htmlinclude Rover.msg.html

(cl:defclass <Rover> (roslisp-msg-protocol:ros-message)
  ((vel
    :reader vel
    :initarg :vel
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (coordinates
    :reader coordinates
    :initarg :coordinates
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (power
    :reader power
    :initarg :power
    :type cl:integer
    :initform 0)
   (t
    :reader t
    :initarg :t
    :type cl:real
    :initform 0))
)

(cl:defclass Rover (<Rover>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rover>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rover)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name electronics-msg:<Rover> is deprecated: use electronics-msg:Rover instead.")))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <Rover>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader electronics-msg:vel-val is deprecated.  Use electronics-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <Rover>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader electronics-msg:distance-val is deprecated.  Use electronics-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'coordinates-val :lambda-list '(m))
(cl:defmethod coordinates-val ((m <Rover>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader electronics-msg:coordinates-val is deprecated.  Use electronics-msg:coordinates instead.")
  (coordinates m))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <Rover>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader electronics-msg:power-val is deprecated.  Use electronics-msg:power instead.")
  (power m))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <Rover>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader electronics-msg:t-val is deprecated.  Use electronics-msg:t instead.")
  (t m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rover>) ostream)
  "Serializes a message object of type '<Rover>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'coordinates) ostream)
  (cl:let* ((signed (cl:slot-value msg 'power)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 't)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 't) (cl:floor (cl:slot-value msg 't)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rover>) istream)
  "Deserializes a message object of type '<Rover>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'coordinates) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'power) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rover>)))
  "Returns string type for a message object of type '<Rover>"
  "electronics/Rover")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rover)))
  "Returns string type for a message object of type 'Rover"
  "electronics/Rover")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rover>)))
  "Returns md5sum for a message object of type '<Rover>"
  "32418e249bb737b8265c4e2f1311464b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rover)))
  "Returns md5sum for a message object of type 'Rover"
  "32418e249bb737b8265c4e2f1311464b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rover>)))
  "Returns full string definition for message of type '<Rover>"
  (cl:format cl:nil "geometry_msgs/Twist vel~%float32 distance~%geometry_msgs/Pose coordinates~%int32 power~%duration t~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rover)))
  "Returns full string definition for message of type 'Rover"
  (cl:format cl:nil "geometry_msgs/Twist vel~%float32 distance~%geometry_msgs/Pose coordinates~%int32 power~%duration t~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rover>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'coordinates))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rover>))
  "Converts a ROS message object to a list"
  (cl:list 'Rover
    (cl:cons ':vel (vel msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':coordinates (coordinates msg))
    (cl:cons ':power (power msg))
    (cl:cons ':t (t msg))
))
