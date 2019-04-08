;; Auto-generated. Do not edit!


(when (boundp 'irisbot::DriveCmd)
  (if (not (find-package "IRISBOT"))
    (make-package "IRISBOT"))
  (shadow 'DriveCmd (find-package "IRISBOT")))
(unless (find-package "IRISBOT::DRIVECMD")
  (make-package "IRISBOT::DRIVECMD"))

(in-package "ROS")
;;//! \htmlinclude DriveCmd.msg.html


(defclass irisbot::DriveCmd
  :super ros::object
  :slots (_speed _distance ))

(defmethod irisbot::DriveCmd
  (:init
   (&key
    ((:speed __speed) 0)
    ((:distance __distance) 0)
    )
   (send-super :init)
   (setq _speed (round __speed))
   (setq _distance (round __distance))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; int32 _speed
    4
    ;; int32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _speed
       (write-long _speed s)
     ;; int32 _distance
       (write-long _distance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _distance
     (setq _distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get irisbot::DriveCmd :md5sum-) "23af4beb5c0ba546ff12a4473f8899f4")
(setf (get irisbot::DriveCmd :datatype-) "irisbot/DriveCmd")
(setf (get irisbot::DriveCmd :definition-)
      "int32 speed
int32 distance

")



(provide :irisbot/DriveCmd "23af4beb5c0ba546ff12a4473f8899f4")


