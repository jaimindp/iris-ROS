; Auto-generated. Do not edit!


(cl:in-package irisbot-msg)


;//! \htmlinclude NodeLoc.msg.html

(cl:defclass <NodeLoc> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type irisbot-msg:Node
    :initform (cl:make-instance 'irisbot-msg:Node))
   (pose
    :reader pose
    :initarg :pose
    :type irisbot-msg:Pose
    :initform (cl:make-instance 'irisbot-msg:Pose)))
)

(cl:defclass NodeLoc (<NodeLoc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeLoc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeLoc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irisbot-msg:<NodeLoc> is deprecated: use irisbot-msg:NodeLoc instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <NodeLoc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:node-val is deprecated.  Use irisbot-msg:node instead.")
  (node m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <NodeLoc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:pose-val is deprecated.  Use irisbot-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeLoc>) ostream)
  "Serializes a message object of type '<NodeLoc>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeLoc>) istream)
  "Deserializes a message object of type '<NodeLoc>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeLoc>)))
  "Returns string type for a message object of type '<NodeLoc>"
  "irisbot/NodeLoc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeLoc)))
  "Returns string type for a message object of type 'NodeLoc"
  "irisbot/NodeLoc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeLoc>)))
  "Returns md5sum for a message object of type '<NodeLoc>"
  "3a6c7065a9f37e986ee4a92a84079bbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeLoc)))
  "Returns md5sum for a message object of type 'NodeLoc"
  "3a6c7065a9f37e986ee4a92a84079bbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeLoc>)))
  "Returns full string definition for message of type '<NodeLoc>"
  (cl:format cl:nil "Node node~%Pose pose~%~%================================================================================~%MSG: irisbot/Node~%int32 ID~%int32 addr~%string role~%~%================================================================================~%MSG: irisbot/Pose~%float32 x~%float32 y~%float32 orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeLoc)))
  "Returns full string definition for message of type 'NodeLoc"
  (cl:format cl:nil "Node node~%Pose pose~%~%================================================================================~%MSG: irisbot/Node~%int32 ID~%int32 addr~%string role~%~%================================================================================~%MSG: irisbot/Pose~%float32 x~%float32 y~%float32 orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeLoc>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeLoc>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeLoc
    (cl:cons ':node (node msg))
    (cl:cons ':pose (pose msg))
))
