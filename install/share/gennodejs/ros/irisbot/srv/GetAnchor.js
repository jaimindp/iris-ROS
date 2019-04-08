// Auto-generated. Do not edit!

// (in-package irisbot.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let NodeLoc = require('../msg/NodeLoc.js');

//-----------------------------------------------------------

class GetAnchorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ids = null;
    }
    else {
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAnchorRequest
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.int32(obj.ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAnchorRequest
    let len;
    let data = new GetAnchorRequest(null);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.ids.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'irisbot/GetAnchorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f22efebf407aadba2ecc69df353d113';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAnchorRequest(null);
    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    return resolved;
    }
};

class GetAnchorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.anchors = null;
      this.dists = null;
    }
    else {
      if (initObj.hasOwnProperty('anchors')) {
        this.anchors = initObj.anchors
      }
      else {
        this.anchors = [];
      }
      if (initObj.hasOwnProperty('dists')) {
        this.dists = initObj.dists
      }
      else {
        this.dists = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAnchorResponse
    // Serialize message field [anchors]
    // Serialize the length for message field [anchors]
    bufferOffset = _serializer.uint32(obj.anchors.length, buffer, bufferOffset);
    obj.anchors.forEach((val) => {
      bufferOffset = NodeLoc.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dists]
    bufferOffset = _arraySerializer.float32(obj.dists, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAnchorResponse
    let len;
    let data = new GetAnchorResponse(null);
    // Deserialize message field [anchors]
    // Deserialize array length for message field [anchors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.anchors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.anchors[i] = NodeLoc.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dists]
    data.dists = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.anchors.forEach((val) => {
      length += NodeLoc.getMessageSize(val);
    });
    length += 4 * object.dists.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'irisbot/GetAnchorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bdcc41d11e382e747897694dfa86a621';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    NodeLoc[] anchors
    float32[] dists
    
    
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
    const resolved = new GetAnchorResponse(null);
    if (msg.anchors !== undefined) {
      resolved.anchors = new Array(msg.anchors.length);
      for (let i = 0; i < resolved.anchors.length; ++i) {
        resolved.anchors[i] = NodeLoc.Resolve(msg.anchors[i]);
      }
    }
    else {
      resolved.anchors = []
    }

    if (msg.dists !== undefined) {
      resolved.dists = msg.dists;
    }
    else {
      resolved.dists = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAnchorRequest,
  Response: GetAnchorResponse,
  md5sum() { return 'f752ccbb67076c1bee44990c827507b5'; },
  datatype() { return 'irisbot/GetAnchor'; }
};
