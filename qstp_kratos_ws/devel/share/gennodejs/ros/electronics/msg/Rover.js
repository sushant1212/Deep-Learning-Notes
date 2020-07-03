// Auto-generated. Do not edit!

// (in-package electronics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Rover {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel = null;
      this.distance = null;
      this.coordinates = null;
      this.power = null;
      this.t = null;
    }
    else {
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('coordinates')) {
        this.coordinates = initObj.coordinates
      }
      else {
        this.coordinates = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('power')) {
        this.power = initObj.power
      }
      else {
        this.power = 0;
      }
      if (initObj.hasOwnProperty('t')) {
        this.t = initObj.t
      }
      else {
        this.t = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rover
    // Serialize message field [vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.vel, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [coordinates]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.coordinates, buffer, bufferOffset);
    // Serialize message field [power]
    bufferOffset = _serializer.int32(obj.power, buffer, bufferOffset);
    // Serialize message field [t]
    bufferOffset = _serializer.duration(obj.t, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rover
    let len;
    let data = new Rover(null);
    // Deserialize message field [vel]
    data.vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [coordinates]
    data.coordinates = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [power]
    data.power = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [t]
    data.t = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'electronics/Rover';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32418e249bb737b8265c4e2f1311464b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist vel
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Rover(null);
    if (msg.vel !== undefined) {
      resolved.vel = geometry_msgs.msg.Twist.Resolve(msg.vel)
    }
    else {
      resolved.vel = new geometry_msgs.msg.Twist()
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.coordinates !== undefined) {
      resolved.coordinates = geometry_msgs.msg.Pose.Resolve(msg.coordinates)
    }
    else {
      resolved.coordinates = new geometry_msgs.msg.Pose()
    }

    if (msg.power !== undefined) {
      resolved.power = msg.power;
    }
    else {
      resolved.power = 0
    }

    if (msg.t !== undefined) {
      resolved.t = msg.t;
    }
    else {
      resolved.t = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = Rover;
