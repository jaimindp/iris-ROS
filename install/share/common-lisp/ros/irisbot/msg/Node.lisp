; Auto-generated. Do not edit!


(cl:in-package irisbot-msg)


;//! \htmlinclude Node.msg.html

(cl:defclass <Node> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (addr
    :reader addr
    :initarg :addr
    :type cl:integer
    :initform 0)
   (role
    :reader role
    :initarg :role
    :type cl:string
    :initform ""))
)

(cl:defclass Node (<Node>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Node>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Node)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irisbot-msg:<Node> is deprecated: use irisbot-msg:Node instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <Node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:ID-val is deprecated.  Use irisbot-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'addr-val :lambda-list '(m))
(cl:defmethod addr-val ((m <Node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:addr-val is deprecated.  Use irisbot-msg:addr instead.")
  (addr m))

(cl:ensure-generic-function 'role-val :lambda-list '(m))
(cl:defmethod role-val ((m <Node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-msg:role-val is deprecated.  Use irisbot-msg:role instead.")
  (role m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Node>) ostream)
  "Serializes a message object of type '<Node>"
  (cl:let* ((signed (cl:slot-value msg 'ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'addr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'role))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'role))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Node>) istream)
  "Deserializes a message object of type '<Node>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'addr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'role) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'role) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Node>)))
  "Returns string type for a message object of type '<Node>"
  "irisbot/Node")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Node)))
  "Returns string type for a message object of type 'Node"
  "irisbot/Node")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Node>)))
  "Returns md5sum for a message object of type '<Node>"
  "89ccaae8816f2f8e9fc6aef673dfaa4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Node)))
  "Returns md5sum for a message object of type 'Node"
  "89ccaae8816f2f8e9fc6aef673dfaa4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Node>)))
  "Returns full string definition for message of type '<Node>"
  (cl:format cl:nil "int32 ID~%int32 addr~%string role~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Node)))
  "Returns full string definition for message of type 'Node"
  (cl:format cl:nil "int32 ID~%int32 addr~%string role~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Node>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'role))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Node>))
  "Converts a ROS message object to a list"
  (cl:list 'Node
    (cl:cons ':ID (ID msg))
    (cl:cons ':addr (addr msg))
    (cl:cons ':role (role msg))
))
