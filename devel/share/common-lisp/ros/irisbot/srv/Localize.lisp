; Auto-generated. Do not edit!


(cl:in-package irisbot-srv)


;//! \htmlinclude Localize-request.msg.html

(cl:defclass <Localize-request> (roslisp-msg-protocol:ros-message)
  ((anchor1
    :reader anchor1
    :initarg :anchor1
    :type irisbot-msg:NodeLoc
    :initform (cl:make-instance 'irisbot-msg:NodeLoc))
   (anchor2
    :reader anchor2
    :initarg :anchor2
    :type irisbot-msg:NodeLoc
    :initform (cl:make-instance 'irisbot-msg:NodeLoc))
   (anchor3
    :reader anchor3
    :initarg :anchor3
    :type irisbot-msg:NodeLoc
    :initform (cl:make-instance 'irisbot-msg:NodeLoc)))
)

(cl:defclass Localize-request (<Localize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Localize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Localize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irisbot-srv:<Localize-request> is deprecated: use irisbot-srv:Localize-request instead.")))

(cl:ensure-generic-function 'anchor1-val :lambda-list '(m))
(cl:defmethod anchor1-val ((m <Localize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-srv:anchor1-val is deprecated.  Use irisbot-srv:anchor1 instead.")
  (anchor1 m))

(cl:ensure-generic-function 'anchor2-val :lambda-list '(m))
(cl:defmethod anchor2-val ((m <Localize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-srv:anchor2-val is deprecated.  Use irisbot-srv:anchor2 instead.")
  (anchor2 m))

(cl:ensure-generic-function 'anchor3-val :lambda-list '(m))
(cl:defmethod anchor3-val ((m <Localize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-srv:anchor3-val is deprecated.  Use irisbot-srv:anchor3 instead.")
  (anchor3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Localize-request>) ostream)
  "Serializes a message object of type '<Localize-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor3) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Localize-request>) istream)
  "Deserializes a message object of type '<Localize-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor3) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Localize-request>)))
  "Returns string type for a service object of type '<Localize-request>"
  "irisbot/LocalizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Localize-request)))
  "Returns string type for a service object of type 'Localize-request"
  "irisbot/LocalizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Localize-request>)))
  "Returns md5sum for a message object of type '<Localize-request>"
  "7b1f8b4ce8b7517335b67cd48d174add")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Localize-request)))
  "Returns md5sum for a message object of type 'Localize-request"
  "7b1f8b4ce8b7517335b67cd48d174add")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Localize-request>)))
  "Returns full string definition for message of type '<Localize-request>"
  (cl:format cl:nil "NodeLoc anchor1~%NodeLoc anchor2~%NodeLoc anchor3~%~%================================================================================~%MSG: irisbot/NodeLoc~%Node node~%Pose pose~%~%================================================================================~%MSG: irisbot/Node~%int32 ID~%int32 addr~%string role~%~%================================================================================~%MSG: irisbot/Pose~%float32 x~%float32 y~%float32 orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Localize-request)))
  "Returns full string definition for message of type 'Localize-request"
  (cl:format cl:nil "NodeLoc anchor1~%NodeLoc anchor2~%NodeLoc anchor3~%~%================================================================================~%MSG: irisbot/NodeLoc~%Node node~%Pose pose~%~%================================================================================~%MSG: irisbot/Node~%int32 ID~%int32 addr~%string role~%~%================================================================================~%MSG: irisbot/Pose~%float32 x~%float32 y~%float32 orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Localize-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor3))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Localize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Localize-request
    (cl:cons ':anchor1 (anchor1 msg))
    (cl:cons ':anchor2 (anchor2 msg))
    (cl:cons ':anchor3 (anchor3 msg))
))
;//! \htmlinclude Localize-response.msg.html

(cl:defclass <Localize-response> (roslisp-msg-protocol:ros-message)
  ((rel_pose
    :reader rel_pose
    :initarg :rel_pose
    :type irisbot-msg:Pose
    :initform (cl:make-instance 'irisbot-msg:Pose)))
)

(cl:defclass Localize-response (<Localize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Localize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Localize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irisbot-srv:<Localize-response> is deprecated: use irisbot-srv:Localize-response instead.")))

(cl:ensure-generic-function 'rel_pose-val :lambda-list '(m))
(cl:defmethod rel_pose-val ((m <Localize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-srv:rel_pose-val is deprecated.  Use irisbot-srv:rel_pose instead.")
  (rel_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Localize-response>) ostream)
  "Serializes a message object of type '<Localize-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rel_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Localize-response>) istream)
  "Deserializes a message object of type '<Localize-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rel_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Localize-response>)))
  "Returns string type for a service object of type '<Localize-response>"
  "irisbot/LocalizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Localize-response)))
  "Returns string type for a service object of type 'Localize-response"
  "irisbot/LocalizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Localize-response>)))
  "Returns md5sum for a message object of type '<Localize-response>"
  "7b1f8b4ce8b7517335b67cd48d174add")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Localize-response)))
  "Returns md5sum for a message object of type 'Localize-response"
  "7b1f8b4ce8b7517335b67cd48d174add")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Localize-response>)))
  "Returns full string definition for message of type '<Localize-response>"
  (cl:format cl:nil "Pose rel_pose~%~%~%================================================================================~%MSG: irisbot/Pose~%float32 x~%float32 y~%float32 orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Localize-response)))
  "Returns full string definition for message of type 'Localize-response"
  (cl:format cl:nil "Pose rel_pose~%~%~%================================================================================~%MSG: irisbot/Pose~%float32 x~%float32 y~%float32 orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Localize-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rel_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Localize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Localize-response
    (cl:cons ':rel_pose (rel_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Localize)))
  'Localize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Localize)))
  'Localize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Localize)))
  "Returns string type for a service object of type '<Localize>"
  "irisbot/Localize")