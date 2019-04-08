
(cl:in-package :asdf)

(defsystem "irisbot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DriveCmd" :depends-on ("_package_DriveCmd"))
    (:file "_package_DriveCmd" :depends-on ("_package"))
    (:file "Node" :depends-on ("_package_Node"))
    (:file "_package_Node" :depends-on ("_package"))
    (:file "NodeLoc" :depends-on ("_package_NodeLoc"))
    (:file "_package_NodeLoc" :depends-on ("_package"))
    (:file "NodeMsg" :depends-on ("_package_NodeMsg"))
    (:file "_package_NodeMsg" :depends-on ("_package"))
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "RotateCmd" :depends-on ("_package_RotateCmd"))
    (:file "_package_RotateCmd" :depends-on ("_package"))
  ))