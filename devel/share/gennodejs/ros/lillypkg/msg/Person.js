// Auto-generated. Do not edit!

// (in-package lillypkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Person {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.first_name = null;
      this.last_name = null;
    }
    else {
      if (initObj.hasOwnProperty('first_name')) {
        this.first_name = initObj.first_name
      }
      else {
        this.first_name = '';
      }
      if (initObj.hasOwnProperty('last_name')) {
        this.last_name = initObj.last_name
      }
      else {
        this.last_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Person
    // Serialize message field [first_name]
    bufferOffset = _serializer.string(obj.first_name, buffer, bufferOffset);
    // Serialize message field [last_name]
    bufferOffset = _serializer.string(obj.last_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Person
    let len;
    let data = new Person(null);
    // Deserialize message field [first_name]
    data.first_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [last_name]
    data.last_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.first_name.length;
    length += object.last_name.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lillypkg/Person';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7eae61f42fe10628000d2b10fec2f3bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string first_name
    string last_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Person(null);
    if (msg.first_name !== undefined) {
      resolved.first_name = msg.first_name;
    }
    else {
      resolved.first_name = ''
    }

    if (msg.last_name !== undefined) {
      resolved.last_name = msg.last_name;
    }
    else {
      resolved.last_name = ''
    }

    return resolved;
    }
};

module.exports = Person;
