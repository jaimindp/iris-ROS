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
let Pose = require('./Pose.js');

//-----------------------------------------------------------

class NodeLoc {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = new Node();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeLoc
    // Serialize message field [node]
    bufferOffset = Node.serialize(obj.node, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeLoc
    let len;
    let data = new NodeLoc(null);
    // Deserialize message field [node]
    data.node = Node.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Node.getMessageSize(object.node);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'irisbot/NodeLoc';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a6c7065a9f37e986ee4a92a84079bbb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Node node
    Pose pose
    
    ================================================================================
    MSG: irisbot/Node
    int32 ID
    int32 addr
    string role
    
    ================================================================================
    MSG: irisbot/Pose
    float32 x
    float32 y
    float32 orientation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeLoc(null);
    if (msg.node !== undefined) {
      resolved.node = Node.Resolve(msg.node)
    }
    else {
      resolved.node = new Node()
    }

    if (msg.pose !== undefined) {
      resolved.pose = Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new Pose()
    }

    return resolved;
    }
};

module.exports = NodeLoc;
