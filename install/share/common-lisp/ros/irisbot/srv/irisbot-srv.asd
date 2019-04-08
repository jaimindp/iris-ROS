
(cl:in-package :asdf)

(defsystem "irisbot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :irisbot-msg
)
  :components ((:file "_package")
    (:file "GetAnchor" :depends-on ("_package_GetAnchor"))
    (:file "_package_GetAnchor" :depends-on ("_package"))
  ))