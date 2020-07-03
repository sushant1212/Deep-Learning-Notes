
(cl:in-package :asdf)

(defsystem "electronics-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Rover" :depends-on ("_package_Rover"))
    (:file "_package_Rover" :depends-on ("_package"))
  ))