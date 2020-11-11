// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/home/graph/v1/device.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Third-party device definition.
public struct Google_Home_Graph_V1_Device {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Third-party device ID.
  public var id: String {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  /// Hardware type of the device.
  /// See [device
  /// types](https://developers.google.com/assistant/smarthome/guides).
  public var type: String {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  /// Traits supported by the device.
  /// See [device
  /// traits](https://developers.google.com/assistant/smarthome/traits).
  public var traits: [String] {
    get {return _storage._traits}
    set {_uniqueStorage()._traits = newValue}
  }

  /// Names given to this device by your smart home Action.
  public var name: Google_Home_Graph_V1_DeviceNames {
    get {return _storage._name ?? Google_Home_Graph_V1_DeviceNames()}
    set {_uniqueStorage()._name = newValue}
  }
  /// Returns true if `name` has been explicitly set.
  public var hasName: Bool {return _storage._name != nil}
  /// Clears the value of `name`. Subsequent reads from it will return its default value.
  public mutating func clearName() {_uniqueStorage()._name = nil}

  /// Indicates whether your smart home Action will report state of this device
  /// to Google via
  /// [ReportStateAndNotification][google.home.graph.v1.HomeGraphApiService.ReportStateAndNotification].
  public var willReportState: Bool {
    get {return _storage._willReportState}
    set {_uniqueStorage()._willReportState = newValue}
  }

  /// Suggested name for the room where this device is installed.
  /// Google attempts to use this value during user setup.
  public var roomHint: String {
    get {return _storage._roomHint}
    set {_uniqueStorage()._roomHint = newValue}
  }

  /// Suggested name for the structure where this device is installed.
  /// Google attempts to use this value during user setup.
  public var structureHint: String {
    get {return _storage._structureHint}
    set {_uniqueStorage()._structureHint = newValue}
  }

  /// Device manufacturer, model, hardware version, and software version.
  public var deviceInfo: Google_Home_Graph_V1_DeviceInfo {
    get {return _storage._deviceInfo ?? Google_Home_Graph_V1_DeviceInfo()}
    set {_uniqueStorage()._deviceInfo = newValue}
  }
  /// Returns true if `deviceInfo` has been explicitly set.
  public var hasDeviceInfo: Bool {return _storage._deviceInfo != nil}
  /// Clears the value of `deviceInfo`. Subsequent reads from it will return its default value.
  public mutating func clearDeviceInfo() {_uniqueStorage()._deviceInfo = nil}

  /// Attributes for the traits supported by the device.
  public var attributes: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _storage._attributes ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_uniqueStorage()._attributes = newValue}
  }
  /// Returns true if `attributes` has been explicitly set.
  public var hasAttributes: Bool {return _storage._attributes != nil}
  /// Clears the value of `attributes`. Subsequent reads from it will return its default value.
  public mutating func clearAttributes() {_uniqueStorage()._attributes = nil}

