// Auto-generated. Do not edit!

// (in-package irisbot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Node = require('./Node.js');

//-----------------------------------------------------------

class NodeMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = new Node();
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeMsg
    // Serialize message field [node]
    bufferOffset = Node.serialize(obj.node, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeMsg
    let len;
    let data = new NodeMsg(null);
    // Deserialize message field [node]
    data.node = Node.deserialize(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Node.getMessageSize(object.node);
    length += object.message.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'irisbot/NodeMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92c675d5552e0ff0444fb567ca5dc17e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Node node
    string message
    
    ================================================================================
    MSG: irisbot/Node
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
    const resolved = new NodeMsg(null);
    if (msg.node !== undefined) {
      resolved.node = Node.Resolve(msg.node)
    }
    else {
      resolved.node = new Node()
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = NodeMsg;
