
(cl:in-package :asdf)

(defsystem "erick-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "servCuadrado" :depends-on ("_package_servCuadrado"))
    (:file "_package_servCuadrado" :depends-on ("_package"))
  ))