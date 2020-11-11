// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/data/core/v2alpha/health_check_event.proto
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

public enum Envoy_Data_Core_V2alpha_HealthCheckFailureType: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case active // = 0
  case passive // = 1
  case network // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .active
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .active
    case 1: self = .passive
    case 2: self = .network
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .active: return 0
    case .passive: return 1
    case .network: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Envoy_Data_Core_V2alpha_HealthCheckFailureType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Data_Core_V2alpha_HealthCheckFailureType] = [
    .active,
    .passive,
    .network,
  ]
}

#endif  // swift(>=4.2)

public enum Envoy_Data_Core_V2alpha_HealthCheckerType: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case http // = 0
  case tcp // = 1
  case grpc // = 2
  case redis // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .http
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .http
    case 1: self = .tcp
    case 2: self = .grpc
    case 3: self = .redis
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .http: return 0
    case .tcp: return 1
    case .grpc: return 2
    case .redis: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Envoy_Data_Core_V2alpha_HealthCheckerType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Data_Core_V2alpha_HealthCheckerType] = [
    .http,
    .tcp,
    .grpc,
    .redis,
  ]
}

#endif  // swift(>=4.2)

/// [#next-free-field: 10]
public struct Envoy_Data_Core_V2alpha_HealthCheckEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var healthCheckerType: Envoy_Data_Core_V2alpha_HealthCheckerType = .http

  public var host: Envoy_Api_V2_Core_Address {
    get {return _host ?? Envoy_Api_V2_Core_Address()}
    set {_host = newValue}
  }
  /// Returns true if `host` has been explicitly set.
  public var hasHost: Bool {return self._host != nil}
  /// Clears the value of `host`. Subsequent reads from it will return its default value.
  public mutating func clearHost() {self._host = nil}

  public var clusterName: String = String()

  public var event: Envoy_Data_Core_V2alpha_HealthCheckEvent.OneOf_Event? = nil

  /// Host ejection.
  public var ejectUnhealthyEvent: Envoy_Data_Core_V2alpha_HealthCheckEjectUnhealthy {
    get {
      if case .ejectUnhealthyEvent(let v)? = event {return v}
      return Envoy_Data_Core_V2alpha_HealthCheckEjectUnhealthy()
    }
    set {event = .ejectUnhealthyEvent(newValue)}
  }

  /// Host addition.
  public var addHealthyEvent: Envoy_Data_Core_V2alpha_HealthCheckAddHealthy {
    get {
      if case .addHealthyEvent(let v)? = event {return v}
      return Envoy_Data_Core_V2alpha_HealthCheckAddHealthy()
    }
    set {event = .addHealthyEvent(newValue)}
  }

  /// Host failure.
  public var healthCheckFailureEvent: Envoy_Data_Core_V2alpha_HealthCheckFailure {
    get {
      if case .healthCheckFailureEvent(let v)? = event {return v}
      return Envoy_Data_Core_V2alpha_HealthCheckFailure()
    }
    set {event = .healthCheckFailureEvent(newValue)}
  }

  /// Healthy host became degraded.
  public var degradedHealthyHost: Envoy_Data_Core_V2alpha_DegradedHealthyHost {
    get {
      if case .degradedHealthyHost(let v)? = event {return v}
      return Envoy_Data_Core_V2alpha_DegradedHealthyHost()
    }
    set {event = .degradedHealthyHost(newValue)}
  }

  /// A degraded host returned to being healthy.
  public var noLongerDegradedHost: Envoy_Data_Core_V2alpha_NoLongerDegradedHost {
    get {
      if case .noLongerDegradedHost(let v)? = event {return v}
      return Envoy_Data_Core_V2alpha_NoLongerDegradedHost()
    }
    set {event = .noLongerDegradedHost(newValue)}
  }

  /// Timestamp for event.
  public var timestamp: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _timestamp ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_timestamp = newValue}
  }
  /// Returns true if `timestamp` has been explicitly set.
  public var hasTimestamp: Bool {return self._timestamp != nil}
  /// Clears the value of `timestamp`. Subsequent reads from it will return its default value.
  public mutating func clearTimestamp() {self._timestamp = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Event: Equatable {
    /// Host ejection.
    case ejectUnhealthyEvent(Envoy_Data_Core_V2alpha_HealthCheckEjectUnhealthy)
    /// Host addition.
    case addHealthyEvent(Envoy_Data_Core_V2alpha_HealthCheckAddHealthy)
    /// Host failure.
    case healthCheckFailureEvent(Envoy_Data_Core_V2alpha_HealthCheckFailure)
    /// Healthy host became degraded.
    case degradedHealthyHost(Envoy_Data_Core_V2alpha_DegradedHealthyHost)
    /// A degraded host returned to being healthy.
    case noLongerDegradedHost(Envoy_Data_Core_V2alpha_NoLongerDegradedHost)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Data_Core_V2alpha_HealthCheckEvent.OneOf_Event, rhs: Envoy_Data_Core_V2alpha_HealthCheckEvent.OneOf_Event) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.ejectUnhealthyEvent, .ejectUnhealthyEvent): return {
        guard case .ejectUnhealthyEvent(let l) = lhs, case .ejectUnhealthyEvent(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.addHealthyEvent, .addHealthyEvent): return {
        guard case .addHealthyEvent(let l) = lhs, case .addHealthyEvent(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.healthCheckFailureEvent, .healthCheckFailureEvent): return {
        guard case .healthCheckFailureEvent(let l) = lhs, case .healthCheckFailureEvent(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.degradedHealthyHost, .degradedHealthyHost): return {
        guard case .degradedHealthyHost(let l) = lhs, case .degradedHealthyHost(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.noLongerDegradedHost, .noLongerDegradedHost): return {
        guard case .noLongerDegradedHost(let l) = lhs, case .noLongerDegradedHost(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _host: Envoy_Api_V2_Core_Address? = nil
  fileprivate var _timestamp: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct Envoy_Data_Core_V2alpha_HealthCheckEjectUnhealthy {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The type of failure that caused this ejection.
  public var failureType: Envoy_Data_Core_V2alpha_HealthCheckFailureType = .active

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Envoy_Data_Core_V2alpha_HealthCheckAddHealthy {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Whether this addition is the result of the first ever health check on a host, in which case
  /// the configured :ref:`healthy threshold <envoy_api_field_core.HealthCheck.healthy_threshold>`
  /// is bypassed and the host is immediately added.
  public var firstCheck: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Envoy_Data_Core_V2alpha_HealthCheckFailure {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The type of failure that caused this event.
  public var failureType: Envoy_Data_Core_V2alpha_HealthCheckFailureType = .active

  /// Whether this event is the result of the first ever health check on a host.
  public var firstCheck: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Envoy_Data_Core_V2alpha_DegradedHealthyHost {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Envoy_Data_Core_V2alpha_NoLongerDegradedHost {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.data.core.v2alpha"

extension Envoy_Data_Core_V2alpha_HealthCheckFailureType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ACTIVE"),
    1: .same(proto: "PASSIVE"),
    2: .same(proto: "NETWORK"),
  ]
}

extension Envoy_Data_Core_V2alpha_HealthCheckerType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "HTTP"),
    1: .same(proto: "TCP"),
    2: .same(proto: "GRPC"),
    3: .same(proto: "REDIS"),
  ]
}

extension Envoy_Data_Core_V2alpha_HealthCheckEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HealthCheckEvent"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "health_checker_type"),
    2: .same(proto: "host"),
    3: .standard(proto: "cluster_name"),
    4: .standard(proto: "eject_unhealthy_event"),
    5: .standard(proto: "add_healthy_event"),
    7: .standard(proto: "health_check_failure_event"),
    8: .standard(proto: "degraded_healthy_host"),
    9: .standard(proto: "no_longer_degraded_host"),
    6: .same(proto: "timestamp"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.healthCheckerType) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._host) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.clusterName) }()
      case 4: try {
        var v: Envoy_Data_Core_V2alpha_HealthCheckEjectUnhealthy?
        if let current = self.event {
          try decoder.handleConflictingOneOf()
          if case .ejectUnhealthyEvent(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.event = .ejectUnhealthyEvent(v)}
      }()
      case 5: try {
        var v: Envoy_Data_Core_V2alpha_HealthCheckAddHealthy?
        if let current = self.event {
          try decoder.handleConflictingOneOf()
          if case .addHealthyEvent(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.event = .addHealthyEvent(v)}
      }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._timestamp) }()
      case 7: try {
        var v: Envoy_Data_Core_V2alpha_HealthCheckFailure?
        if let current = self.event {
          try decoder.handleConflictingOneOf()
          if case .healthCheckFailureEvent(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.event = .healthCheckFailureEvent(v)}
      }()
      case 8: try {
        var v: Envoy_Data_Core_V2alpha_DegradedHealthyHost?
        if let current = self.event {
          try decoder.handleConflictingOneOf()
          if case .degradedHealthyHost(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.event = .degradedHealthyHost(v)}
      }()
      case 9: try {
        var v: Envoy_Data_Core_V2alpha_NoLongerDegradedHost?
        if let current = self.event {
          try decoder.handleConflictingOneOf()
          if case .noLongerDegradedHost(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.event = .noLongerDegradedHost(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.healthCheckerType != .http {
      try visitor.visitSingularEnumField(value: self.healthCheckerType, fieldNumber: 1)
    }
    if let v = self._host {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.clusterName.isEmpty {
      try visitor.visitSingularStringField(value: self.clusterName, fieldNumber: 3)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.event {
    case .ejectUnhealthyEvent?: try {
      guard case .ejectUnhealthyEvent(let v)? = self.event else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case .addHealthyEvent?: try {
      guard case .addHealthyEvent(let v)? = self.event else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }()
    default: break
    }
    if let v = self._timestamp {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.event {
    case .healthCheckFailureEvent?: try {
      guard case .healthCheckFailureEvent(let v)? = self.event else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }()
    case .degradedHealthyHost?: try {
      guard case .degradedHealthyHost(let v)? = self.event else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }()
    case .noLongerDegradedHost?: try {
      guard case .noLongerDegradedHost(let v)? = self.event else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }()
    default: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Core_V2alpha_HealthCheckEvent, rhs: Envoy_Data_Core_V2alpha_HealthCheckEvent) -> Bool {
    if lhs.healthCheckerType != rhs.healthCheckerType {return false}
    if lhs._host != rhs._host {return false}
    if lhs.clusterName != rhs.clusterName {return false}
    if lhs.event != rhs.event {return false}
    if lhs._timestamp != rhs._timestamp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Core_V2alpha_HealthCheckEjectUnhealthy: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HealthCheckEjectUnhealthy"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "failure_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.failureType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.failureType != .active {
      try visitor.visitSingularEnumField(value: self.failureType, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Core_V2alpha_HealthCheckEjectUnhealthy, rhs: Envoy_Data_Core_V2alpha_HealthCheckEjectUnhealthy) -> Bool {
    if lhs.failureType != rhs.failureType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Core_V2alpha_HealthCheckAddHealthy: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HealthCheckAddHealthy"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "first_check"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.firstCheck) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.firstCheck != false {
      try visitor.visitSingularBoolField(value: self.firstCheck, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Core_V2alpha_HealthCheckAddHealthy, rhs: Envoy_Data_Core_V2alpha_HealthCheckAddHealthy) -> Bool {
    if lhs.firstCheck != rhs.firstCheck {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Core_V2alpha_HealthCheckFailure: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HealthCheckFailure"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "failure_type"),
    2: .standard(proto: "first_check"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.failureType) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.firstCheck) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.failureType != .active {
      try visitor.visitSingularEnumField(value: self.failureType, fieldNumber: 1)
    }
    if self.firstCheck != false {
      try visitor.visitSingularBoolField(value: self.firstCheck, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Core_V2alpha_HealthCheckFailure, rhs: Envoy_Data_Core_V2alpha_HealthCheckFailure) -> Bool {
    if lhs.failureType != rhs.failureType {return false}
    if lhs.firstCheck != rhs.firstCheck {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Core_V2alpha_DegradedHealthyHost: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DegradedHealthyHost"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Core_V2alpha_DegradedHealthyHost, rhs: Envoy_Data_Core_V2alpha_DegradedHealthyHost) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Core_V2alpha_NoLongerDegradedHost: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NoLongerDegradedHost"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Core_V2alpha_NoLongerDegradedHost, rhs: Envoy_Data_Core_V2alpha_NoLongerDegradedHost) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
