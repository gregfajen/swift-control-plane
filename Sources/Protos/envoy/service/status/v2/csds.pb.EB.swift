// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/service/status/v2/csds.proto
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

/// Status of a config.
public enum Envoy_Service_Status_V2_ConfigStatus: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Status info is not available/unknown.
  case unknown // = 0

  /// Management server has sent the config to client and received ACK.
  case synced // = 1

  /// Config is not sent.
  case notSent // = 2

  /// Management server has sent the config to client but hasn’t received
  /// ACK/NACK.
  case stale // = 3

  /// Management server has sent the config to client but received NACK.
  case error // = 4
  case UNRECOGNIZED(Int)

  public init() {
    self = .unknown
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .synced
    case 2: self = .notSent
    case 3: self = .stale
    case 4: self = .error
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .synced: return 1
    case .notSent: return 2
    case .stale: return 3
    case .error: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Envoy_Service_Status_V2_ConfigStatus: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Service_Status_V2_ConfigStatus] = [
    .unknown,
    .synced,
    .notSent,
    .stale,
    .error,
  ]
}

#endif  // swift(>=4.2)

/// Request for client status of clients identified by a list of NodeMatchers.
public struct Envoy_Service_Status_V2_ClientStatusRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Management server can use these match criteria to identify clients.
  /// The match follows OR semantics.
  public var nodeMatchers: [Envoy_Type_Matcher_NodeMatcher] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Detailed config (per xDS) with status.
