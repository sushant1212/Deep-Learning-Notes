;; Auto-generated. Do not edit!


(when (boundp 'electronics::Rover)
  (if (not (find-package "ELECTRONICS"))
    (make-package "ELECTRONICS"))
  (shadow 'Rover (find-package "ELECTRONICS")))
(unless (find-package "ELECTRONICS::ROVER")
  (make-package "ELECTRONICS::ROVER"))

(in-package "ROS")
;;//! \htmlinclude Rover.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass electronics::Rover
  :super ros::object
  :slots (_vel _distance _coordinates _power _t ))

(defmethod electronics::Rover
  (:init
   (&key
    ((:vel __vel) (instance geometry_msgs::Twist :init))
    ((:distance __distance) 0.0)
    ((:coordinates __coordinates) (instance geometry_msgs::Pose :init))
    ((:power __power) 0)
    ((:t __t) (instance ros::time :init))
    )
   (send-super :init)
   (setq _vel __vel)
   (setq _distance (float __distance))
   (setq _coordinates __coordinates)
   (setq _power (round __power))
   (setq _t __t)
   self)
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:coordinates
   (&rest __coordinates)
   (if (keywordp (car __coordinates))
       (send* _coordinates __coordinates)
     (progn
       (if __coordinates (setq _coordinates (car __coordinates)))
       _coordinates)))
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _vel
    (send _vel :serialization-length)
    ;; float32 _distance
    4
    ;; geometry_msgs/Pose _coordinates
    (send _coordinates :serialization-length)
    ;; int32 _power
    4
    ;; duration _t
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _vel
       (send _vel :serialize s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Pose _coordinates
       (send _coordinates :serialize s)
     ;; int32 _power
       (write-long _power s)
     ;; duration _t
       (write-long (send _t :sec) s) (write-long (send _t :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Pose _coordinates
     (send _coordinates :deserialize buf ptr-) (incf ptr- (send _coordinates :serialization-length))
   ;; int32 _power
     (setq _power (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _t
     (send _t :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _t :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get electronics::Rover :md5sum-) "32418e249bb737b8265c4e2f1311464b")
(setf (get electronics::Rover :datatype-) "electronics/Rover")
(setf (get electronics::Rover :definition-)
      "geometry_msgs/Twist vel
float32 distance
geometry_msgs/Pose coordinates
int32 power
duration t

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :electronics/Rover "32418e249bb737b8265c4e2f1311464b")


