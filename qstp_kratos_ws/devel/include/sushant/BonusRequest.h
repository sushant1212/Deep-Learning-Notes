// Generated by gencpp from file sushant/BonusRequest.msg
// DO NOT EDIT!


#ifndef SUSHANT_MESSAGE_BONUSREQUEST_H
#define SUSHANT_MESSAGE_BONUSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sushant
{
template <class ContainerAllocator>
struct BonusRequest_
{
  typedef BonusRequest_<ContainerAllocator> Type;

  BonusRequest_()
    : arg(0)  {
    }
  BonusRequest_(const ContainerAllocator& _alloc)
    : arg(0)  {
  (void)_alloc;
    }



   typedef int32_t _arg_type;
  _arg_type arg;





  typedef boost::shared_ptr< ::sushant::BonusRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sushant::BonusRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BonusRequest_

typedef ::sushant::BonusRequest_<std::allocator<void> > BonusRequest;

typedef boost::shared_ptr< ::sushant::BonusRequest > BonusRequestPtr;
typedef boost::shared_ptr< ::sushant::BonusRequest const> BonusRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sushant::BonusRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sushant::BonusRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sushant

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sushant::BonusRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sushant::BonusRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sushant::BonusRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sushant::BonusRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sushant::BonusRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sushant::BonusRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sushant::BonusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "71a86a0480f98714bee529fed24d4ad5";
  }

  static const char* value(const ::sushant::BonusRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x71a86a0480f98714ULL;
  static const uint64_t static_value2 = 0xbee529fed24d4ad5ULL;
};

template<class ContainerAllocator>
struct DataType< ::sushant::BonusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sushant/BonusRequest";
  }

  static const char* value(const ::sushant::BonusRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sushant::BonusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 arg\n\
";
  }

  static const char* value(const ::sushant::BonusRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sushant::BonusRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.arg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BonusRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sushant::BonusRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sushant::BonusRequest_<ContainerAllocator>& v)
  {
    s << indent << "arg: ";
    Printer<int32_t>::stream(s, indent + "  ", v.arg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SUSHANT_MESSAGE_BONUSREQUEST_H