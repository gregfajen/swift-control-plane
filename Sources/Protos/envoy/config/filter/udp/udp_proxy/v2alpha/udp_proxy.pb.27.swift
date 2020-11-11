// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/filter/udp/udp_proxy/v2alpha/udp_proxy.proto
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

/// Configuration for the UDP proxy filter.
public struct Envoy_Config_Filter_Udp_UdpProxy_V2alpha_UdpProxyConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The stat prefix used when emitting UDP proxy filter stats.
  public var statPrefix: String = String()

  public var routeSpecifier: Envoy_Config_Filter_Udp_UdpProxy_V2alpha_UdpProxyConfig.OneOf_RouteSpecifier? = nil

  /// The upstream cluster to connect to.
  public var cluster: String {
    get {
      if case .cluster(let v)? = routeSpecifier {return v}
      return String()
    }
    set {routeSpecifier = .cluster(newValue)}
  }

  /// The idle timeout for sessions. Idle is defined as no datagrams between received or sent by
  /// the session. The default if not specified is 1 minute.
  public var idleTimeout: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _idleTimeout ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_idleTimeout = newValue}
  }
  /// Returns true if `idleTimeout` has been explicitly set.
  public var hasIdleTimeout: Bool {return self._idleTimeout != nil}
  /// Clears the value of `idleTimeout`. Subsequent reads from it will return its default value.
  public mutating func clearIdleTimeout() {self._idleTimeout = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_RouteSpecifier: Equatable {
    /// The upstream cluster to connect to.
    case cluster(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Config_Filter_Udp_UdpProxy_V2alpha_UdpProxyConfig.OneOf_RouteSpecifier, rhs: Envoy_Config_Filter_Udp_UdpProxy_V2alpha_UdpProxyConfig.OneOf_RouteSpecifier) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.cluster, .cluster): return {
        guard case .cluster(let l) = lhs, case .cluster(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _idleTimeout: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.filter.udp.udp_proxy.v2alpha"

extension Envoy_Config_Filter_Udp_UdpProxy_V2alpha_UdpProxyConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UdpProxyConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "stat_prefix"),
    2: .same(proto: "cluster"),
    3: .standard(proto: "idle_timeout"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.statPrefix) }()
      case 2: try {
        if self.routeSpecifier != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.routeSpecifier = .cluster(v)}
      }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._idleTimeout) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.statPrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.statPrefix, fieldNumber: 1)
    }
    if case .cluster(let v)? = self.routeSpecifier {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
    if let v = self._idleTimeout {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Filter_Udp_UdpProxy_V2alpha_UdpProxyConfig, rhs: Envoy_Config_Filter_Udp_UdpProxy_V2alpha_UdpProxyConfig) -> Bool {
    if lhs.statPrefix != rhs.statPrefix {return false}
    if lhs.routeSpecifier != rhs.routeSpecifier {return false}
    if lhs._idleTimeout != rhs._idleTimeout {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
