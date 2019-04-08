;; Auto-generated. Do not edit!


(when (boundp 'irisbot::NodeMsg)
  (if (not (find-package "IRISBOT"))
    (make-package "IRISBOT"))
  (shadow 'NodeMsg (find-package "IRISBOT")))
(unless (find-package "IRISBOT::NODEMSG")
  (make-package "IRISBOT::NODEMSG"))

(in-package "ROS")
;;//! \htmlinclude NodeMsg.msg.html


(defclass irisbot::NodeMsg
  :super ros::object
  :slots (_node _message ))

(defmethod irisbot::NodeMsg
  (:init
   (&key
    ((:node __node) (instance irisbot::Node :init))
    ((:message __message) "")
    )
   (send-super :init)
   (setq _node __node)
   (setq _message (string __message))
   self)
  (:node
   (&rest __node)
   (if (keywordp (car __node))
       (send* _node __node)
     (progn
       (if __node (setq _node (car __node)))
       _node)))
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; irisbot/Node _node
    (send _node :serialization-length)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; irisbot/Node _node
       (send _node :serialize s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; irisbot/Node _node
     (send _node :deserialize buf ptr-) (incf ptr- (send _node :serialization-length))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get irisbot::NodeMsg :md5sum-) "92c675d5552e0ff0444fb567ca5dc17e")
(setf (get irisbot::NodeMsg :datatype-) "irisbot/NodeMsg")
(setf (get irisbot::NodeMsg :definition-)
      "Node node
string message

================================================================================
MSG: irisbot/Node
int32 ID
int32 addr
string role

")



(provide :irisbot/NodeMsg "92c675d5552e0ff0444fb567ca5dc17e")


