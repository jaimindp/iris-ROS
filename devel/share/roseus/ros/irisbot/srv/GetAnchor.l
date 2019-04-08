;; Auto-generated. Do not edit!


(when (boundp 'irisbot::GetAnchor)
  (if (not (find-package "IRISBOT"))
    (make-package "IRISBOT"))
  (shadow 'GetAnchor (find-package "IRISBOT")))
(unless (find-package "IRISBOT::GETANCHOR")
  (make-package "IRISBOT::GETANCHOR"))
(unless (find-package "IRISBOT::GETANCHORREQUEST")
  (make-package "IRISBOT::GETANCHORREQUEST"))
(unless (find-package "IRISBOT::GETANCHORRESPONSE")
  (make-package "IRISBOT::GETANCHORRESPONSE"))

(in-package "ROS")





(defclass irisbot::GetAnchorRequest
  :super ros::object
  :slots (_ids ))

(defmethod irisbot::GetAnchorRequest
  (:init
   (&key
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _ids __ids)
   self)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:serialization-length
   ()
   (+
    ;; int32[] _ids
    (* 4    (length _ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass irisbot::GetAnchorResponse
  :super ros::object
  :slots (_anchors _dists ))

(defmethod irisbot::GetAnchorResponse
  (:init
   (&key
    ((:anchors __anchors) (let (r) (dotimes (i 0) (push (instance irisbot::NodeLoc :init) r)) r))
    ((:dists __dists) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _anchors __anchors)
   (setq _dists __dists)
   self)
  (:anchors
   (&rest __anchors)
   (if (keywordp (car __anchors))
       (send* _anchors __anchors)
     (progn
       (if __anchors (setq _anchors (car __anchors)))
       _anchors)))
  (:dists
   (&optional __dists)
   (if __dists (setq _dists __dists)) _dists)
  (:serialization-length
   ()
   (+
    ;; irisbot/NodeLoc[] _anchors
    (apply #'+ (send-all _anchors :serialization-length)) 4
    ;; float32[] _dists
    (* 4    (length _dists)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; irisbot/NodeLoc[] _anchors
     (write-long (length _anchors) s)
     (dolist (elem _anchors)
       (send elem :serialize s)
       )
     ;; float32[] _dists
     (write-long (length _dists) s)
     (dotimes (i (length _dists))
       (sys::poke (elt _dists i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; irisbot/NodeLoc[] _anchors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _anchors (let (r) (dotimes (i n) (push (instance irisbot::NodeLoc :init) r)) r))
     (dolist (elem- _anchors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _dists
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dists (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dists i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass irisbot::GetAnchor
  :super ros::object
  :slots ())

(setf (get irisbot::GetAnchor :md5sum-) "f752ccbb67076c1bee44990c827507b5")
(setf (get irisbot::GetAnchor :datatype-) "irisbot/GetAnchor")
(setf (get irisbot::GetAnchor :request) irisbot::GetAnchorRequest)
(setf (get irisbot::GetAnchor :response) irisbot::GetAnchorResponse)

(defmethod irisbot::GetAnchorRequest
  (:response () (instance irisbot::GetAnchorResponse :init)))

(setf (get irisbot::GetAnchorRequest :md5sum-) "f752ccbb67076c1bee44990c827507b5")
(setf (get irisbot::GetAnchorRequest :datatype-) "irisbot/GetAnchorRequest")
(setf (get irisbot::GetAnchorRequest :definition-)
      "int32[] ids
---
NodeLoc[] anchors
float32[] dists


================================================================================
MSG: irisbot/NodeLoc
Node node
Pose pose

================================================================================
MSG: irisbot/Node
int32 ID
int32 addr
string role

================================================================================
MSG: irisbot/Pose
float32 x
float32 y
float32 orientation
")

(setf (get irisbot::GetAnchorResponse :md5sum-) "f752ccbb67076c1bee44990c827507b5")
(setf (get irisbot::GetAnchorResponse :datatype-) "irisbot/GetAnchorResponse")
(setf (get irisbot::GetAnchorResponse :definition-)
      "int32[] ids
---
NodeLoc[] anchors
float32[] dists


================================================================================
MSG: irisbot/NodeLoc
Node node
Pose pose

================================================================================
MSG: irisbot/Node
int32 ID
int32 addr
string role

================================================================================
MSG: irisbot/Pose
float32 x
float32 y
float32 orientation
")



(provide :irisbot/GetAnchor "f752ccbb67076c1bee44990c827507b5")


