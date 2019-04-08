; Auto-generated. Do not edit!


(cl:in-package irisbot-srv)


;//! \htmlinclude GetAnchor-request.msg.html

(cl:defclass <GetAnchor-request> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass GetAnchor-request (<GetAnchor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAnchor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAnchor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irisbot-srv:<GetAnchor-request> is deprecated: use irisbot-srv:GetAnchor-request instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <GetAnchor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-srv:ids-val is deprecated.  Use irisbot-srv:ids instead.")
  (ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAnchor-request>) ostream)
  "Serializes a message object of type '<GetAnchor-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAnchor-request>) istream)
  "Deserializes a message object of type '<GetAnchor-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAnchor-request>)))
  "Returns string type for a service object of type '<GetAnchor-request>"
  "irisbot/GetAnchorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAnchor-request)))
  "Returns string type for a service object of type 'GetAnchor-request"
  "irisbot/GetAnchorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAnchor-request>)))
  "Returns md5sum for a message object of type '<GetAnchor-request>"
  "f752ccbb67076c1bee44990c827507b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAnchor-request)))
  "Returns md5sum for a message object of type 'GetAnchor-request"
  "f752ccbb67076c1bee44990c827507b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAnchor-request>)))
  "Returns full string definition for message of type '<GetAnchor-request>"
  (cl:format cl:nil "int32[] ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAnchor-request)))
  "Returns full string definition for message of type 'GetAnchor-request"
  (cl:format cl:nil "int32[] ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAnchor-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAnchor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAnchor-request
    (cl:cons ':ids (ids msg))
))
;//! \htmlinclude GetAnchor-response.msg.html

(cl:defclass <GetAnchor-response> (roslisp-msg-protocol:ros-message)
  ((anchors
    :reader anchors
    :initarg :anchors
    :type (cl:vector irisbot-msg:NodeLoc)
   :initform (cl:make-array 0 :element-type 'irisbot-msg:NodeLoc :initial-element (cl:make-instance 'irisbot-msg:NodeLoc)))
   (dists
    :reader dists
    :initarg :dists
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetAnchor-response (<GetAnchor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAnchor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAnchor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irisbot-srv:<GetAnchor-response> is deprecated: use irisbot-srv:GetAnchor-response instead.")))

(cl:ensure-generic-function 'anchors-val :lambda-list '(m))
(cl:defmethod anchors-val ((m <GetAnchor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-srv:anchors-val is deprecated.  Use irisbot-srv:anchors instead.")
  (anchors m))

(cl:ensure-generic-function 'dists-val :lambda-list '(m))
(cl:defmethod dists-val ((m <GetAnchor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-srv:dists-val is deprecated.  Use irisbot-srv:dists instead.")
  (dists m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAnchor-response>) ostream)
  "Serializes a message object of type '<GetAnchor-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'anchors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'anchors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dists))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'dists))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAnchor-response>) istream)
  "Deserializes a message object of type '<GetAnchor-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'anchors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'anchors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'irisbot-msg:NodeLoc))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dists) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dists)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAnchor-response>)))
  "Returns string type for a service object of type '<GetAnchor-response>"
  "irisbot/GetAnchorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAnchor-response)))
  "Returns string type for a service object of type 'GetAnchor-response"
  "irisbot/GetAnchorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAnchor-response>)))
  "Returns md5sum for a message object of type '<GetAnchor-response>"
  "f752ccbb67076c1bee44990c827507b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAnchor-response)))
  "Returns md5sum for a message object of type 'GetAnchor-response"
  "f752ccbb67076c1bee44990c827507b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAnchor-response>)))
  "Returns full string definition for message of type '<GetAnchor-response>"
  (cl:format cl:nil "NodeLoc[] anchors~%float32[] dists~%~%~%================================================================================~%MSG: irisbot/NodeLoc~%Node node~%Pose pose~%~%================================================================================~%MSG: irisbot/Node~%int32 ID~%int32 addr~%string role~%~%================================================================================~%MSG: irisbot/Pose~%float32 x~%float32 y~%float32 orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAnchor-response)))
  "Returns full string definition for message of type 'GetAnchor-response"
  (cl:format cl:nil "NodeLoc[] anchors~%float32[] dists~%~%~%================================================================================~%MSG: irisbot/NodeLoc~%Node node~%Pose pose~%~%================================================================================~%MSG: irisbot/Node~%int32 ID~%int32 addr~%string role~%~%================================================================================~%MSG: irisbot/Pose~%float32 x~%float32 y~%float32 orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAnchor-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'anchors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dists) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAnchor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAnchor-response
    (cl:cons ':anchors (anchors msg))
    (cl:cons ':dists (dists msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAnchor)))
  'GetAnchor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAnchor)))
  'GetAnchor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAnchor)))
  "Returns string type for a service object of type '<GetAnchor>"
  "irisbot/GetAnchor")