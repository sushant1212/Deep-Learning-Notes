
(cl:in-package :asdf)

(defsystem "sushant-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Bonus" :depends-on ("_package_Bonus"))
    (:file "_package_Bonus" :depends-on ("_package"))
    (:file "Calculate" :depends-on ("_package_Calculate"))
    (:file "_package_Calculate" :depends-on ("_package"))
    (:file "Calculate2" :depends-on ("_package_Calculate2"))
    (:file "_package_Calculate2" :depends-on ("_package"))
  ))