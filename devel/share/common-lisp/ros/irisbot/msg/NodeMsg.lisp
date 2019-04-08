; Auto-generated. Do not edit!


(cl:in-package irisbot-msg)


;//! \htmlinclude NodeMsg.msg.html

(cl:defclass <NodeMsg> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type irisbot-msg:Node
    :initform (cl:make-instance 'irisbot-msg:Node))
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass NodeMsg (<NodeMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irisbot-msg:<NodeMsg> is deprecated: use irisbot-msg:NodeMsg instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <NodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:node-val is deprecated.  Use irisbot-msg:node instead.")
  (node m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <NodeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:message-val is deprecated.  Use irisbot-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeMsg>) ostream)
  "Serializes a message object of type '<NodeMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeMsg>) istream)
  "Deserializes a message object of type '<NodeMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeMsg>)))
  "Returns string type for a message object of type '<NodeMsg>"
  "irisbot/NodeMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeMsg)))
  "Returns string type for a message object of type 'NodeMsg"
  "irisbot/NodeMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeMsg>)))
  "Returns md5sum for a message object of type '<NodeMsg>"
  "92c675d5552e0ff0444fb567ca5dc17e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeMsg)))
  "Returns md5sum for a message object of type 'NodeMsg"
  "92c675d5552e0ff0444fb567ca5dc17e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeMsg>)))
  "Returns full string definition for message of type '<NodeMsg>"
  (cl:format cl:nil "Node node~%string message~%~%================================================================================~%MSG: irisbot/Node~%int32 ID~%int32 addr~%string role~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeMsg)))
  "Returns full string definition for message of type 'NodeMsg"
  (cl:format cl:nil "Node node~%string message~%~%================================================================================~%MSG: irisbot/Node~%int32 ID~%int32 addr~%string role~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeMsg
    (cl:cons ':node (node msg))
    (cl:cons ':message (message msg))
))
