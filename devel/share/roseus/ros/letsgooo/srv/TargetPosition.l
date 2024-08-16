;; Auto-generated. Do not edit!


(when (boundp 'letsgooo::TargetPosition)
  (if (not (find-package "LETSGOOO"))
    (make-package "LETSGOOO"))
  (shadow 'TargetPosition (find-package "LETSGOOO")))
(unless (find-package "LETSGOOO::TARGETPOSITION")
  (make-package "LETSGOOO::TARGETPOSITION"))
(unless (find-package "LETSGOOO::TARGETPOSITIONREQUEST")
  (make-package "LETSGOOO::TARGETPOSITIONREQUEST"))
(unless (find-package "LETSGOOO::TARGETPOSITIONRESPONSE")
  (make-package "LETSGOOO::TARGETPOSITIONRESPONSE"))

(in-package "ROS")





(defclass letsgooo::TargetPositionRequest
  :super ros::object
  :slots (_target_x _target_y _target_theta ))

(defmethod letsgooo::TargetPositionRequest
  (:init
   (&key
    ((:target_x __target_x) 0.0)
    ((:target_y __target_y) 0.0)
    ((:target_theta __target_theta) 0.0)
    )
   (send-super :init)
   (setq _target_x (float __target_x))
   (setq _target_y (float __target_y))
   (setq _target_theta (float __target_theta))
   self)
  (:target_x
   (&optional __target_x)
   (if __target_x (setq _target_x __target_x)) _target_x)
  (:target_y
   (&optional __target_y)
   (if __target_y (setq _target_y __target_y)) _target_y)
  (:target_theta
   (&optional __target_theta)
   (if __target_theta (setq _target_theta __target_theta)) _target_theta)
  (:serialization-length
   ()
   (+
    ;; float64 _target_x
    8
    ;; float64 _target_y
    8
    ;; float64 _target_theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _target_x
       (sys::poke _target_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_y
       (sys::poke _target_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_theta
       (sys::poke _target_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _target_x
     (setq _target_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_y
     (setq _target_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_theta
     (setq _target_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass letsgooo::TargetPositionResponse
  :super ros::object
  :slots (_linear_x _angular_z _feedback _message ))

(defmethod letsgooo::TargetPositionResponse
  (:init
   (&key
    ((:linear_x __linear_x) 0.0)
    ((:angular_z __angular_z) 0.0)
    ((:feedback __feedback) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _linear_x (float __linear_x))
   (setq _angular_z (float __angular_z))
   (setq _feedback __feedback)
   (setq _message (string __message))
   self)
  (:linear_x
   (&optional __linear_x)
   (if __linear_x (setq _linear_x __linear_x)) _linear_x)
  (:angular_z
   (&optional __angular_z)
   (if __angular_z (setq _angular_z __angular_z)) _angular_z)
  (:feedback
   (&optional (__feedback :null))
   (if (not (eq __feedback :null)) (setq _feedback __feedback)) _feedback)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float64 _linear_x
    8
    ;; float64 _angular_z
    8
    ;; bool _feedback
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linear_x
       (sys::poke _linear_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_z
       (sys::poke _angular_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _feedback
       (if _feedback (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linear_x
     (setq _linear_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_z
     (setq _angular_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _feedback
     (setq _feedback (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass letsgooo::TargetPosition
  :super ros::object
  :slots ())

(setf (get letsgooo::TargetPosition :md5sum-) "dd76aff00a72b33e8d77950fa07ebddf")
(setf (get letsgooo::TargetPosition :datatype-) "letsgooo/TargetPosition")
(setf (get letsgooo::TargetPosition :request) letsgooo::TargetPositionRequest)
(setf (get letsgooo::TargetPosition :response) letsgooo::TargetPositionResponse)

(defmethod letsgooo::TargetPositionRequest
  (:response () (instance letsgooo::TargetPositionResponse :init)))

(setf (get letsgooo::TargetPositionRequest :md5sum-) "dd76aff00a72b33e8d77950fa07ebddf")
(setf (get letsgooo::TargetPositionRequest :datatype-) "letsgooo/TargetPositionRequest")
(setf (get letsgooo::TargetPositionRequest :definition-)
      "float64 target_x
float64 target_y
float64 target_theta
---
float64 linear_x
float64 angular_z
bool feedback
string message
")

(setf (get letsgooo::TargetPositionResponse :md5sum-) "dd76aff00a72b33e8d77950fa07ebddf")
(setf (get letsgooo::TargetPositionResponse :datatype-) "letsgooo/TargetPositionResponse")
(setf (get letsgooo::TargetPositionResponse :definition-)
      "float64 target_x
float64 target_y
float64 target_theta
---
float64 linear_x
float64 angular_z
bool feedback
string message
")



(provide :letsgooo/TargetPosition "dd76aff00a72b33e8d77950fa07ebddf")


