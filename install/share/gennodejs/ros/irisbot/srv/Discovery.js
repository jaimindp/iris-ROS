// Auto-generated. Do not edit!

// (in-package irisbot.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Node = require('../msg/Node.js');

//-----------------------------------------------------------

let NodeLoc = require('../msg/NodeLoc.js');

//-----------------------------------------------------------

class DiscoveryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.myself = null;
    }
    else {
      if (initObj.hasOwnProperty('myself')) {
        this.myself = initObj.myself
      }
      else {
        this.myself = new Node();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiscoveryRequest
    // Serialize message field [myself]
    bufferOffset = Node.serialize(obj.myself, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiscoveryRequest
    let len;
    let data = new DiscoveryRequest(null);
    // Deserialize message field [myself]
    data.myself = Node.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Node.getMessageSize(object.myself);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'irisbot/DiscoveryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b285f325119edace42114f4aa36c582c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Node myself
    
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
    const resolved = new DiscoveryRequest(null);
    if (msg.myself !== undefined) {
      resolved.myself = Node.Resolve(msg.myself)
    }
    else {
      resolved.myself = new Node()
    }

    return resolved;
    }
};

class DiscoveryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.anchor1 = null;
      this.anchor2 = null;
      this.anchor3 = null;
    }
    else {
      if (initObj.hasOwnProperty('anchor1')) {
        this.anchor1 = initObj.anchor1
      }
      else {
        this.anchor1 = new NodeLoc();
      }
      if (initObj.hasOwnProperty('anchor2')) {
        this.anchor2 = initObj.anchor2
      }
      else {
        this.anchor2 = new NodeLoc();
      }
      if (initObj.hasOwnProperty('anchor3')) {
        this.anchor3 = initObj.anchor3
      }
      else {
        this.anchor3 = new NodeLoc();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiscoveryResponse
    // Serialize message field [anchor1]
    bufferOffset = NodeLoc.serialize(obj.anchor1, buffer, bufferOffset);
    // Serialize message field [anchor2]
    bufferOffset = NodeLoc.serialize(obj.anchor2, buffer, bufferOffset);
    // Serialize message field [anchor3]
    bufferOffset = NodeLoc.serialize(obj.anchor3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiscoveryResponse
    let len;
    let data = new DiscoveryResponse(null);
    // Deserialize message field [anchor1]
    data.anchor1 = NodeLoc.deserialize(buffer, bufferOffset);
    // Deserialize message field [anchor2]
    data.anchor2 = NodeLoc.deserialize(buffer, bufferOffset);
    // Deserialize message field [anchor3]
    data.anchor3 = NodeLoc.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += NodeLoc.getMessageSize(object.anchor1);
    length += NodeLoc.getMessageSize(object.anchor2);
    length += NodeLoc.getMessageSize(object.anchor3);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'irisbot/DiscoveryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1df242fcf691517c198036f4f1ddf2f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    NodeLoc anchor1
    NodeLoc anchor2
    NodeLoc anchor3
    
    
    ================================================================================
    MSG: irisbot/NodeLoc
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
    const resolved = new DiscoveryResponse(null);
    if (msg.anchor1 !== undefined) {
      resolved.anchor1 = NodeLoc.Resolve(msg.anchor1)
    }
    else {
      resolved.anchor1 = new NodeLoc()
    }

    if (msg.anchor2 !== undefined) {
      resolved.anchor2 = NodeLoc.Resolve(msg.anchor2)
    }
    else {
      resolved.anchor2 = new NodeLoc()
    }

    if (msg.anchor3 !== undefined) {
      resolved.anchor3 = NodeLoc.Resolve(msg.anchor3)
    }
    else {
      resolved.anchor3 = new NodeLoc()
    }

    return resolved;
    }
};

module.exports = {
  Request: DiscoveryRequest,
  Response: DiscoveryResponse,
  md5sum() { return '265f19547b1612b7a0fee47f7672b20c'; },
  datatype() { return 'irisbot/Discovery'; }
};
