; Auto-generated. Do not edit!


(cl:in-package irisbot-msg)


;//! \htmlinclude DriveCmd.msg.html

(cl:defclass <DriveCmd> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:integer
    :initform 0))
)

(cl:defclass DriveCmd (<DriveCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irisbot-msg:<DriveCmd> is deprecated: use irisbot-msg:DriveCmd instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <DriveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:speed-val is deprecated.  Use irisbot-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <DriveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:distance-val is deprecated.  Use irisbot-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveCmd>) ostream)
  "Serializes a message object of type '<DriveCmd>"
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveCmd>) istream)
  "Deserializes a message object of type '<DriveCmd>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveCmd>)))
  "Returns string type for a message object of type '<DriveCmd>"
  "irisbot/DriveCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveCmd)))
  "Returns string type for a message object of type 'DriveCmd"
  "irisbot/DriveCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveCmd>)))
  "Returns md5sum for a message object of type '<DriveCmd>"
  "23af4beb5c0ba546ff12a4473f8899f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveCmd)))
  "Returns md5sum for a message object of type 'DriveCmd"
  "23af4beb5c0ba546ff12a4473f8899f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveCmd>)))
  "Returns full string definition for message of type '<DriveCmd>"
  (cl:format cl:nil "int32 speed~%int32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveCmd)))
  "Returns full string definition for message of type 'DriveCmd"
  (cl:format cl:nil "int32 speed~%int32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveCmd>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveCmd
    (cl:cons ':speed (speed msg))
    (cl:cons ':distance (distance msg))
))
