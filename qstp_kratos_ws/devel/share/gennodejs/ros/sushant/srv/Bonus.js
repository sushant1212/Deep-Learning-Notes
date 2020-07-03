// Auto-generated. Do not edit!

// (in-package sushant.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class BonusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arg = null;
    }
    else {
      if (initObj.hasOwnProperty('arg')) {
        this.arg = initObj.arg
      }
      else {
        this.arg = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BonusRequest
    // Serialize message field [arg]
    bufferOffset = _serializer.int32(obj.arg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BonusRequest
    let len;
    let data = new BonusRequest(null);
    // Deserialize message field [arg]
    data.arg = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sushant/BonusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71a86a0480f98714bee529fed24d4ad5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 arg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BonusRequest(null);
    if (msg.arg !== undefined) {
      resolved.arg = msg.arg;
    }
    else {
      resolved.arg = 0
    }

    return resolved;
    }
};

class BonusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.out = null;
    }
    else {
      if (initObj.hasOwnProperty('out')) {
        this.out = initObj.out
      }
      else {
        this.out = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BonusResponse
    // Serialize message field [out]
    bufferOffset = _serializer.int32(obj.out, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BonusResponse
    let len;
    let data = new BonusResponse(null);
    // Deserialize message field [out]
    data.out = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sushant/BonusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbbbb4259d2725c3ce6331761b71c6ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 out
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BonusResponse(null);
    if (msg.out !== undefined) {
      resolved.out = msg.out;
    }
    else {
      resolved.out = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: BonusRequest,
  Response: BonusResponse,
  md5sum() { return '4cb0d890bc6d9d096c24937d23485ba6'; },
  datatype() { return 'sushant/Bonus'; }
};
