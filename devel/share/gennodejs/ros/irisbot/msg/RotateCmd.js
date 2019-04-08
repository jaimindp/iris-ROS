// Auto-generated. Do not edit!

// (in-package irisbot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RotateCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.degrees = null;
      this.direction = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('degrees')) {
        this.degrees = initObj.degrees
      }
      else {
        this.degrees = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RotateCmd
    // Serialize message field [degrees]
    bufferOffset = _serializer.int32(obj.degrees, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.int32(obj.direction, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.int32(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RotateCmd
    let len;
    let data = new RotateCmd(null);
    // Deserialize message field [degrees]
    data.degrees = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'irisbot/RotateCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e73a3a3f31369df7631a394a7fafc0cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 degrees
    int32 direction
    int32 speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RotateCmd(null);
    if (msg.degrees !== undefined) {
      resolved.degrees = msg.degrees;
    }
    else {
      resolved.degrees = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    return resolved;
    }
};

module.exports = RotateCmd;
