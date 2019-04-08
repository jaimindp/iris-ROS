// Auto-generated. Do not edit!

// (in-package irisbot.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NodeLoc = require('../msg/NodeLoc.js');

//-----------------------------------------------------------

let Pose = require('../msg/Pose.js');

//-----------------------------------------------------------

class LocalizeRequest {
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
    // Serializes a message object of type LocalizeRequest
    // Serialize message field [anchor1]
    bufferOffset = NodeLoc.serialize(obj.anchor1, buffer, bufferOffset);
    // Serialize message field [anchor2]
    bufferOffset = NodeLoc.serialize(obj.anchor2, buffer, bufferOffset);
    // Serialize message field [anchor3]
    bufferOffset = NodeLoc.serialize(obj.anchor3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalizeRequest
    let len;
    let data = new LocalizeRequest(null);
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
    return 'irisbot/LocalizeRequest';
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
    const resolved = new LocalizeRequest(null);
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

class LocalizeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rel_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('rel_pose')) {
        this.rel_pose = initObj.rel_pose
      }
      else {
        this.rel_pose = new Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalizeResponse
    // Serialize message field [rel_pose]
    bufferOffset = Pose.serialize(obj.rel_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalizeResponse
    let len;
    let data = new LocalizeResponse(null);
    // Deserialize message field [rel_pose]
    data.rel_pose = Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'irisbot/LocalizeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68ec387fd2901495122a5b8603ddb7f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Pose rel_pose
    
    
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
    const resolved = new LocalizeResponse(null);
    if (msg.rel_pose !== undefined) {
      resolved.rel_pose = Pose.Resolve(msg.rel_pose)
    }
    else {
      resolved.rel_pose = new Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: LocalizeRequest,
  Response: LocalizeResponse,
  md5sum() { return '7b1f8b4ce8b7517335b67cd48d174add'; },
  datatype() { return 'irisbot/Localize'; }
};
