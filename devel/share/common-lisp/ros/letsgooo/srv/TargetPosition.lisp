; Auto-generated. Do not edit!


(cl:in-package letsgooo-srv)


;//! \htmlinclude TargetPosition-request.msg.html

(cl:defclass <TargetPosition-request> (roslisp-msg-protocol:ros-message)
  ((target_x
    :reader target_x
    :initarg :target_x
    :type cl:float
    :initform 0.0)
   (target_y
    :reader target_y
    :initarg :target_y
    :type cl:float
    :initform 0.0)
   (target_theta
    :reader target_theta
    :initarg :target_theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass TargetPosition-request (<TargetPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name letsgooo-srv:<TargetPosition-request> is deprecated: use letsgooo-srv:TargetPosition-request instead.")))

(cl:ensure-generic-function 'target_x-val :lambda-list '(m))
(cl:defmethod target_x-val ((m <TargetPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader letsgooo-srv:target_x-val is deprecated.  Use letsgooo-srv:target_x instead.")
  (target_x m))

(cl:ensure-generic-function 'target_y-val :lambda-list '(m))
(cl:defmethod target_y-val ((m <TargetPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader letsgooo-srv:target_y-val is deprecated.  Use letsgooo-srv:target_y instead.")
  (target_y m))

(cl:ensure-generic-function 'target_theta-val :lambda-list '(m))
(cl:defmethod target_theta-val ((m <TargetPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader letsgooo-srv:target_theta-val is deprecated.  Use letsgooo-srv:target_theta instead.")
  (target_theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetPosition-request>) ostream)
  "Serializes a message object of type '<TargetPosition-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetPosition-request>) istream)
  "Deserializes a message object of type '<TargetPosition-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetPosition-request>)))
  "Returns string type for a service object of type '<TargetPosition-request>"
  "letsgooo/TargetPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetPosition-request)))
  "Returns string type for a service object of type 'TargetPosition-request"
  "letsgooo/TargetPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetPosition-request>)))
  "Returns md5sum for a message object of type '<TargetPosition-request>"
  "dd76aff00a72b33e8d77950fa07ebddf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetPosition-request)))
  "Returns md5sum for a message object of type 'TargetPosition-request"
  "dd76aff00a72b33e8d77950fa07ebddf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetPosition-request>)))
  "Returns full string definition for message of type '<TargetPosition-request>"
  (cl:format cl:nil "float64 target_x~%float64 target_y~%float64 target_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetPosition-request)))
  "Returns full string definition for message of type 'TargetPosition-request"
  (cl:format cl:nil "float64 target_x~%float64 target_y~%float64 target_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetPosition-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetPosition-request
    (cl:cons ':target_x (target_x msg))
    (cl:cons ':target_y (target_y msg))
    (cl:cons ':target_theta (target_theta msg))
))
;//! \htmlinclude TargetPosition-response.msg.html

(cl:defclass <TargetPosition-response> (roslisp-msg-protocol:ros-message)
  ((linear_x
    :reader linear_x
    :initarg :linear_x
    :type cl:float
    :initform 0.0)
   (angular_z
    :reader angular_z
    :initarg :angular_z
    :type cl:float
    :initform 0.0)
   (feedback
    :reader feedback
    :initarg :feedback
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass TargetPosition-response (<TargetPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name letsgooo-srv:<TargetPosition-response> is deprecated: use letsgooo-srv:TargetPosition-response instead.")))

(cl:ensure-generic-function 'linear_x-val :lambda-list '(m))
(cl:defmethod linear_x-val ((m <TargetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader letsgooo-srv:linear_x-val is deprecated.  Use letsgooo-srv:linear_x instead.")
  (linear_x m))

(cl:ensure-generic-function 'angular_z-val :lambda-list '(m))
(cl:defmethod angular_z-val ((m <TargetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader letsgooo-srv:angular_z-val is deprecated.  Use letsgooo-srv:angular_z instead.")
  (angular_z m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <TargetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader letsgooo-srv:feedback-val is deprecated.  Use letsgooo-srv:feedback instead.")
  (feedback m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TargetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader letsgooo-srv:message-val is deprecated.  Use letsgooo-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetPosition-response>) ostream)
  "Serializes a message object of type '<TargetPosition-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'feedback) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetPosition-response>) istream)
  "Deserializes a message object of type '<TargetPosition-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'feedback) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetPosition-response>)))
  "Returns string type for a service object of type '<TargetPosition-response>"
  "letsgooo/TargetPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetPosition-response)))
  "Returns string type for a service object of type 'TargetPosition-response"
  "letsgooo/TargetPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetPosition-response>)))
  "Returns md5sum for a message object of type '<TargetPosition-response>"
  "dd76aff00a72b33e8d77950fa07ebddf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetPosition-response)))
  "Returns md5sum for a message object of type 'TargetPosition-response"
  "dd76aff00a72b33e8d77950fa07ebddf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetPosition-response>)))
  "Returns full string definition for message of type '<TargetPosition-response>"
  (cl:format cl:nil "float64 linear_x~%float64 angular_z~%bool feedback~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetPosition-response)))
  "Returns full string definition for message of type 'TargetPosition-response"
  (cl:format cl:nil "float64 linear_x~%float64 angular_z~%bool feedback~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetPosition-response>))
  (cl:+ 0
     8
     8
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetPosition-response
    (cl:cons ':linear_x (linear_x msg))
    (cl:cons ':angular_z (angular_z msg))
    (cl:cons ':feedback (feedback msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TargetPosition)))
  'TargetPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TargetPosition)))
  'TargetPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetPosition)))
  "Returns string type for a service object of type '<TargetPosition>"
  "letsgooo/TargetPosition")