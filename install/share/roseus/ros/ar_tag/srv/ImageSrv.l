;; Auto-generated. Do not edit!


(when (boundp 'ar_tag::ImageSrv)
  (if (not (find-package "AR_TAG"))
    (make-package "AR_TAG"))
  (shadow 'ImageSrv (find-package "AR_TAG")))
(unless (find-package "AR_TAG::IMAGESRV")
  (make-package "AR_TAG::IMAGESRV"))
(unless (find-package "AR_TAG::IMAGESRVREQUEST")
  (make-package "AR_TAG::IMAGESRVREQUEST"))
(unless (find-package "AR_TAG::IMAGESRVRESPONSE")
  (make-package "AR_TAG::IMAGESRVRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass ar_tag::ImageSrvRequest
  :super ros::object
  :slots ())

(defmethod ar_tag::ImageSrvRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ar_tag::ImageSrvResponse
  :super ros::object
  :slots (_image_data ))

(defmethod ar_tag::ImageSrvResponse
  (:init
   (&key
    ((:image_data __image_data) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _image_data __image_data)
   self)
  (:image_data
   (&rest __image_data)
   (if (keywordp (car __image_data))
       (send* _image_data __image_data)
     (progn
       (if __image_data (setq _image_data (car __image_data)))
       _image_data)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image_data
    (send _image_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image_data
       (send _image_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image_data
     (send _image_data :deserialize buf ptr-) (incf ptr- (send _image_data :serialization-length))
   ;;
   self)
  )

(defclass ar_tag::ImageSrv
  :super ros::object
  :slots ())

(setf (get ar_tag::ImageSrv :md5sum-) "ba55116f263d40ea8759822097ad63d4")
(setf (get ar_tag::ImageSrv :datatype-) "ar_tag/ImageSrv")
(setf (get ar_tag::ImageSrv :request) ar_tag::ImageSrvRequest)
(setf (get ar_tag::ImageSrv :response) ar_tag::ImageSrvResponse)

(defmethod ar_tag::ImageSrvRequest
  (:response () (instance ar_tag::ImageSrvResponse :init)))

(setf (get ar_tag::ImageSrvRequest :md5sum-) "ba55116f263d40ea8759822097ad63d4")
(setf (get ar_tag::ImageSrvRequest :datatype-) "ar_tag/ImageSrvRequest")
(setf (get ar_tag::ImageSrvRequest :definition-)
      "
---

sensor_msgs/Image image_data


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
")

(setf (get ar_tag::ImageSrvResponse :md5sum-) "ba55116f263d40ea8759822097ad63d4")
(setf (get ar_tag::ImageSrvResponse :datatype-) "ar_tag/ImageSrvResponse")
(setf (get ar_tag::ImageSrvResponse :definition-)
      "
---

sensor_msgs/Image image_data


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
")



(provide :ar_tag/ImageSrv "ba55116f263d40ea8759822097ad63d4")


