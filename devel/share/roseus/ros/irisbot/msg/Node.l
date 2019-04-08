;; Auto-generated. Do not edit!


(when (boundp 'irisbot::Node)
  (if (not (find-package "IRISBOT"))
    (make-package "IRISBOT"))
  (shadow 'Node (find-package "IRISBOT")))
(unless (find-package "IRISBOT::NODE")
  (make-package "IRISBOT::NODE"))

(in-package "ROS")
;;//! \htmlinclude Node.msg.html


(defclass irisbot::Node
  :super ros::object
  :slots (_ID _addr _role ))

(defmethod irisbot::Node
  (:init
   (&key
    ((:ID __ID) 0)
    ((:addr __addr) 0)
    ((:role __role) "")
    )
   (send-super :init)
   (setq _ID (round __ID))
   (setq _addr (round __addr))
   (setq _role (string __role))
   self)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:addr
   (&optional __addr)
   (if __addr (setq _addr __addr)) _addr)
  (:role
   (&optional __role)
   (if __role (setq _role __role)) _role)
  (:serialization-length
   ()
   (+
    ;; int32 _ID
    4
    ;; int32 _addr
    4
    ;; string _role
    4 (length _role)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ID
       (write-long _ID s)
     ;; int32 _addr
       (write-long _addr s)
     ;; string _role
       (write-long (length _role) s) (princ _role s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _addr
     (setq _addr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _role
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _role (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get irisbot::Node :md5sum-) "89ccaae8816f2f8e9fc6aef673dfaa4d")
(setf (get irisbot::Node :datatype-) "irisbot/Node")
(setf (get irisbot::Node :definition-)
      "int32 ID
int32 addr
string role

")



(provide :irisbot/Node "89ccaae8816f2f8e9fc6aef673dfaa4d")


