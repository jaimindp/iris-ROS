; Auto-generated. Do not edit!


(cl:in-package irisbot-msg)


;//! \htmlinclude RotateCmd.msg.html

(cl:defclass <RotateCmd> (roslisp-msg-protocol:ros-message)
  ((degrees
    :reader degrees
    :initarg :degrees
    :type cl:integer
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:integer
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0))
)

(cl:defclass RotateCmd (<RotateCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RotateCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RotateCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irisbot-msg:<RotateCmd> is deprecated: use irisbot-msg:RotateCmd instead.")))

(cl:ensure-generic-function 'degrees-val :lambda-list '(m))
(cl:defmethod degrees-val ((m <RotateCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:degrees-val is deprecated.  Use irisbot-msg:degrees instead.")
  (degrees m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <RotateCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:direction-val is deprecated.  Use irisbot-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <RotateCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:speed-val is deprecated.  Use irisbot-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RotateCmd>) ostream)
  "Serializes a message object of type '<RotateCmd>"
  (cl:let* ((signed (cl:slot-value msg 'degrees)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RotateCmd>) istream)
  "Deserializes a message object of type '<RotateCmd>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'degrees) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RotateCmd>)))
  "Returns string type for a message object of type '<RotateCmd>"
  "irisbot/RotateCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RotateCmd)))
  "Returns string type for a message object of type 'RotateCmd"
  "irisbot/RotateCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RotateCmd>)))
  "Returns md5sum for a message object of type '<RotateCmd>"
  "e73a3a3f31369df7631a394a7fafc0cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RotateCmd)))
  "Returns md5sum for a message object of type 'RotateCmd"
  "e73a3a3f31369df7631a394a7fafc0cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RotateCmd>)))
  "Returns full string definition for message of type '<RotateCmd>"
  (cl:format cl:nil "int32 degrees~%int32 direction~%int32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RotateCmd)))
  "Returns full string definition for message of type 'RotateCmd"
  (cl:format cl:nil "int32 degrees~%int32 direction~%int32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RotateCmd>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RotateCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'RotateCmd
    (cl:cons ':degrees (degrees msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':speed (speed msg))
))
