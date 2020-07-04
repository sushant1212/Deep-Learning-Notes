# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from electronics/Rover.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import genpy

class Rover(genpy.Message):
  _md5sum = "32418e249bb737b8265c4e2f1311464b"
  _type = "electronics/Rover"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Twist vel
float32 distance
geometry_msgs/Pose coordinates
int32 power
duration t

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['vel','distance','coordinates','power','t']
  _slot_types = ['geometry_msgs/Twist','float32','geometry_msgs/Pose','int32','duration']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       vel,distance,coordinates,power,t

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Rover, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.vel is None:
        self.vel = geometry_msgs.msg.Twist()
      if self.distance is None:
        self.distance = 0.
      if self.coordinates is None:
        self.coordinates = geometry_msgs.msg.Pose()
      if self.power is None:
        self.power = 0
      if self.t is None:
        self.t = genpy.Duration()
    else:
      self.vel = geometry_msgs.msg.Twist()
      self.distance = 0.
      self.coordinates = geometry_msgs.msg.Pose()
      self.power = 0
      self.t = genpy.Duration()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_6df7d3i().pack(_x.vel.linear.x, _x.vel.linear.y, _x.vel.linear.z, _x.vel.angular.x, _x.vel.angular.y, _x.vel.angular.z, _x.distance, _x.coordinates.position.x, _x.coordinates.position.y, _x.coordinates.position.z, _x.coordinates.orientation.x, _x.coordinates.orientation.y, _x.coordinates.orientation.z, _x.coordinates.orientation.w, _x.power, _x.t.secs, _x.t.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.vel is None:
        self.vel = geometry_msgs.msg.Twist()
      if self.coordinates is None:
        self.coordinates = geometry_msgs.msg.Pose()
      if self.t is None:
        self.t = genpy.Duration()
      end = 0
      _x = self
      start = end
      end += 120
      (_x.vel.linear.x, _x.vel.linear.y, _x.vel.linear.z, _x.vel.angular.x, _x.vel.angular.y, _x.vel.angular.z, _x.distance, _x.coordinates.position.x, _x.coordinates.position.y, _x.coordinates.position.z, _x.coordinates.orientation.x, _x.coordinates.orientation.y, _x.coordinates.orientation.z, _x.coordinates.orientation.w, _x.power, _x.t.secs, _x.t.nsecs,) = _get_struct_6df7d3i().unpack(str[start:end])
      self.t.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6df7d3i().pack(_x.vel.linear.x, _x.vel.linear.y, _x.vel.linear.z, _x.vel.angular.x, _x.vel.angular.y, _x.vel.angular.z, _x.distance, _x.coordinates.position.x, _x.coordinates.position.y, _x.coordinates.position.z, _x.coordinates.orientation.x, _x.coordinates.orientation.y, _x.coordinates.orientation.z, _x.coordinates.orientation.w, _x.power, _x.t.secs, _x.t.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.vel is None:
        self.vel = geometry_msgs.msg.Twist()
      if self.coordinates is None:
        self.coordinates = geometry_msgs.msg.Pose()
      if self.t is None:
        self.t = genpy.Duration()
      end = 0
      _x = self
      start = end
      end += 120
      (_x.vel.linear.x, _x.vel.linear.y, _x.vel.linear.z, _x.vel.angular.x, _x.vel.angular.y, _x.vel.angular.z, _x.distance, _x.coordinates.position.x, _x.coordinates.position.y, _x.coordinates.position.z, _x.coordinates.orientation.x, _x.coordinates.orientation.y, _x.coordinates.orientation.z, _x.coordinates.orientation.w, _x.power, _x.t.secs, _x.t.nsecs,) = _get_struct_6df7d3i().unpack(str[start:end])
      self.t.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6df7d3i = None
def _get_struct_6df7d3i():
    global _struct_6df7d3i
    if _struct_6df7d3i is None:
        _struct_6df7d3i = struct.Struct("<6df7d3i")
    return _struct_6df7d3i