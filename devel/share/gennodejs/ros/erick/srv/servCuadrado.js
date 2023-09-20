// Auto-generated. Do not edit!

// (in-package erick.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class servCuadradoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.numero = null;
    }
    else {
      if (initObj.hasOwnProperty('numero')) {
        this.numero = initObj.numero
      }
      else {
        this.numero = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type servCuadradoRequest
    // Serialize message field [numero]
    bufferOffset = _serializer.float64(obj.numero, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type servCuadradoRequest
    let len;
    let data = new servCuadradoRequest(null);
    // Deserialize message field [numero]
    data.numero = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'erick/servCuadradoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d9200d7ba2bbf6427fa65ce059ca943';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Archivo de mensaje para servicio de calculo del cuadrado
    float64 numero 	            # Campo para mensaje de peticion
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new servCuadradoRequest(null);
    if (msg.numero !== undefined) {
      resolved.numero = msg.numero;
    }
    else {
      resolved.numero = 0.0
    }

    return resolved;
    }
};

class servCuadradoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.respuesta = null;
      this.completado = null;
    }
    else {
      if (initObj.hasOwnProperty('respuesta')) {
        this.respuesta = initObj.respuesta
      }
      else {
        this.respuesta = 0.0;
      }
      if (initObj.hasOwnProperty('completado')) {
        this.completado = initObj.completado
      }
      else {
        this.completado = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type servCuadradoResponse
    // Serialize message field [respuesta]
    bufferOffset = _serializer.float64(obj.respuesta, buffer, bufferOffset);
    // Serialize message field [completado]
    bufferOffset = _serializer.bool(obj.completado, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type servCuadradoResponse
    let len;
    let data = new servCuadradoResponse(null);
    // Deserialize message field [respuesta]
    data.respuesta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [completado]
    data.completado = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'erick/servCuadradoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09b77b3bda4b7b678305ab5336ce2eaa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 respuesta	        # Campo de mensaje de respuesta
    bool    completado	        # Campo indicando si hubo exito en dar servicio
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new servCuadradoResponse(null);
    if (msg.respuesta !== undefined) {
      resolved.respuesta = msg.respuesta;
    }
    else {
      resolved.respuesta = 0.0
    }

    if (msg.completado !== undefined) {
      resolved.completado = msg.completado;
    }
    else {
      resolved.completado = false
    }

    return resolved;
    }
};

module.exports = {
  Request: servCuadradoRequest,
  Response: servCuadradoResponse,
  md5sum() { return '34f2e5caf0038897a998616af4afa87b'; },
  datatype() { return 'erick/servCuadrado'; }
};
