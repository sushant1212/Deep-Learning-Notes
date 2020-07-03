;; Auto-generated. Do not edit!


(when (boundp 'sushant::Bonus)
  (if (not (find-package "SUSHANT"))
    (make-package "SUSHANT"))
  (shadow 'Bonus (find-package "SUSHANT")))
(unless (find-package "SUSHANT::BONUS")
  (make-package "SUSHANT::BONUS"))
(unless (find-package "SUSHANT::BONUSREQUEST")
  (make-package "SUSHANT::BONUSREQUEST"))
(unless (find-package "SUSHANT::BONUSRESPONSE")
  (make-package "SUSHANT::BONUSRESPONSE"))

(in-package "ROS")





(defclass sushant::BonusRequest
  :super ros::object
  :slots (_arg ))

(defmethod sushant::BonusRequest
  (:init
   (&key
    ((:arg __arg) 0)
    )
   (send-super :init)
   (setq _arg (round __arg))
   self)
  (:arg
   (&optional __arg)
   (if __arg (setq _arg __arg)) _arg)
  (:serialization-length
   ()
   (+
    ;; int32 _arg
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _arg
       (write-long _arg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _arg
     (setq _arg (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sushant::BonusResponse
  :super ros::object
  :slots (_out ))

(defmethod sushant::BonusResponse
  (:init
   (&key
    ((:out __out) 0)
    )
   (send-super :init)
   (setq _out (round __out))
   self)
  (:out
   (&optional __out)
   (if __out (setq _out __out)) _out)
  (:serialization-length
   ()
   (+
    ;; int32 _out
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _out
       (write-long _out s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _out
     (setq _out (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sushant::Bonus
  :super ros::object
  :slots ())

(setf (get sushant::Bonus :md5sum-) "4cb0d890bc6d9d096c24937d23485ba6")
(setf (get sushant::Bonus :datatype-) "sushant/Bonus")
(setf (get sushant::Bonus :request) sushant::BonusRequest)
(setf (get sushant::Bonus :response) sushant::BonusResponse)

(defmethod sushant::BonusRequest
  (:response () (instance sushant::BonusResponse :init)))

(setf (get sushant::BonusRequest :md5sum-) "4cb0d890bc6d9d096c24937d23485ba6")
(setf (get sushant::BonusRequest :datatype-) "sushant/BonusRequest")
(setf (get sushant::BonusRequest :definition-)
      "int32 arg
---
int32 out
")

(setf (get sushant::BonusResponse :md5sum-) "4cb0d890bc6d9d096c24937d23485ba6")
(setf (get sushant::BonusResponse :datatype-) "sushant/BonusResponse")
(setf (get sushant::BonusResponse :definition-)
      "int32 arg
---
int32 out
")



(provide :sushant/Bonus "4cb0d890bc6d9d096c24937d23485ba6")


