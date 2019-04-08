; Auto-generated. Do not edit!


(cl:in-package irisbot-msg)


;//! \htmlinclude MoveCmd.msg.html

(cl:defclass <MoveCmd> (roslisp-msg-protocol:ros-message)
  ((orientation
    :reader orientation
    :initarg :orientation
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveCmd (<MoveCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irisbot-msg:<MoveCmd> is deprecated: use irisbot-msg:MoveCmd instead.")))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <MoveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:orientation-val is deprecated.  Use irisbot-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MoveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:speed-val is deprecated.  Use irisbot-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <MoveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:distance-val is deprecated.  Use irisbot-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveCmd>) ostream)
  "Serializes a message object of type '<MoveCmd>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveCmd>) istream)
  "Deserializes a message object of type '<MoveCmd>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveCmd>)))
  "Returns string type for a message object of type '<MoveCmd>"
  "irisbot/MoveCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveCmd)))
  "Returns string type for a message object of type 'MoveCmd"
  "irisbot/MoveCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveCmd>)))
  "Returns md5sum for a message object of type '<MoveCmd>"
  "0f5c5a8e2615982cda00bd1a9073b52e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveCmd)))
  "Returns md5sum for a message object of type 'MoveCmd"
  "0f5c5a8e2615982cda00bd1a9073b52e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveCmd>)))
  "Returns full string definition for message of type '<MoveCmd>"
  (cl:format cl:nil "float32 orientation~%float32 speed~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveCmd)))
  "Returns full string definition for message of type 'MoveCmd"
  (cl:format cl:nil "float32 orientation~%float32 speed~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveCmd>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveCmd
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':distance (distance msg))
))
