;; Auto-generated. Do not edit!


(when (boundp 'irisbot::Discovery)
  (if (not (find-package "IRISBOT"))
    (make-package "IRISBOT"))
  (shadow 'Discovery (find-package "IRISBOT")))
(unless (find-package "IRISBOT::DISCOVERY")
  (make-package "IRISBOT::DISCOVERY"))
(unless (find-package "IRISBOT::DISCOVERYREQUEST")
  (make-package "IRISBOT::DISCOVERYREQUEST"))
(unless (find-package "IRISBOT::DISCOVERYRESPONSE")
  (make-package "IRISBOT::DISCOVERYRESPONSE"))

(in-package "ROS")





(defclass irisbot::DiscoveryRequest
  :super ros::object
  :slots (_myself ))

(defmethod irisbot::DiscoveryRequest
  (:init
   (&key
    ((:myself __myself) (instance irisbot::Node :init))
    )
   (send-super :init)
   (setq _myself __myself)
   self)
  (:myself
   (&rest __myself)
   (if (keywordp (car __myself))
       (send* _myself __myself)
     (progn
       (if __myself (setq _myself (car __myself)))
       _myself)))
  (:serialization-length
   ()
   (+
    ;; irisbot/Node _myself
    (send _myself :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; irisbot/Node _myself
       (send _myself :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; irisbot/Node _myself
     (send _myself :deserialize buf ptr-) (incf ptr- (send _myself :serialization-length))
   ;;
   self)
  )

(defclass irisbot::DiscoveryResponse
  :super ros::object
  :slots (_anchor1 _anchor2 _anchor3 ))

(defmethod irisbot::DiscoveryResponse
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

(defclass irisbot::Discovery
  :super ros::object
  :slots ())

(setf (get irisbot::Discovery :md5sum-) "265f19547b1612b7a0fee47f7672b20c")
(setf (get irisbot::Discovery :datatype-) "irisbot/Discovery")
(setf (get irisbot::Discovery :request) irisbot::DiscoveryRequest)
(setf (get irisbot::Discovery :response) irisbot::DiscoveryResponse)

(defmethod irisbot::DiscoveryRequest
  (:response () (instance irisbot::DiscoveryResponse :init)))

(setf (get irisbot::DiscoveryRequest :md5sum-) "265f19547b1612b7a0fee47f7672b20c")
(setf (get irisbot::DiscoveryRequest :datatype-) "irisbot/DiscoveryRequest")
(setf (get irisbot::DiscoveryRequest :definition-)
      "Node myself

================================================================================
MSG: irisbot/Node
int32 ID
int32 addr
string role
---
NodeLoc anchor1
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
")

(setf (get irisbot::DiscoveryResponse :md5sum-) "265f19547b1612b7a0fee47f7672b20c")
(setf (get irisbot::DiscoveryResponse :datatype-) "irisbot/DiscoveryResponse")
(setf (get irisbot::DiscoveryResponse :definition-)
      "Node myself

================================================================================
MSG: irisbot/Node
int32 ID
int32 addr
string role
---
NodeLoc anchor1
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
")



(provide :irisbot/Discovery "265f19547b1612b7a0fee47f7672b20c")


