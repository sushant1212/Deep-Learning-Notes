;; Auto-generated. Do not edit!


(when (boundp 'sushant::Calculate)
  (if (not (find-package "SUSHANT"))
    (make-package "SUSHANT"))
  (shadow 'Calculate (find-package "SUSHANT")))
(unless (find-package "SUSHANT::CALCULATE")
  (make-package "SUSHANT::CALCULATE"))
(unless (find-package "SUSHANT::CALCULATEREQUEST")
  (make-package "SUSHANT::CALCULATEREQUEST"))
(unless (find-package "SUSHANT::CALCULATERESPONSE")
  (make-package "SUSHANT::CALCULATERESPONSE"))

(in-package "ROS")





(defclass sushant::CalculateRequest
  :super ros::object
  :slots (_a _b _op ))

(defmethod sushant::CalculateRequest
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:op __op) "")
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _op (string __op))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:op
   (&optional __op)
   (if __op (setq _op __op)) _op)
  (:serialization-length
   ()
   (+
    ;; float32 _a
    4
    ;; float32 _b
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
     ;; float32 _b
       (sys::poke _b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _op
       (write-long (length _op) s) (princ _op s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _b
     (setq _b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _op
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _op (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sushant::CalculateResponse
  :super ros::object
  :slots (_res ))

(defmethod sushant::CalculateResponse
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

(defclass sushant::Calculate
  :super ros::object
  :slots ())

(setf (get sushant::Calculate :md5sum-) "4f9050e81d07f2b4cef4589399b1dcb1")
(setf (get sushant::Calculate :datatype-) "sushant/Calculate")
(setf (get sushant::Calculate :request) sushant::CalculateRequest)
(setf (get sushant::Calculate :response) sushant::CalculateResponse)

(defmethod sushant::CalculateRequest
  (:response () (instance sushant::CalculateResponse :init)))

(setf (get sushant::CalculateRequest :md5sum-) "4f9050e81d07f2b4cef4589399b1dcb1")
(setf (get sushant::CalculateRequest :datatype-) "sushant/CalculateRequest")
(setf (get sushant::CalculateRequest :definition-)
      "float32 a
float32 b
string op
---
float32 res
")

(setf (get sushant::CalculateResponse :md5sum-) "4f9050e81d07f2b4cef4589399b1dcb1")
(setf (get sushant::CalculateResponse :datatype-) "sushant/CalculateResponse")
(setf (get sushant::CalculateResponse :definition-)
      "float32 a
float32 b
string op
---
float32 res
")



(provide :sushant/Calculate "4f9050e81d07f2b4cef4589399b1dcb1")


