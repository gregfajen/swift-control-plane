// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/network/dubbo_proxy/v4alpha/dubbo_proxy.proto
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

/// Dubbo Protocol types supported by Envoy.
public enum Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_ProtocolType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// the default protocol.
  case dubbo // = 0
  case UNRECOGNIZED(Int)

  public init() {
    self = .dubbo
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .dubbo
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .dubbo: return 0
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_ProtocolType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_ProtocolType] = [
    .dubbo,
  ]
}

#endif  // swift(>=4.2)

/// Dubbo Serialization types supported by Envoy.
public enum Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_SerializationType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// the default serialization protocol.
  case hessian2 // = 0
  case UNRECOGNIZED(Int)

  public init() {
    self = .hessian2
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .hessian2
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .hessian2: return 0
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_SerializationType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_SerializationType] = [
    .hessian2,
  ]
}

#endif  // swift(>=4.2)

/// [#next-free-field: 6]
public struct Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_DubboProxy {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The human readable prefix to use when emitting statistics.
  public var statPrefix: String = String()

  /// Configure the protocol used.
  public var protocolType: Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_ProtocolType = .dubbo

  /// Configure the serialization protocol used.
  public var serializationType: Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_SerializationType = .hessian2

  /// The route table for the connection manager is static and is specified in this property.
  public var routeConfig: [Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_RouteConfiguration] = []

  /// A list of individual Dubbo filters that make up the filter chain for requests made to the
  /// Dubbo proxy. Order matters as the filters are processed sequentially. For backwards
  /// compatibility, if no dubbo_filters are specified, a default Dubbo router filter
  /// (`envoy.filters.dubbo.router`) is used.
  public var dubboFilters: [Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_DubboFilter] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// DubboFilter configures a Dubbo filter.
public struct Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_DubboFilter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the filter to instantiate. The name must match a supported
  /// filter.
  public var name: String = String()

  /// Filter specific configuration which depends on the filter being
  /// instantiated. See the supported filters for further documentation.
  public var config: SwiftProtobuf.Google_Protobuf_Any {
    get {return _config ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_config = newValue}
  }
  /// Returns true if `config` has been explicitly set.
  public var hasConfig: Bool {return self._config != nil}
  /// Clears the value of `config`. Subsequent reads from it will return its default value.
  public mutating func clearConfig() {self._config = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _config: SwiftProtobuf.Google_Protobuf_Any? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.network.dubbo_proxy.v4alpha"

extension Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_ProtocolType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "Dubbo"),
  ]
}

extension Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_SerializationType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "Hessian2"),
  ]
}

extension Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_DubboProxy: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DubboProxy"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "stat_prefix"),
    2: .standard(proto: "protocol_type"),
    3: .standard(proto: "serialization_type"),
    4: .standard(proto: "route_config"),
    5: .standard(proto: "dubbo_filters"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.statPrefix) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.protocolType) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.serializationType) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.routeConfig) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.dubboFilters) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.statPrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.statPrefix, fieldNumber: 1)
    }
    if self.protocolType != .dubbo {
      try visitor.visitSingularEnumField(value: self.protocolType, fieldNumber: 2)
    }
    if self.serializationType != .hessian2 {
      try visitor.visitSingularEnumField(value: self.serializationType, fieldNumber: 3)
    }
    if !self.routeConfig.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.routeConfig, fieldNumber: 4)
    }
    if !self.dubboFilters.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.dubboFilters, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_DubboProxy, rhs: Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_DubboProxy) -> Bool {
    if lhs.statPrefix != rhs.statPrefix {return false}
    if lhs.protocolType != rhs.protocolType {return false}
    if lhs.serializationType != rhs.serializationType {return false}
    if lhs.routeConfig != rhs.routeConfig {return false}
    if lhs.dubboFilters != rhs.dubboFilters {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_DubboFilter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DubboFilter"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._config) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._config {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_DubboFilter, rhs: Envoy_Extensions_Filters_Network_DubboProxy_V4alpha_DubboFilter) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._config != rhs._config {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
