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

class Node {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ID = null;
      this.addr = null;
      this.role = null;
    }
    else {
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('addr')) {
        this.addr = initObj.addr
      }
      else {
        this.addr = 0;
      }
      if (initObj.hasOwnProperty('role')) {
        this.role = initObj.role
      }
      else {
        this.role = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Node
    // Serialize message field [ID]
    bufferOffset = _serializer.int32(obj.ID, buffer, bufferOffset);
    // Serialize message field [addr]
    bufferOffset = _serializer.int32(obj.addr, buffer, bufferOffset);
    // Serialize message field [role]
    bufferOffset = _serializer.string(obj.role, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Node
    let len;
    let data = new Node(null);
    // Deserialize message field [ID]
    data.ID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [addr]
    data.addr = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [role]
    data.role = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.role.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'irisbot/Node';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89ccaae8816f2f8e9fc6aef673dfaa4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ID
    int32 addr
    string role
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Node(null);
    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.addr !== undefined) {
      resolved.addr = msg.addr;
    }
    else {
      resolved.addr = 0
    }

    if (msg.role !== undefined) {
      resolved.role = msg.role;
    }
    else {
      resolved.role = ''
    }

    return resolved;
    }
};

module.exports = Node;
