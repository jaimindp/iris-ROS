;; Auto-generated. Do not edit!


(when (boundp 'irisbot::Localize)
  (if (not (find-package "IRISBOT"))
    (make-package "IRISBOT"))
  (shadow 'Localize (find-package "IRISBOT")))
(unless (find-package "IRISBOT::LOCALIZE")
  (make-package "IRISBOT::LOCALIZE"))
(unless (find-package "IRISBOT::LOCALIZEREQUEST")
  (make-package "IRISBOT::LOCALIZEREQUEST"))
(unless (find-package "IRISBOT::LOCALIZERESPONSE")
  (make-package "IRISBOT::LOCALIZERESPONSE"))

(in-package "ROS")





(defclass irisbot::LocalizeRequest
  :super ros::object
  :slots (_anchor1 _anchor2 _anchor3 ))

(defmethod irisbot::LocalizeRequest
  (:init
   (&key
    ((:anchor1 __anchor1) (instance irisbot::NodeLoc :init))
    ((:anchor2 __anchor2) (instance irisbot::NodeLoc :init))
    ((:anchor3 __anchor3) (instance irisbot::NodeLoc :init))
    )
   (send-super :init)
   (setq _anchor1 __anchor1)
   (setq _anchor2 __anchor2)
   (setq _anchor3 __anchor3)
   self)
  (:anchor1
   (&rest __anchor1)
   (if (keywordp (car __anchor1))
       (send* _anchor1 __anchor1)
     (progn
       (if __anchor1 (setq _anchor1 (car __anchor1)))
       _anchor1)))
  (:anchor2
   (&rest __anchor2)
   (if (keywordp (car __anchor2))
       (send* _anchor2 __anchor2)
     (progn
       (if __anchor2 (setq _anchor2 (car __anchor2)))
       _anchor2)))
  (:anchor3
   (&rest __anchor3)
   (if (keywordp (car __anchor3))
       (send* _anchor3 __anchor3)
     (progn
       (if __anchor3 (setq _anchor3 (car __anchor3)))
       _anchor3)))
  (:serialization-length
   ()
   (+
    ;; irisbot/NodeLoc _anchor1
    (send _anchor1 :serialization-length)
    ;; irisbot/NodeLoc _anchor2
    (send _anchor2 :serialization-length)
    ;; irisbot/NodeLoc _anchor3
    (send _anchor3 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; irisbot/NodeLoc _anchor1
       (send _anchor1 :serialize s)
     ;; irisbot/NodeLoc _anchor2
       (send _anchor2 :serialize s)
     ;; irisbot/NodeLoc _anchor3
       (send _anchor3 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; irisbot/NodeLoc _anchor1
     (send _anchor1 :deserialize buf ptr-) (incf ptr- (send _anchor1 :serialization-length))
   ;; irisbot/NodeLoc _anchor2
     (send _anchor2 :deserialize buf ptr-) (incf ptr- (send _anchor2 :serialization-length))
   ;; irisbot/NodeLoc _anchor3
     (send _anchor3 :deserialize buf ptr-) (incf ptr- (send _anchor3 :serialization-length))
   ;;
   self)
  )

(defclass irisbot::LocalizeResponse
  :super ros::object
  :slots (_rel_pose ))

(defmethod irisbot::LocalizeResponse
  (:init
   (&key
    ((:rel_pose __rel_pose) (instance irisbot::Pose :init))
    )
   (send-super :init)
   (setq _rel_pose __rel_pose)
   self)
  (:rel_pose
   (&rest __rel_pose)
   (if (keywordp (car __rel_pose))
       (send* _rel_pose __rel_pose)
     (progn
       (if __rel_pose (setq _rel_pose (car __rel_pose)))
       _rel_pose)))
  (:serialization-length
   ()
   (+
    ;; irisbot/Pose _rel_pose
    (send _rel_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; irisbot/Pose _rel_pose
       (send _rel_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; irisbot/Pose _rel_pose
     (send _rel_pose :deserialize buf ptr-) (incf ptr- (send _rel_pose :serialization-length))
   ;;
   self)
  )

(defclass irisbot::Localize
  :super ros::object
  :slots ())

(setf (get irisbot::Localize :md5sum-) "7b1f8b4ce8b7517335b67cd48d174add")
(setf (get irisbot::Localize :datatype-) "irisbot/Localize")
(setf (get irisbot::Localize :request) irisbot::LocalizeRequest)
(setf (get irisbot::Localize :response) irisbot::LocalizeResponse)

(defmethod irisbot::LocalizeRequest
  (:response () (instance irisbot::LocalizeResponse :init)))

(setf (get irisbot::LocalizeRequest :md5sum-) "7b1f8b4ce8b7517335b67cd48d174add")
(setf (get irisbot::LocalizeRequest :datatype-) "irisbot/LocalizeRequest")
(setf (get irisbot::LocalizeRequest :definition-)
      "NodeLoc anchor1
NodeLoc anchor2
NodeLoc anchor3

================================================================================
MSG: irisbot/NodeLoc
Node node
Pose pose

================================================================================
MSG: irisbot/Node
int32 ID
int32 addr
string role

================================================================================
MSG: irisbot/Pose
float32 x
float32 y
float32 orientation
---
Pose rel_pose


================================================================================
MSG: irisbot/Pose
float32 x
float32 y
float32 orientation
")

(setf (get irisbot::LocalizeResponse :md5sum-) "7b1f8b4ce8b7517335b67cd48d174add")
(setf (get irisbot::LocalizeResponse :datatype-) "irisbot/LocalizeResponse")
(setf (get irisbot::LocalizeResponse :definition-)
      "NodeLoc anchor1
NodeLoc anchor2
NodeLoc anchor3

================================================================================
MSG: irisbot/NodeLoc
Node node
Pose pose

================================================================================
MSG: irisbot/Node
int32 ID
int32 addr
string role

================================================================================
MSG: irisbot/Pose
float32 x
float32 y
float32 orientation
---
Pose rel_pose


================================================================================
MSG: irisbot/Pose
float32 x
float32 y
float32 orientation
")



(provide :irisbot/Localize "7b1f8b4ce8b7517335b67cd48d174add")


