// Auto-generated. Do not edit!

// (in-package letsgooo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TargetPositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_x = null;
      this.target_y = null;
      this.target_theta = null;
    }
    else {
      if (initObj.hasOwnProperty('target_x')) {
        this.target_x = initObj.target_x
      }
      else {
        this.target_x = 0.0;
      }
      if (initObj.hasOwnProperty('target_y')) {
        this.target_y = initObj.target_y
      }
      else {
        this.target_y = 0.0;
      }
      if (initObj.hasOwnProperty('target_theta')) {
        this.target_theta = initObj.target_theta
      }
      else {
        this.target_theta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TargetPositionRequest
    // Serialize message field [target_x]
    bufferOffset = _serializer.float64(obj.target_x, buffer, bufferOffset);
    // Serialize message field [target_y]
    bufferOffset = _serializer.float64(obj.target_y, buffer, bufferOffset);
    // Serialize message field [target_theta]
    bufferOffset = _serializer.float64(obj.target_theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TargetPositionRequest
    let len;
    let data = new TargetPositionRequest(null);
    // Deserialize message field [target_x]
    data.target_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_y]
    data.target_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_theta]
    data.target_theta = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'letsgooo/TargetPositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58fcf218a612dadf18639e716d74ede6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 target_x
    float64 target_y
    float64 target_theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TargetPositionRequest(null);
    if (msg.target_x !== undefined) {
      resolved.target_x = msg.target_x;
    }
    else {
      resolved.target_x = 0.0
    }

    if (msg.target_y !== undefined) {
      resolved.target_y = msg.target_y;
    }
    else {
      resolved.target_y = 0.0
    }

    if (msg.target_theta !== undefined) {
      resolved.target_theta = msg.target_theta;
    }
    else {
      resolved.target_theta = 0.0
    }

    return resolved;
    }
};

class TargetPositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linear_x = null;
      this.angular_z = null;
      this.feedback = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('linear_x')) {
        this.linear_x = initObj.linear_x
      }
      else {
        this.linear_x = 0.0;
      }
      if (initObj.hasOwnProperty('angular_z')) {
        this.angular_z = initObj.angular_z
      }
      else {
        this.angular_z = 0.0;
      }
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = false;
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
    // Serializes a message object of type TargetPositionResponse
    // Serialize message field [linear_x]
    bufferOffset = _serializer.float64(obj.linear_x, buffer, bufferOffset);
    // Serialize message field [angular_z]
    bufferOffset = _serializer.float64(obj.angular_z, buffer, bufferOffset);
    // Serialize message field [feedback]
    bufferOffset = _serializer.bool(obj.feedback, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TargetPositionResponse
    let len;
    let data = new TargetPositionResponse(null);
    // Deserialize message field [linear_x]
    data.linear_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_z]
    data.angular_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'letsgooo/TargetPositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54e9bf1395a77a1c2acdc8f01066c0e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 linear_x
    float64 angular_z
    bool feedback
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TargetPositionResponse(null);
    if (msg.linear_x !== undefined) {
      resolved.linear_x = msg.linear_x;
    }
    else {
      resolved.linear_x = 0.0
    }

    if (msg.angular_z !== undefined) {
      resolved.angular_z = msg.angular_z;
    }
    else {
      resolved.angular_z = 0.0
    }

    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = false
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

module.exports = {
  Request: TargetPositionRequest,
  Response: TargetPositionResponse,
  md5sum() { return 'dd76aff00a72b33e8d77950fa07ebddf'; },
  datatype() { return 'letsgooo/TargetPosition'; }
};
