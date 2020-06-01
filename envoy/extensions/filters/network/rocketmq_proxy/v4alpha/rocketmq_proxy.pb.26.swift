// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/network/rocketmq_proxy/v4alpha/rocketmq_proxy.proto
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

public struct Envoy_Extensions_Filters_Network_RocketmqProxy_V4alpha_RocketmqProxy {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The human readable prefix to use when emitting statistics.
  public var statPrefix: String = String()

  /// The route table for the connection manager is specified in this property.
  public var routeConfig: Envoy_Extensions_Filters_Network_RocketmqProxy_V4alpha_RouteConfiguration {
    get {return _routeConfig ?? Envoy_Extensions_Filters_Network_RocketmqProxy_V4alpha_RouteConfiguration()}
    set {_routeConfig = newValue}
  }
  /// Returns true if `routeConfig` has been explicitly set.
  public var hasRouteConfig: Bool {return self._routeConfig != nil}
  /// Clears the value of `routeConfig`. Subsequent reads from it will return its default value.
  public mutating func clearRouteConfig() {self._routeConfig = nil}

  /// The largest duration transient object expected to live, more than 10s is recommended.
  public var transientObjectLifeSpan: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _transientObjectLifeSpan ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_transientObjectLifeSpan = newValue}
  }
  /// Returns true if `transientObjectLifeSpan` has been explicitly set.
  public var hasTransientObjectLifeSpan: Bool {return self._transientObjectLifeSpan != nil}
  /// Clears the value of `transientObjectLifeSpan`. Subsequent reads from it will return its default value.
  public mutating func clearTransientObjectLifeSpan() {self._transientObjectLifeSpan = nil}

  /// If develop_mode is enabled, this proxy plugin may work without dedicated traffic intercepting
  /// facility without considering backward compatibility of exiting RocketMQ client SDK.
  public var developMode: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _routeConfig: Envoy_Extensions_Filters_Network_RocketmqProxy_V4alpha_RouteConfiguration? = nil
  fileprivate var _transientObjectLifeSpan: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.network.rocketmq_proxy.v4alpha"

extension Envoy_Extensions_Filters_Network_RocketmqProxy_V4alpha_RocketmqProxy: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RocketmqProxy"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "stat_prefix"),
    2: .standard(proto: "route_config"),
    3: .standard(proto: "transient_object_life_span"),
    4: .standard(proto: "develop_mode"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.statPrefix)
      case 2: try decoder.decodeSingularMessageField(value: &self._routeConfig)
      case 3: try decoder.decodeSingularMessageField(value: &self._transientObjectLifeSpan)
      case 4: try decoder.decodeSingularBoolField(value: &self.developMode)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.statPrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.statPrefix, fieldNumber: 1)
    }
    if let v = self._routeConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._transientObjectLifeSpan {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if self.developMode != false {
      try visitor.visitSingularBoolField(value: self.developMode, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Network_RocketmqProxy_V4alpha_RocketmqProxy, rhs: Envoy_Extensions_Filters_Network_RocketmqProxy_V4alpha_RocketmqProxy) -> Bool {
    if lhs.statPrefix != rhs.statPrefix {return false}
    if lhs._routeConfig != rhs._routeConfig {return false}
    if lhs._transientObjectLifeSpan != rhs._transientObjectLifeSpan {return false}
    if lhs.developMode != rhs.developMode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}