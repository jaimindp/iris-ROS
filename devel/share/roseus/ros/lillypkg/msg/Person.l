;; Auto-generated. Do not edit!


(when (boundp 'lillypkg::Person)
  (if (not (find-package "LILLYPKG"))
    (make-package "LILLYPKG"))
  (shadow 'Person (find-package "LILLYPKG")))
(unless (find-package "LILLYPKG::PERSON")
  (make-package "LILLYPKG::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html


(defclass lillypkg::Person
  :super ros::object
  :slots (_first_name _last_name ))

(defmethod lillypkg::Person
  (:init
   (&key
    ((:first_name __first_name) "")
    ((:last_name __last_name) "")
    )
   (send-super :init)
   (setq _first_name (string __first_name))
   (setq _last_name (string __last_name))
   self)
  (:first_name
   (&optional __first_name)
   (if __first_name (setq _first_name __first_name)) _first_name)
  (:last_name
   (&optional __last_name)
   (if __last_name (setq _last_name __last_name)) _last_name)
  (:serialization-length
   ()
   (+
    ;; string _first_name
    4 (length _first_name)
    ;; string _last_name
    4 (length _last_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _first_name
       (write-long (length _first_name) s) (princ _first_name s)
     ;; string _last_name
       (write-long (length _last_name) s) (princ _last_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _first_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _first_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _last_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get lillypkg::Person :md5sum-) "7eae61f42fe10628000d2b10fec2f3bd")
(setf (get lillypkg::Person :datatype-) "lillypkg/Person")
(setf (get lillypkg::Person :definition-)
      "string first_name
string last_name

")



(provide :lillypkg/Person "7eae61f42fe10628000d2b10fec2f3bd")


