;; Auto-generated. Do not edit!


(when (boundp 'sushant::Calculate2)
  (if (not (find-package "SUSHANT"))
    (make-package "SUSHANT"))
  (shadow 'Calculate2 (find-package "SUSHANT")))
(unless (find-package "SUSHANT::CALCULATE2")
  (make-package "SUSHANT::CALCULATE2"))
(unless (find-package "SUSHANT::CALCULATE2REQUEST")
  (make-package "SUSHANT::CALCULATE2REQUEST"))
(unless (find-package "SUSHANT::CALCULATE2RESPONSE")
  (make-package "SUSHANT::CALCULATE2RESPONSE"))

(in-package "ROS")





(defclass sushant::Calculate2Request
  :super ros::object
  :slots (_a _op ))

(defmethod sushant::Calculate2Request
  (:init
   (&key
    ((:a __a) 0.0)
    ((:op __op) "")
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _op (string __op))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:op
   (&optional __op)
   (if __op (setq _op __op)) _op)
  (:serialization-length
   ()
   (+
    ;; float32 _a
    4
    ;; string _op
    4 (length _op)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _op
       (write-long (length _op) s) (princ _op s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _op
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _op (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sushant::Calculate2Response
  :super ros::object
  :slots (_res ))

(defmethod sushant::Calculate2Response
  (:init
   (&key
    ((:res __res) 0.0)
    )
   (send-super :init)
   (setq _res (float __res))
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; float32 _res
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _res
       (sys::poke _res (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _res
     (setq _res (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sushant::Calculate2
  :super ros::object
  :slots ())

(setf (get sushant::Calculate2 :md5sum-) "e7673e4ea221df947a4d6bd8795746a2")
(setf (get sushant::Calculate2 :datatype-) "sushant/Calculate2")
(setf (get sushant::Calculate2 :request) sushant::Calculate2Request)
(setf (get sushant::Calculate2 :response) sushant::Calculate2Response)

(defmethod sushant::Calculate2Request
  (:response () (instance sushant::Calculate2Response :init)))

(setf (get sushant::Calculate2Request :md5sum-) "e7673e4ea221df947a4d6bd8795746a2")
(setf (get sushant::Calculate2Request :datatype-) "sushant/Calculate2Request")
(setf (get sushant::Calculate2Request :definition-)
      "float32 a
string op
---
float32 res
")

(setf (get sushant::Calculate2Response :md5sum-) "e7673e4ea221df947a4d6bd8795746a2")
(setf (get sushant::Calculate2Response :datatype-) "sushant/Calculate2Response")
(setf (get sushant::Calculate2Response :definition-)
      "float32 a
string op
---
float32 res
")



(provide :sushant/Calculate2 "e7673e4ea221df947a4d6bd8795746a2")


