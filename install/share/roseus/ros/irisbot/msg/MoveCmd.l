;; Auto-generated. Do not edit!


(when (boundp 'irisbot::MoveCmd)
  (if (not (find-package "IRISBOT"))
    (make-package "IRISBOT"))
  (shadow 'MoveCmd (find-package "IRISBOT")))
(unless (find-package "IRISBOT::MOVECMD")
  (make-package "IRISBOT::MOVECMD"))

(in-package "ROS")
;;//! \htmlinclude MoveCmd.msg.html


(defclass irisbot::MoveCmd
  :super ros::object
  :slots (_orientation _speed _distance ))

(defmethod irisbot::MoveCmd
  (:init
   (&key
    ((:orientation __orientation) 0.0)
    ((:speed __speed) 0.0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _orientation (float __orientation))
   (setq _speed (float __speed))
   (setq _distance (float __distance))
   self)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float32 _orientation
    4
    ;; float32 _speed
    4
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _orientation
       (sys::poke _orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _orientation
     (setq _orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get irisbot::MoveCmd :md5sum-) "0f5c5a8e2615982cda00bd1a9073b52e")
(setf (get irisbot::MoveCmd :datatype-) "irisbot/MoveCmd")
(setf (get irisbot::MoveCmd :definition-)
      "float32 orientation
float32 speed
float32 distance

")



(provide :irisbot/MoveCmd "0f5c5a8e2615982cda00bd1a9073b52e")