  /// Custom device attributes stored in Home Graph and provided to your
  /// smart home Action in each
  /// [QUERY](https://developers.google.com/assistant/smarthome/reference/intent/query)
  /// and
  /// [EXECUTE](https://developers.google.com/assistant/smarthome/reference/intent/execute)
  /// intent.
  public var customData: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _storage._customData ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_uniqueStorage()._customData = newValue}
  }
  /// Returns true if `customData` has been explicitly set.
  public var hasCustomData: Bool {return _storage._customData != nil}
  /// Clears the value of `customData`. Subsequent reads from it will return its default value.
  public mutating func clearCustomData() {_uniqueStorage()._customData = nil}

  /// Alternate IDs associated with this device.
  /// This is used to identify cloud synced devices enabled for [local
  /// fulfillment](https://developers.google.com/assistant/smarthome/concepts/local).
  public var otherDeviceIds: [Google_Home_Graph_V1_AgentOtherDeviceId] {
    get {return _storage._otherDeviceIds}
    set {_uniqueStorage()._otherDeviceIds = newValue}
  }

  /// Indicates whether your smart home Action will report notifications
  /// to Google for this device via
  /// [ReportStateAndNotification][google.home.graph.v1.HomeGraphApiService.ReportStateAndNotification].
  ///
  /// If your smart home Action enables users to control device notifications,
  /// you should update this field and call
  /// [RequestSyncDevices][google.home.graph.v1.HomeGraphApiService.RequestSyncDevices].
  public var notificationSupportedByAgent: Bool {
    get {return _storage._notificationSupportedByAgent}
    set {_uniqueStorage()._notificationSupportedByAgent = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Identifiers used to describe the device.
public struct Google_Home_Graph_V1_DeviceNames {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Primary name of the device, generally provided by the user.
  public var name: String = String()

  /// Additional names provided by the user for the device.
  public var nicknames: [String] = []

  /// List of names provided by the manufacturer rather than the user, such as
  /// serial numbers, SKUs, etc.
  public var defaultNames: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Device information.
public struct Google_Home_Graph_V1_DeviceInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Device manufacturer.
  public var manufacturer: String = String()

  /// Device model.
  public var model: String = String()

  /// Device hardware version.
  public var hwVersion: String = String()

  /// Device software version.
  public var swVersion: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Alternate third-party device ID.
public struct Google_Home_Graph_V1_AgentOtherDeviceId {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Project ID for your smart home Action.
  public var agentID: String = String()

  /// Unique third-party device ID.
  public var deviceID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.home.graph.v1"

extension Google_Home_Graph_V1_Device: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Device"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "type"),
    3: .same(proto: "traits"),
    4: .same(proto: "name"),
    5: .standard(proto: "will_report_state"),
    6: .standard(proto: "room_hint"),
    7: .standard(proto: "structure_hint"),
    8: .standard(proto: "device_info"),
    9: .same(proto: "attributes"),
    10: .standard(proto: "custom_data"),
    11: .standard(proto: "other_device_ids"),
    12: .standard(proto: "notification_supported_by_agent"),
  ]

  fileprivate class _StorageClass {
    var _id: String = String()
    var _type: String = String()
    var _traits: [String] = []
    var _name: Google_Home_Graph_V1_DeviceNames? = nil
    var _willReportState: Bool = false
    var _roomHint: String = String()
    var _structureHint: String = String()
    var _deviceInfo: Google_Home_Graph_V1_DeviceInfo? = nil
    var _attributes: SwiftProtobuf.Google_Protobuf_Struct? = nil
    var _customData: SwiftProtobuf.Google_Protobuf_Struct? = nil
    var _otherDeviceIds: [Google_Home_Graph_V1_AgentOtherDeviceId] = []
    var _notificationSupportedByAgent: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _type = source._type
      _traits = source._traits
      _name = source._name
      _willReportState = source._willReportState
      _roomHint = source._roomHint
      _structureHint = source._structureHint
      _deviceInfo = source._deviceInfo
      _attributes = source._attributes
      _customData = source._customData
      _otherDeviceIds = source._otherDeviceIds
      _notificationSupportedByAgent = source._notificationSupportedByAgent
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularStringField(value: &_storage._id) }()
        case 2: try { try decoder.decodeSingularStringField(value: &_storage._type) }()
        case 3: try { try decoder.decodeRepeatedStringField(value: &_storage._traits) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._name) }()
        case 5: try { try decoder.decodeSingularBoolField(value: &_storage._willReportState) }()
        case 6: try { try decoder.decodeSingularStringField(value: &_storage._roomHint) }()
        case 7: try { try decoder.decodeSingularStringField(value: &_storage._structureHint) }()
        case 8: try { try decoder.decodeSingularMessageField(value: &_storage._deviceInfo) }()
        case 9: try { try decoder.decodeSingularMessageField(value: &_storage._attributes) }()
        case 10: try { try decoder.decodeSingularMessageField(value: &_storage._customData) }()
        case 11: try { try decoder.decodeRepeatedMessageField(value: &_storage._otherDeviceIds) }()
        case 12: try { try decoder.decodeSingularBoolField(value: &_storage._notificationSupportedByAgent) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._id.isEmpty {
        try visitor.visitSingularStringField(value: _storage._id, fieldNumber: 1)
      }
      if !_storage._type.isEmpty {
        try visitor.visitSingularStringField(value: _storage._type, fieldNumber: 2)
      }
      if !_storage._traits.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._traits, fieldNumber: 3)
      }
      if let v = _storage._name {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if _storage._willReportState != false {
        try visitor.visitSingularBoolField(value: _storage._willReportState, fieldNumber: 5)
      }
      if !_storage._roomHint.isEmpty {
        try visitor.visitSingularStringField(value: _storage._roomHint, fieldNumber: 6)
      }
      if !_storage._structureHint.isEmpty {
        try visitor.visitSingularStringField(value: _storage._structureHint, fieldNumber: 7)
      }
      if let v = _storage._deviceInfo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      }
      if let v = _storage._attributes {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      }
      if let v = _storage._customData {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      }
      if !_storage._otherDeviceIds.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._otherDeviceIds, fieldNumber: 11)
      }
      if _storage._notificationSupportedByAgent != false {
        try visitor.visitSingularBoolField(value: _storage._notificationSupportedByAgent, fieldNumber: 12)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Home_Graph_V1_Device, rhs: Google_Home_Graph_V1_Device) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._id != rhs_storage._id {return false}
        if _storage._type != rhs_storage._type {return false}
        if _storage._traits != rhs_storage._traits {return false}
        if _storage._name != rhs_storage._name {return false}
        if _storage._willReportState != rhs_storage._willReportState {return false}
        if _storage._roomHint != rhs_storage._roomHint {return false}
        if _storage._structureHint != rhs_storage._structureHint {return false}
        if _storage._deviceInfo != rhs_storage._deviceInfo {return false}
        if _storage._attributes != rhs_storage._attributes {return false}
        if _storage._customData != rhs_storage._customData {return false}
        if _storage._otherDeviceIds != rhs_storage._otherDeviceIds {return false}
        if _storage._notificationSupportedByAgent != rhs_storage._notificationSupportedByAgent {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Home_Graph_V1_DeviceNames: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeviceNames"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "nicknames"),
    3: .standard(proto: "default_names"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.nicknames) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.defaultNames) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.nicknames.isEmpty {
      try visitor.visitRepeatedStringField(value: self.nicknames, fieldNumber: 2)
    }
    if !self.defaultNames.isEmpty {
      try visitor.visitRepeatedStringField(value: self.defaultNames, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Home_Graph_V1_DeviceNames, rhs: Google_Home_Graph_V1_DeviceNames) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.nicknames != rhs.nicknames {return false}
    if lhs.defaultNames != rhs.defaultNames {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Home_Graph_V1_DeviceInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeviceInfo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "manufacturer"),
    2: .same(proto: "model"),
    3: .standard(proto: "hw_version"),
    4: .standard(proto: "sw_version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.manufacturer) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.model) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.hwVersion) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.swVersion) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.manufacturer.isEmpty {
      try visitor.visitSingularStringField(value: self.manufacturer, fieldNumber: 1)
    }
    if !self.model.isEmpty {
      try visitor.visitSingularStringField(value: self.model, fieldNumber: 2)
    }
    if !self.hwVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.hwVersion, fieldNumber: 3)
    }
    if !self.swVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.swVersion, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Home_Graph_V1_DeviceInfo, rhs: Google_Home_Graph_V1_DeviceInfo) -> Bool {
    if lhs.manufacturer != rhs.manufacturer {return false}
    if lhs.model != rhs.model {return false}
    if lhs.hwVersion != rhs.hwVersion {return false}
    if lhs.swVersion != rhs.swVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Home_Graph_V1_AgentOtherDeviceId: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AgentOtherDeviceId"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "agent_id"),
    2: .standard(proto: "device_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.agentID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.deviceID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.agentID.isEmpty {
      try visitor.visitSingularStringField(value: self.agentID, fieldNumber: 1)
    }
    if !self.deviceID.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Home_Graph_V1_AgentOtherDeviceId, rhs: Google_Home_Graph_V1_AgentOtherDeviceId) -> Bool {
    if lhs.agentID != rhs.agentID {return false}
    if lhs.deviceID != rhs.deviceID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
