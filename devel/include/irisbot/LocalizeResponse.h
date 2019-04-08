// Generated by gencpp from file irisbot/LocalizeResponse.msg
// DO NOT EDIT!


#ifndef IRISBOT_MESSAGE_LOCALIZERESPONSE_H
#define IRISBOT_MESSAGE_LOCALIZERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <irisbot/Pose.h>

namespace irisbot
{
template <class ContainerAllocator>
struct LocalizeResponse_
{
  typedef LocalizeResponse_<ContainerAllocator> Type;

  LocalizeResponse_()
    : rel_pose()  {
    }
  LocalizeResponse_(const ContainerAllocator& _alloc)
    : rel_pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::irisbot::Pose_<ContainerAllocator>  _rel_pose_type;
  _rel_pose_type rel_pose;





  typedef boost::shared_ptr< ::irisbot::LocalizeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::irisbot::LocalizeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct LocalizeResponse_

typedef ::irisbot::LocalizeResponse_<std::allocator<void> > LocalizeResponse;

typedef boost::shared_ptr< ::irisbot::LocalizeResponse > LocalizeResponsePtr;
typedef boost::shared_ptr< ::irisbot::LocalizeResponse const> LocalizeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::irisbot::LocalizeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::irisbot::LocalizeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace irisbot

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsMessage': True, 'IsFixedSize': True, 'HasHeader': False}
// {'irisbot': ['/home/lilly/Desktop/ROSws/src/irisbot/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsMessage< ::irisbot::LocalizeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::irisbot::LocalizeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::irisbot::LocalizeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::irisbot::LocalizeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::irisbot::LocalizeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::irisbot::LocalizeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::irisbot::LocalizeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "68ec387fd2901495122a5b8603ddb7f0";
  }

  static const char* value(const ::irisbot::LocalizeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x68ec387fd2901495ULL;
  static const uint64_t static_value2 = 0x122a5b8603ddb7f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::irisbot::LocalizeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "irisbot/LocalizeResponse";
  }

  static const char* value(const ::irisbot::LocalizeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::irisbot::LocalizeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Pose rel_pose\n\
\n\
\n\
================================================================================\n\
MSG: irisbot/Pose\n\
float32 x\n\
float32 y\n\
float32 orientation\n\
";
  }

  static const char* value(const ::irisbot::LocalizeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::irisbot::LocalizeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.rel_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LocalizeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::irisbot::LocalizeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::irisbot::LocalizeResponse_<ContainerAllocator>& v)
  {
    s << indent << "rel_pose: ";
    s << std::endl;
    Printer< ::irisbot::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.rel_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IRISBOT_MESSAGE_LOCALIZERESPONSE_H