// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/overload/v2alpha/overload.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

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

public struct Envoy_Config_Overload_V2alpha_ResourceMonitor {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the resource monitor to instantiate. Must match a registered
  /// resource monitor type. The built-in resource monitors are:
  ///
  /// * :ref:`envoy.resource_monitors.fixed_heap
  ///   <envoy_api_msg_config.resource_monitor.fixed_heap.v2alpha.FixedHeapConfig>`
  /// * :ref:`envoy.resource_monitors.injected_resource
  ///   <envoy_api_msg_config.resource_monitor.injected_resource.v2alpha.InjectedResourceConfig>`
  public var name: String = String()

  /// Configuration for the resource monitor being instantiated.
  public var configType: Envoy_Config_Overload_V2alpha_ResourceMonitor.OneOf_ConfigType? = nil

  public var config: SwiftProtobuf.Google_Protobuf_Struct {
    get {
      if case .config(let v)? = configType {return v}
      return SwiftProtobuf.Google_Protobuf_Struct()
    }
    set {configType = .config(newValue)}
  }

  public var typedConfig: SwiftProtobuf.Google_Protobuf_Any {
    get {
      if case .typedConfig(let v)? = configType {return v}
      return SwiftProtobuf.Google_Protobuf_Any()
    }
    set {configType = .typedConfig(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Configuration for the resource monitor being instantiated.
  public enum OneOf_ConfigType: Equatable {
    case config(SwiftProtobuf.Google_Protobuf_Struct)
    case typedConfig(SwiftProtobuf.Google_Protobuf_Any)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Config_Overload_V2alpha_ResourceMonitor.OneOf_ConfigType, rhs: Envoy_Config_Overload_V2alpha_ResourceMonitor.OneOf_ConfigType) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.config, .config): return {
        guard case .config(let l) = lhs, case .config(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.typedConfig, .typedConfig): return {
        guard case .typedConfig(let l) = lhs, case .typedConfig(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

public struct Envoy_Config_Overload_V2alpha_ThresholdTrigger {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// If the resource pressure is greater than or equal to this value, the trigger
  /// will fire.
  public var value: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Envoy_Config_Overload_V2alpha_Trigger {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the resource this is a trigger for.
  public var name: String = String()

  public var triggerOneof: Envoy_Config_Overload_V2alpha_Trigger.OneOf_TriggerOneof? = nil

  public var threshold: Envoy_Config_Overload_V2alpha_ThresholdTrigger {
    get {
      if case .threshold(let v)? = triggerOneof {return v}
      return Envoy_Config_Overload_V2alpha_ThresholdTrigger()
    }
    set {triggerOneof = .threshold(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_TriggerOneof: Equatable {
    case threshold(Envoy_Config_Overload_V2alpha_ThresholdTrigger)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Config_Overload_V2alpha_Trigger.OneOf_TriggerOneof, rhs: Envoy_Config_Overload_V2alpha_Trigger.OneOf_TriggerOneof) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.threshold, .threshold): return {
        guard case .threshold(let l) = lhs, case .threshold(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  public init() {}
}

public struct Envoy_Config_Overload_V2alpha_OverloadAction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the overload action. This is just a well-known string that listeners can
  /// use for registering callbacks. Custom overload actions should be named using reverse
  /// DNS to ensure uniqueness.
  public var name: String = String()

  /// A set of triggers for this action. If any of these triggers fire the overload action
  /// is activated. Listeners are notified when the overload action transitions from
  /// inactivated to activated, or vice versa.
  public var triggers: [Envoy_Config_Overload_V2alpha_Trigger] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Envoy_Config_Overload_V2alpha_OverloadManager {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The interval for refreshing resource usage.
  public var refreshInterval: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _refreshInterval ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_refreshInterval = newValue}
  }
  /// Returns true if `refreshInterval` has been explicitly set.
  public var hasRefreshInterval: Bool {return self._refreshInterval != nil}
  /// Clears the value of `refreshInterval`. Subsequent reads from it will return its default value.
  public mutating func clearRefreshInterval() {self._refreshInterval = nil}

  /// The set of resources to monitor.
  public var resourceMonitors: [Envoy_Config_Overload_V2alpha_ResourceMonitor] = []

  /// The set of overload actions.
  public var actions: [Envoy_Config_Overload_V2alpha_OverloadAction] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _refreshInterval: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.overload.v2alpha"

extension Envoy_Config_Overload_V2alpha_ResourceMonitor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ResourceMonitor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "config"),
    3: .standard(proto: "typed_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try {
        var v: SwiftProtobuf.Google_Protobuf_Struct?
        if let current = self.configType {
          try decoder.handleConflictingOneOf()
          if case .config(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.configType = .config(v)}
      }()
      case 3: try {
        var v: SwiftProtobuf.Google_Protobuf_Any?
        if let current = self.configType {
          try decoder.handleConflictingOneOf()
          if case .typedConfig(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.configType = .typedConfig(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.configType {
    case .config?: try {
      guard case .config(let v)? = self.configType else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .typedConfig?: try {
      guard case .typedConfig(let v)? = self.configType else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Overload_V2alpha_ResourceMonitor, rhs: Envoy_Config_Overload_V2alpha_ResourceMonitor) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.configType != rhs.configType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Overload_V2alpha_ThresholdTrigger: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ThresholdTrigger"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.value) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.value != 0 {
      try visitor.visitSingularDoubleField(value: self.value, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Overload_V2alpha_ThresholdTrigger, rhs: Envoy_Config_Overload_V2alpha_ThresholdTrigger) -> Bool {
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Overload_V2alpha_Trigger: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Trigger"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "threshold"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try {
        var v: Envoy_Config_Overload_V2alpha_ThresholdTrigger?
        if let current = self.triggerOneof {
          try decoder.handleConflictingOneOf()
          if case .threshold(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.triggerOneof = .threshold(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if case .threshold(let v)? = self.triggerOneof {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Overload_V2alpha_Trigger, rhs: Envoy_Config_Overload_V2alpha_Trigger) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.triggerOneof != rhs.triggerOneof {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Overload_V2alpha_OverloadAction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OverloadAction"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "triggers"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.triggers) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.triggers.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.triggers, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Overload_V2alpha_OverloadAction, rhs: Envoy_Config_Overload_V2alpha_OverloadAction) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.triggers != rhs.triggers {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Overload_V2alpha_OverloadManager: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OverloadManager"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "refresh_interval"),
    2: .standard(proto: "resource_monitors"),
    3: .same(proto: "actions"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._refreshInterval) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.resourceMonitors) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.actions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._refreshInterval {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.resourceMonitors.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.resourceMonitors, fieldNumber: 2)
    }
    if !self.actions.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.actions, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Overload_V2alpha_OverloadManager, rhs: Envoy_Config_Overload_V2alpha_OverloadManager) -> Bool {
    if lhs._refreshInterval != rhs._refreshInterval {return false}
    if lhs.resourceMonitors != rhs.resourceMonitors {return false}
    if lhs.actions != rhs.actions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