/// [#next-free-field: 6]
public struct Envoy_Service_Status_V2_PerXdsConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: Envoy_Service_Status_V2_ConfigStatus = .unknown

  public var perXdsConfig: Envoy_Service_Status_V2_PerXdsConfig.OneOf_PerXdsConfig? = nil

  public var listenerConfig: Envoy_Admin_V2alpha_ListenersConfigDump {
    get {
      if case .listenerConfig(let v)? = perXdsConfig {return v}
      return Envoy_Admin_V2alpha_ListenersConfigDump()
    }
    set {perXdsConfig = .listenerConfig(newValue)}
  }

  public var clusterConfig: Envoy_Admin_V2alpha_ClustersConfigDump {
    get {
      if case .clusterConfig(let v)? = perXdsConfig {return v}
      return Envoy_Admin_V2alpha_ClustersConfigDump()
    }
    set {perXdsConfig = .clusterConfig(newValue)}
  }

  public var routeConfig: Envoy_Admin_V2alpha_RoutesConfigDump {
    get {
      if case .routeConfig(let v)? = perXdsConfig {return v}
      return Envoy_Admin_V2alpha_RoutesConfigDump()
    }
    set {perXdsConfig = .routeConfig(newValue)}
  }

  public var scopedRouteConfig: Envoy_Admin_V2alpha_ScopedRoutesConfigDump {
    get {
      if case .scopedRouteConfig(let v)? = perXdsConfig {return v}
      return Envoy_Admin_V2alpha_ScopedRoutesConfigDump()
    }
    set {perXdsConfig = .scopedRouteConfig(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_PerXdsConfig: Equatable {
    case listenerConfig(Envoy_Admin_V2alpha_ListenersConfigDump)
    case clusterConfig(Envoy_Admin_V2alpha_ClustersConfigDump)
    case routeConfig(Envoy_Admin_V2alpha_RoutesConfigDump)
    case scopedRouteConfig(Envoy_Admin_V2alpha_ScopedRoutesConfigDump)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Service_Status_V2_PerXdsConfig.OneOf_PerXdsConfig, rhs: Envoy_Service_Status_V2_PerXdsConfig.OneOf_PerXdsConfig) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.listenerConfig, .listenerConfig): return {
        guard case .listenerConfig(let l) = lhs, case .listenerConfig(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.clusterConfig, .clusterConfig): return {
        guard case .clusterConfig(let l) = lhs, case .clusterConfig(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.routeConfig, .routeConfig): return {
        guard case .routeConfig(let l) = lhs, case .routeConfig(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.scopedRouteConfig, .scopedRouteConfig): return {
        guard case .scopedRouteConfig(let l) = lhs, case .scopedRouteConfig(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// All xds configs for a particular client.
public struct Envoy_Service_Status_V2_ClientConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Node for a particular client.
  public var node: Envoy_Api_V2_Core_Node {
    get {return _node ?? Envoy_Api_V2_Core_Node()}
    set {_node = newValue}
  }
  /// Returns true if `node` has been explicitly set.
  public var hasNode: Bool {return self._node != nil}
  /// Clears the value of `node`. Subsequent reads from it will return its default value.
  public mutating func clearNode() {self._node = nil}

  public var xdsConfig: [Envoy_Service_Status_V2_PerXdsConfig] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _node: Envoy_Api_V2_Core_Node? = nil
}

public struct Envoy_Service_Status_V2_ClientStatusResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Client configs for the clients specified in the ClientStatusRequest.
  public var config: [Envoy_Service_Status_V2_ClientConfig] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.service.status.v2"

extension Envoy_Service_Status_V2_ConfigStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "SYNCED"),
    2: .same(proto: "NOT_SENT"),
    3: .same(proto: "STALE"),
    4: .same(proto: "ERROR"),
  ]
}

extension Envoy_Service_Status_V2_ClientStatusRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClientStatusRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "node_matchers"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.nodeMatchers) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.nodeMatchers.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.nodeMatchers, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Service_Status_V2_ClientStatusRequest, rhs: Envoy_Service_Status_V2_ClientStatusRequest) -> Bool {
    if lhs.nodeMatchers != rhs.nodeMatchers {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Service_Status_V2_PerXdsConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PerXdsConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
    2: .standard(proto: "listener_config"),
    3: .standard(proto: "cluster_config"),
    4: .standard(proto: "route_config"),
    5: .standard(proto: "scoped_route_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.status) }()
      case 2: try {
        var v: Envoy_Admin_V2alpha_ListenersConfigDump?
        if let current = self.perXdsConfig {
          try decoder.handleConflictingOneOf()
          if case .listenerConfig(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.perXdsConfig = .listenerConfig(v)}
      }()
      case 3: try {
        var v: Envoy_Admin_V2alpha_ClustersConfigDump?
        if let current = self.perXdsConfig {
          try decoder.handleConflictingOneOf()
          if case .clusterConfig(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.perXdsConfig = .clusterConfig(v)}
      }()
      case 4: try {
        var v: Envoy_Admin_V2alpha_RoutesConfigDump?
        if let current = self.perXdsConfig {
          try decoder.handleConflictingOneOf()
          if case .routeConfig(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.perXdsConfig = .routeConfig(v)}
      }()
      case 5: try {
        var v: Envoy_Admin_V2alpha_ScopedRoutesConfigDump?
        if let current = self.perXdsConfig {
          try decoder.handleConflictingOneOf()
          if case .scopedRouteConfig(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.perXdsConfig = .scopedRouteConfig(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.status != .unknown {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 1)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.perXdsConfig {
    case .listenerConfig?: try {
      guard case .listenerConfig(let v)? = self.perXdsConfig else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .clusterConfig?: try {
      guard case .clusterConfig(let v)? = self.perXdsConfig else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case .routeConfig?: try {
      guard case .routeConfig(let v)? = self.perXdsConfig else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case .scopedRouteConfig?: try {
      guard case .scopedRouteConfig(let v)? = self.perXdsConfig else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Service_Status_V2_PerXdsConfig, rhs: Envoy_Service_Status_V2_PerXdsConfig) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.perXdsConfig != rhs.perXdsConfig {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Service_Status_V2_ClientConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClientConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "node"),
    2: .standard(proto: "xds_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._node) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.xdsConfig) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._node {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.xdsConfig.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.xdsConfig, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Service_Status_V2_ClientConfig, rhs: Envoy_Service_Status_V2_ClientConfig) -> Bool {
    if lhs._node != rhs._node {return false}
    if lhs.xdsConfig != rhs.xdsConfig {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Service_Status_V2_ClientStatusResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClientStatusResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.config) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.config.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.config, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Service_Status_V2_ClientStatusResponse, rhs: Envoy_Service_Status_V2_ClientStatusResponse) -> Bool {
    if lhs.config != rhs.config {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}