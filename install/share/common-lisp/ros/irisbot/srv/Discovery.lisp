; Auto-generated. Do not edit!


(cl:in-package irisbot-srv)


;//! \htmlinclude Discovery-request.msg.html

(cl:defclass <Discovery-request> (roslisp-msg-protocol:ros-message)
  ((myself
    :reader myself
    :initarg :myself
    :type irisbot-msg:Node
    :initform (cl:make-instance 'irisbot-msg:Node)))
)

(cl:defclass Discovery-request (<Discovery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Discovery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Discovery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irisbot-srv:<Discovery-request> is deprecated: use irisbot-srv:Discovery-request instead.")))

(cl:ensure-generic-function 'myself-val :lambda-list '(m))
(cl:defmethod myself-val ((m <Discovery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-srv:myself-val is deprecated.  Use irisbot-srv:myself instead.")
  (myself m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Discovery-request>) ostream)
  "Serializes a message object of type '<Discovery-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'myself) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Discovery-request>) istream)
  "Deserializes a message object of type '<Discovery-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'myself) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Discovery-request>)))
  "Returns string type for a service object of type '<Discovery-request>"
  "irisbot/DiscoveryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Discovery-request)))
  "Returns string type for a service object of type 'Discovery-request"
  "irisbot/DiscoveryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Discovery-request>)))
  "Returns md5sum for a message object of type '<Discovery-request>"
  "265f19547b1612b7a0fee47f7672b20c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Discovery-request)))
  "Returns md5sum for a message object of type 'Discovery-request"
  "265f19547b1612b7a0fee47f7672b20c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Discovery-request>)))
  "Returns full string definition for message of type '<Discovery-request>"
  (cl:format cl:nil "Node myself~%~%================================================================================~%MSG: irisbot/Node~%int32 ID~%int32 addr~%string role~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Discovery-request)))
  "Returns full string definition for message of type 'Discovery-request"
  (cl:format cl:nil "Node myself~%~%================================================================================~%MSG: irisbot/Node~%int32 ID~%int32 addr~%string role~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Discovery-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'myself))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Discovery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Discovery-request
    (cl:cons ':myself (myself msg))
))
;//! \htmlinclude Discovery-response.msg.html

(cl:defclass <Discovery-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Discovery-response (<Discovery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Discovery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Discovery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name irisbot-srv:<Discovery-response> is deprecated: use irisbot-srv:Discovery-response instead.")))

(cl:ensure-generic-function 'anchor1-val :lambda-list '(m))
(cl:defmethod anchor1-val ((m <Discovery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-srv:anchor1-val is deprecated.  Use irisbot-srv:anchor1 instead.")
  (anchor1 m))

(cl:ensure-generic-function 'anchor2-val :lambda-list '(m))
(cl:defmethod anchor2-val ((m <Discovery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-srv:anchor2-val is deprecated.  Use irisbot-srv:anchor2 instead.")
  (anchor2 m))

(cl:ensure-generic-function 'anchor3-val :lambda-list '(m))
(cl:defmethod anchor3-val ((m <Discovery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader irisbot-srv:anchor3-val is deprecated.  Use irisbot-srv:anchor3 instead.")
  (anchor3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Discovery-response>) ostream)
  "Serializes a message object of type '<Discovery-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor3) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Discovery-response>) istream)
  "Deserializes a message object of type '<Discovery-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor3) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Discovery-response>)))
  "Returns string type for a service object of type '<Discovery-response>"
  "irisbot/DiscoveryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Discovery-response)))
  "Returns string type for a service object of type 'Discovery-response"
  "irisbot/DiscoveryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Discovery-response>)))
  "Returns md5sum for a message object of type '<Discovery-response>"
  "265f19547b1612b7a0fee47f7672b20c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Discovery-response)))
  "Returns md5sum for a message object of type 'Discovery-response"
  "265f19547b1612b7a0fee47f7672b20c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Discovery-response>)))
  "Returns full string definition for message of type '<Discovery-response>"
  (cl:format cl:nil "NodeLoc anchor1~%NodeLoc anchor2~%NodeLoc anchor3~%~%~%================================================================================~%MSG: irisbot/NodeLoc~%Node node~%Pose pose~%~%================================================================================~%MSG: irisbot/Node~%int32 ID~%int32 addr~%string role~%~%================================================================================~%MSG: irisbot/Pose~%float32 x~%float32 y~%float32 orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Discovery-response)))
  "Returns full string definition for message of type 'Discovery-response"
  (cl:format cl:nil "NodeLoc anchor1~%NodeLoc anchor2~%NodeLoc anchor3~%~%~%================================================================================~%MSG: irisbot/NodeLoc~%Node node~%Pose pose~%~%================================================================================~%MSG: irisbot/Node~%int32 ID~%int32 addr~%string role~%~%================================================================================~%MSG: irisbot/Pose~%float32 x~%float32 y~%float32 orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Discovery-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor3))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Discovery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Discovery-response
    (cl:cons ':anchor1 (anchor1 msg))
    (cl:cons ':anchor2 (anchor2 msg))
    (cl:cons ':anchor3 (anchor3 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Discovery)))
  'Discovery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Discovery)))
  'Discovery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Discovery)))
  "Returns string type for a service object of type '<Discovery>"
  "irisbot/Discovery")