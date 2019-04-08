;; Auto-generated. Do not edit!


(when (boundp 'irisbot::RotateCmd)
  (if (not (find-package "IRISBOT"))
    (make-package "IRISBOT"))
  (shadow 'RotateCmd (find-package "IRISBOT")))
(unless (find-package "IRISBOT::ROTATECMD")
  (make-package "IRISBOT::ROTATECMD"))

(in-package "ROS")
;;//! \htmlinclude RotateCmd.msg.html


(defclass irisbot::RotateCmd
  :super ros::object
  :slots (_degrees _direction _speed ))

(defmethod irisbot::RotateCmd
  (:init
   (&key
    ((:degrees __degrees) 0)
    ((:direction __direction) 0)
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _degrees (round __degrees))
   (setq _direction (round __direction))
   (setq _speed (round __speed))
   self)
  (:degrees
   (&optional __degrees)
   (if __degrees (setq _degrees __degrees)) _degrees)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; int32 _degrees
    4
    ;; int32 _direction
    4
    ;; int32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _degrees
       (write-long _degrees s)
     ;; int32 _direction
       (write-long _direction s)
     ;; int32 _speed
       (write-long _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _degrees
     (setq _degrees (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _direction
     (setq _direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get irisbot::RotateCmd :md5sum-) "e73a3a3f31369df7631a394a7fafc0cc")
(setf (get irisbot::RotateCmd :datatype-) "irisbot/RotateCmd")
(setf (get irisbot::RotateCmd :definition-)
      "int32 degrees
int32 direction
int32 speed

")



(provide :irisbot/RotateCmd "e73a3a3f31369df7631a394a7fafc0cc")


