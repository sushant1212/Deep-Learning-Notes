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

class CalculateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.b = null;
      this.op = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0.0;
      }
      if (initObj.hasOwnProperty('op')) {
        this.op = initObj.op
      }
      else {
        this.op = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalculateRequest
    // Serialize message field [a]
    bufferOffset = _serializer.float32(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.float32(obj.b, buffer, bufferOffset);
    // Serialize message field [op]
    bufferOffset = _serializer.string(obj.op, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalculateRequest
    let len;
    let data = new CalculateRequest(null);
    // Deserialize message field [a]
    data.a = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [op]
    data.op = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.op.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sushant/CalculateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40ab41219e57df6139335c866e2cc47c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 a
    float32 b
    string op
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CalculateRequest(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0.0
    }

    if (msg.op !== undefined) {
      resolved.op = msg.op;
    }
    else {
      resolved.op = ''
    }

    return resolved;
    }
};

class CalculateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.res = null;
    }
    else {
      if (initObj.hasOwnProperty('res')) {
        this.res = initObj.res
      }
      else {
        this.res = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalculateResponse
    // Serialize message field [res]
    bufferOffset = _serializer.float32(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalculateResponse
    let len;
    let data = new CalculateResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sushant/CalculateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d9130b17056d2aca7996ffac46d67a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 res
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CalculateResponse(null);
    if (msg.res !== undefined) {
      resolved.res = msg.res;
    }
    else {
      resolved.res = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: CalculateRequest,
  Response: CalculateResponse,
  md5sum() { return '4f9050e81d07f2b4cef4589399b1dcb1'; },
  datatype() { return 'sushant/Calculate'; }
};
