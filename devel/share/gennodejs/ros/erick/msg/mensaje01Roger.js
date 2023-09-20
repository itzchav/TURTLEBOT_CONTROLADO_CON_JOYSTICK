// Auto-generated. Do not edit!

// (in-package erick.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class mensaje01Roger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mensaje = null;
    }
    else {
      if (initObj.hasOwnProperty('mensaje')) {
        this.mensaje = initObj.mensaje
      }
      else {
        this.mensaje = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mensaje01Roger
    // Serialize message field [mensaje]
    bufferOffset = _serializer.string(obj.mensaje, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mensaje01Roger
    let len;
    let data = new mensaje01Roger(null);
    // Deserialize message field [mensaje]
    data.mensaje = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mensaje.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'erick/mensaje01Roger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a903682ef166367b021ed012ebf97f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mensaje
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mensaje01Roger(null);
    if (msg.mensaje !== undefined) {
      resolved.mensaje = msg.mensaje;
    }
    else {
      resolved.mensaje = ''
    }

    return resolved;
    }
};

module.exports = mensaje01Roger;
