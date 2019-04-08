;; Auto-generated. Do not edit!


(when (boundp 'irisbot::NodeLoc)
  (if (not (find-package "IRISBOT"))
    (make-package "IRISBOT"))
  (shadow 'NodeLoc (find-package "IRISBOT")))
(unless (find-package "IRISBOT::NODELOC")
  (make-package "IRISBOT::NODELOC"))

(in-package "ROS")
;;//! \htmlinclude NodeLoc.msg.html


(defclass irisbot::NodeLoc
  :super ros::object
  :slots (_node _pose ))

(defmethod irisbot::NodeLoc
  (:init
   (&key
    ((:node __node) (instance irisbot::Node :init))
    ((:pose __pose) (instance irisbot::Pose :init))
    )
   (send-super :init)
   (setq _node __node)
   (setq _pose __pose)
   self)
  (:node
   (&rest __node)
   (if (keywordp (car __node))
       (send* _node __node)
     (progn
       (if __node (setq _node (car __node)))
       _node)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; irisbot/Node _node
    (send _node :serialization-length)
    ;; irisbot/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; irisbot/Node _node
       (send _node :serialize s)
     ;; irisbot/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; irisbot/Node _node
     (send _node :deserialize buf ptr-) (incf ptr- (send _node :serialization-length))
   ;; irisbot/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get irisbot::NodeLoc :md5sum-) "3a6c7065a9f37e986ee4a92a84079bbb")
(setf (get irisbot::NodeLoc :datatype-) "irisbot/NodeLoc")
(setf (get irisbot::NodeLoc :definition-)
      "Node node
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



(provide :irisbot/NodeLoc "3a6c7065a9f37e986ee4a92a84079bbb")


