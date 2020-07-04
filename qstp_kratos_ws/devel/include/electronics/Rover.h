// Generated by gencpp from file electronics/Rover.msg
// DO NOT EDIT!


#ifndef ELECTRONICS_MESSAGE_ROVER_H
#define ELECTRONICS_MESSAGE_ROVER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>

namespace electronics
{
template <class ContainerAllocator>
struct Rover_
{
  typedef Rover_<ContainerAllocator> Type;

  Rover_()
    : vel()
    , distance(0.0)
    , coordinates()
    , power(0)
    , t()  {
    }
  Rover_(const ContainerAllocator& _alloc)
    : vel(_alloc)
    , distance(0.0)
    , coordinates(_alloc)
    , power(0)
    , t()  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _vel_type;
  _vel_type vel;

   typedef float _distance_type;
  _distance_type distance;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _coordinates_type;
  _coordinates_type coordinates;

   typedef int32_t _power_type;
  _power_type power;

   typedef ros::Duration _t_type;
  _t_type t;





  typedef boost::shared_ptr< ::electronics::Rover_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::electronics::Rover_<ContainerAllocator> const> ConstPtr;

}; // struct Rover_

typedef ::electronics::Rover_<std::allocator<void> > Rover;

typedef boost::shared_ptr< ::electronics::Rover > RoverPtr;
typedef boost::shared_ptr< ::electronics::Rover const> RoverConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::electronics::Rover_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::electronics::Rover_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace electronics

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'electronics': ['/home/sushant/qstp_kratos_ws/src/electronics/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::electronics::Rover_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::electronics::Rover_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::electronics::Rover_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::electronics::Rover_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::electronics::Rover_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::electronics::Rover_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::electronics::Rover_<ContainerAllocator> >
{
  static const char* value()
  {
    return "32418e249bb737b8265c4e2f1311464b";
  }

  static const char* value(const ::electronics::Rover_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x32418e249bb737b8ULL;
  static const uint64_t static_value2 = 0x265c4e2f1311464bULL;
};

template<class ContainerAllocator>
struct DataType< ::electronics::Rover_<ContainerAllocator> >
{
  static const char* value()
  {
    return "electronics/Rover";
  }

  static const char* value(const ::electronics::Rover_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::electronics::Rover_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Twist vel\n\
float32 distance\n\
geometry_msgs/Pose coordinates\n\
int32 power\n\
duration t\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Twist\n\
# This expresses velocity in free space broken into its linear and angular parts.\n\
Vector3  linear\n\
Vector3  angular\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::electronics::Rover_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::electronics::Rover_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vel);
      stream.next(m.distance);
      stream.next(m.coordinates);
      stream.next(m.power);
      stream.next(m.t);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Rover_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::electronics::Rover_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::electronics::Rover_<ContainerAllocator>& v)
  {
    s << indent << "vel: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.vel);
    s << indent << "distance: ";
    Printer<float>::stream(s, indent + "  ", v.distance);
    s << indent << "coordinates: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.coordinates);
    s << indent << "power: ";
    Printer<int32_t>::stream(s, indent + "  ", v.power);
    s << indent << "t: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.t);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ELECTRONICS_MESSAGE_ROVER_H