// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/overload/v3/overload.proto
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

public struct Envoy_Config_Overload_V3_ResourceMonitor {
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
  public var configType: Envoy_Config_Overload_V3_ResourceMonitor.OneOf_ConfigType? = nil

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
    case typedConfig(SwiftProtobuf.Google_Protobuf_Any)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Config_Overload_V3_ResourceMonitor.OneOf_ConfigType, rhs: Envoy_Config_Overload_V3_ResourceMonitor.OneOf_ConfigType) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.typedConfig, .typedConfig): return {
        guard case .typedConfig(let l) = lhs, case .typedConfig(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  public init() {}
}

public struct Envoy_Config_Overload_V3_ThresholdTrigger {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// If the resource pressure is greater than or equal to this value, the trigger
  /// will enter saturation.
  public var value: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Envoy_Config_Overload_V3_ScaledTrigger {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// If the resource pressure is greater than this value, the trigger will be in the
  /// :ref:`scaling <arch_overview_overload_manager-triggers-state>` state with value
  /// `(pressure - scaling_threshold) / (saturation_threshold - scaling_threshold)`.
  public var scalingThreshold: Double = 0

  /// If the resource pressure is greater than this value, the trigger will enter saturation.
  public var saturationThreshold: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Envoy_Config_Overload_V3_Trigger {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the resource this is a trigger for.
  public var name: String = String()

  public var triggerOneof: Envoy_Config_Overload_V3_Trigger.OneOf_TriggerOneof? = nil

  public var threshold: Envoy_Config_Overload_V3_ThresholdTrigger {
    get {
      if case .threshold(let v)? = triggerOneof {return v}
      return Envoy_Config_Overload_V3_ThresholdTrigger()
    }
    set {triggerOneof = .threshold(newValue)}
  }

  public var scaled: Envoy_Config_Overload_V3_ScaledTrigger {
    get {
      if case .scaled(let v)? = triggerOneof {return v}
      return Envoy_Config_Overload_V3_ScaledTrigger()
    }
    set {triggerOneof = .scaled(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_TriggerOneof: Equatable {
    case threshold(Envoy_Config_Overload_V3_ThresholdTrigger)
    case scaled(Envoy_Config_Overload_V3_ScaledTrigger)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Config_Overload_V3_Trigger.OneOf_TriggerOneof, rhs: Envoy_Config_Overload_V3_Trigger.OneOf_TriggerOneof) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.threshold, .threshold): return {
        guard case .threshold(let l) = lhs, case .threshold(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.scaled, .scaled): return {
        guard case .scaled(let l) = lhs, case .scaled(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Typed configuration for the "envoy.overload_actions.reduce_timeouts" action. See
/// :ref:`the docs <config_overload_manager_reducing_timeouts>` for an example of how to configure
/// the action with different timeouts and minimum values.
public struct Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A set of timer scaling rules to be applied.
  public var timerScaleFactors: [Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig.ScaleTimer] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum TimerType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unsupported value; users must explicitly specify the timer they want scaled.
    case unspecified // = 0

    /// Adjusts the idle timer for downstream HTTP connections that takes effect when there are no active streams.
    /// This affects the value of :ref:`RouteAction.idle_timeout <envoy_v3_api_field_config.route.v3.RouteAction.idle_timeout>`.
    case httpDownstreamConnectionIdle // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .httpDownstreamConnectionIdle
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .httpDownstreamConnectionIdle: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public struct ScaleTimer {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The type of timer this minimum applies to.
    public var timer: Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig.TimerType = .unspecified

    public var overloadAdjust: Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig.ScaleTimer.OneOf_OverloadAdjust? = nil

    /// Sets the minimum duration as an absolute value.
    public var minTimeout: SwiftProtobuf.Google_Protobuf_Duration {
      get {
        if case .minTimeout(let v)? = overloadAdjust {return v}
        return SwiftProtobuf.Google_Protobuf_Duration()
      }
      set {overloadAdjust = .minTimeout(newValue)}
    }

    /// Sets the minimum duration as a percentage of the maximum value.
    public var minScale: Envoy_Type_V3_Percent {
      get {
        if case .minScale(let v)? = overloadAdjust {return v}
        return Envoy_Type_V3_Percent()
      }
      set {overloadAdjust = .minScale(newValue)}
    }

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public enum OneOf_OverloadAdjust: Equatable {
      /// Sets the minimum duration as an absolute value.
      case minTimeout(SwiftProtobuf.Google_Protobuf_Duration)
      /// Sets the minimum duration as a percentage of the maximum value.
      case minScale(Envoy_Type_V3_Percent)

    #if !swift(>=4.1)
      public static func ==(lhs: Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig.ScaleTimer.OneOf_OverloadAdjust, rhs: Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig.ScaleTimer.OneOf_OverloadAdjust) -> Bool {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch (lhs, rhs) {
        case (.minTimeout, .minTimeout): return {
          guard case .minTimeout(let l) = lhs, case .minTimeout(let r) = rhs else { preconditionFailure() }
          return l == r
        }()
        case (.minScale, .minScale): return {
          guard case .minScale(let l) = lhs, case .minScale(let r) = rhs else { preconditionFailure() }
          return l == r
        }()
        default: return false
        }
      }
    #endif
    }

    public init() {}
  }

  public init() {}
}

#if swift(>=4.2)

extension Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig.TimerType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig.TimerType] = [
    .unspecified,
    .httpDownstreamConnectionIdle,
  ]
}

#endif  // swift(>=4.2)

public struct Envoy_Config_Overload_V3_OverloadAction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the overload action. This is just a well-known string that listeners can
  /// use for registering callbacks. Custom overload actions should be named using reverse
  /// DNS to ensure uniqueness.
  public var name: String = String()

  /// A set of triggers for this action. The state of the action is the maximum
  /// state of all triggers, which can be scaling between 0 and 1 or saturated. Listeners
  /// are notified when the overload action changes state.
  public var triggers: [Envoy_Config_Overload_V3_Trigger] = []

  /// Configuration for the action being instantiated.
  public var typedConfig: SwiftProtobuf.Google_Protobuf_Any {
    get {return _typedConfig ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_typedConfig = newValue}
  }
  /// Returns true if `typedConfig` has been explicitly set.
  public var hasTypedConfig: Bool {return self._typedConfig != nil}
  /// Clears the value of `typedConfig`. Subsequent reads from it will return its default value.
  public mutating func clearTypedConfig() {self._typedConfig = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _typedConfig: SwiftProtobuf.Google_Protobuf_Any? = nil
}

public struct Envoy_Config_Overload_V3_OverloadManager {
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
  public var resourceMonitors: [Envoy_Config_Overload_V3_ResourceMonitor] = []

  /// The set of overload actions.
  public var actions: [Envoy_Config_Overload_V3_OverloadAction] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _refreshInterval: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.overload.v3"

extension Envoy_Config_Overload_V3_ResourceMonitor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ResourceMonitor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    3: .standard(proto: "typed_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
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
    if case .typedConfig(let v)? = self.configType {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Overload_V3_ResourceMonitor, rhs: Envoy_Config_Overload_V3_ResourceMonitor) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.configType != rhs.configType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Overload_V3_ThresholdTrigger: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
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

  public static func ==(lhs: Envoy_Config_Overload_V3_ThresholdTrigger, rhs: Envoy_Config_Overload_V3_ThresholdTrigger) -> Bool {
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Overload_V3_ScaledTrigger: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ScaledTrigger"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "scaling_threshold"),
    2: .standard(proto: "saturation_threshold"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.scalingThreshold) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.saturationThreshold) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.scalingThreshold != 0 {
      try visitor.visitSingularDoubleField(value: self.scalingThreshold, fieldNumber: 1)
    }
    if self.saturationThreshold != 0 {
      try visitor.visitSingularDoubleField(value: self.saturationThreshold, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Overload_V3_ScaledTrigger, rhs: Envoy_Config_Overload_V3_ScaledTrigger) -> Bool {
    if lhs.scalingThreshold != rhs.scalingThreshold {return false}
    if lhs.saturationThreshold != rhs.saturationThreshold {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Overload_V3_Trigger: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Trigger"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "threshold"),
    3: .same(proto: "scaled"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try {
        var v: Envoy_Config_Overload_V3_ThresholdTrigger?
        if let current = self.triggerOneof {
          try decoder.handleConflictingOneOf()
          if case .threshold(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.triggerOneof = .threshold(v)}
      }()
      case 3: try {
        var v: Envoy_Config_Overload_V3_ScaledTrigger?
        if let current = self.triggerOneof {
          try decoder.handleConflictingOneOf()
          if case .scaled(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.triggerOneof = .scaled(v)}
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
    switch self.triggerOneof {
    case .threshold?: try {
      guard case .threshold(let v)? = self.triggerOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .scaled?: try {
      guard case .scaled(let v)? = self.triggerOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Overload_V3_Trigger, rhs: Envoy_Config_Overload_V3_Trigger) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.triggerOneof != rhs.triggerOneof {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ScaleTimersOverloadActionConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "timer_scale_factors"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.timerScaleFactors) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.timerScaleFactors.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.timerScaleFactors, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig, rhs: Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig) -> Bool {
    if lhs.timerScaleFactors != rhs.timerScaleFactors {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig.TimerType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED"),
    1: .same(proto: "HTTP_DOWNSTREAM_CONNECTION_IDLE"),
  ]
}

extension Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig.ScaleTimer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig.protoMessageName + ".ScaleTimer"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "timer"),
    2: .standard(proto: "min_timeout"),
    3: .standard(proto: "min_scale"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.timer) }()
      case 2: try {
        var v: SwiftProtobuf.Google_Protobuf_Duration?
        if let current = self.overloadAdjust {
          try decoder.handleConflictingOneOf()
          if case .minTimeout(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.overloadAdjust = .minTimeout(v)}
      }()
      case 3: try {
        var v: Envoy_Type_V3_Percent?
        if let current = self.overloadAdjust {
          try decoder.handleConflictingOneOf()
          if case .minScale(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.overloadAdjust = .minScale(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.timer != .unspecified {
      try visitor.visitSingularEnumField(value: self.timer, fieldNumber: 1)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.overloadAdjust {
    case .minTimeout?: try {
      guard case .minTimeout(let v)? = self.overloadAdjust else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .minScale?: try {
      guard case .minScale(let v)? = self.overloadAdjust else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig.ScaleTimer, rhs: Envoy_Config_Overload_V3_ScaleTimersOverloadActionConfig.ScaleTimer) -> Bool {
    if lhs.timer != rhs.timer {return false}
    if lhs.overloadAdjust != rhs.overloadAdjust {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Overload_V3_OverloadAction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OverloadAction"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "triggers"),
    3: .standard(proto: "typed_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.triggers) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._typedConfig) }()
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
    if let v = self._typedConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Overload_V3_OverloadAction, rhs: Envoy_Config_Overload_V3_OverloadAction) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.triggers != rhs.triggers {return false}
    if lhs._typedConfig != rhs._typedConfig {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Overload_V3_OverloadManager: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
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

  public static func ==(lhs: Envoy_Config_Overload_V3_OverloadManager, rhs: Envoy_Config_Overload_V3_OverloadManager) -> Bool {
    if lhs._refreshInterval != rhs._refreshInterval {return false}
    if lhs.resourceMonitors != rhs.resourceMonitors {return false}
    if lhs.actions != rhs.actions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
