// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/http/dynamic_forward_proxy/v3/dynamic_forward_proxy.proto
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

/// Configuration for the dynamic forward proxy HTTP filter. See the :ref:`architecture overview
/// <arch_overview_http_dynamic_forward_proxy>` for more information.
/// [#extension: envoy.filters.http.dynamic_forward_proxy]
public struct Envoy_Extensions_Filters_Http_DynamicForwardProxy_V3_FilterConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The DNS cache configuration that the filter will attach to. Note this configuration must
  /// match that of associated :ref:`dynamic forward proxy cluster configuration
  /// <envoy_api_field_extensions.clusters.dynamic_forward_proxy.v3.ClusterConfig.dns_cache_config>`.
  public var dnsCacheConfig: Envoy_Extensions_Common_DynamicForwardProxy_V3_DnsCacheConfig {
    get {return _dnsCacheConfig ?? Envoy_Extensions_Common_DynamicForwardProxy_V3_DnsCacheConfig()}
    set {_dnsCacheConfig = newValue}
  }
  /// Returns true if `dnsCacheConfig` has been explicitly set.
  public var hasDnsCacheConfig: Bool {return self._dnsCacheConfig != nil}
  /// Clears the value of `dnsCacheConfig`. Subsequent reads from it will return its default value.
  public mutating func clearDnsCacheConfig() {self._dnsCacheConfig = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _dnsCacheConfig: Envoy_Extensions_Common_DynamicForwardProxy_V3_DnsCacheConfig? = nil
}

/// Per route Configuration for the dynamic forward proxy HTTP filter.
public struct Envoy_Extensions_Filters_Http_DynamicForwardProxy_V3_PerRouteConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var hostRewriteSpecifier: Envoy_Extensions_Filters_Http_DynamicForwardProxy_V3_PerRouteConfig.OneOf_HostRewriteSpecifier? = nil

  /// Indicates that before DNS lookup, the host header will be swapped with
  /// this value. If not set or empty, the original host header value
  /// will be used and no rewrite will happen.
  ///
  /// Note: this rewrite affects both DNS lookup and host header forwarding. However, this
  /// option shouldn't be used with
  /// :ref:`HCM host rewrite <envoy_api_field_config.route.v3.RouteAction.host_rewrite_literal>` given that the
  /// value set here would be used for DNS lookups whereas the value set in the HCM would be used
  /// for host header forwarding which is not the desired outcome.
  public var hostRewriteLiteral: String {
    get {
      if case .hostRewriteLiteral(let v)? = hostRewriteSpecifier {return v}
      return String()
    }
    set {hostRewriteSpecifier = .hostRewriteLiteral(newValue)}
  }

  /// Indicates that before DNS lookup, the host header will be swapped with
  /// the value of this header. If not set or empty, the original host header
  /// value will be used and no rewrite will happen.
  ///
  /// Note: this rewrite affects both DNS lookup and host header forwarding. However, this
  /// option shouldn't be used with
  /// :ref:`HCM host rewrite header <envoy_api_field_config.route.v3.RouteAction.auto_host_rewrite>`
  /// given that the value set here would be used for DNS lookups whereas the value set in the HCM
  /// would be used for host header forwarding which is not the desired outcome.
  public var hostRewriteHeader: String {
    get {
      if case .hostRewriteHeader(let v)? = hostRewriteSpecifier {return v}
      return String()
    }
    set {hostRewriteSpecifier = .hostRewriteHeader(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_HostRewriteSpecifier: Equatable {
    /// Indicates that before DNS lookup, the host header will be swapped with
    /// this value. If not set or empty, the original host header value
    /// will be used and no rewrite will happen.
    ///
    /// Note: this rewrite affects both DNS lookup and host header forwarding. However, this
    /// option shouldn't be used with
    /// :ref:`HCM host rewrite <envoy_api_field_config.route.v3.RouteAction.host_rewrite_literal>` given that the
    /// value set here would be used for DNS lookups whereas the value set in the HCM would be used
    /// for host header forwarding which is not the desired outcome.
    case hostRewriteLiteral(String)
    /// Indicates that before DNS lookup, the host header will be swapped with
    /// the value of this header. If not set or empty, the original host header
    /// value will be used and no rewrite will happen.
    ///
    /// Note: this rewrite affects both DNS lookup and host header forwarding. However, this
    /// option shouldn't be used with
    /// :ref:`HCM host rewrite header <envoy_api_field_config.route.v3.RouteAction.auto_host_rewrite>`
    /// given that the value set here would be used for DNS lookups whereas the value set in the HCM
    /// would be used for host header forwarding which is not the desired outcome.
    case hostRewriteHeader(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Extensions_Filters_Http_DynamicForwardProxy_V3_PerRouteConfig.OneOf_HostRewriteSpecifier, rhs: Envoy_Extensions_Filters_Http_DynamicForwardProxy_V3_PerRouteConfig.OneOf_HostRewriteSpecifier) -> Bool {
      switch (lhs, rhs) {
      case (.hostRewriteLiteral(let l), .hostRewriteLiteral(let r)): return l == r
      case (.hostRewriteHeader(let l), .hostRewriteHeader(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.http.dynamic_forward_proxy.v3"

extension Envoy_Extensions_Filters_Http_DynamicForwardProxy_V3_FilterConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FilterConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "dns_cache_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._dnsCacheConfig)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._dnsCacheConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_DynamicForwardProxy_V3_FilterConfig, rhs: Envoy_Extensions_Filters_Http_DynamicForwardProxy_V3_FilterConfig) -> Bool {
    if lhs._dnsCacheConfig != rhs._dnsCacheConfig {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Filters_Http_DynamicForwardProxy_V3_PerRouteConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PerRouteConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "host_rewrite_literal"),
    2: .standard(proto: "host_rewrite_header"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        if self.hostRewriteSpecifier != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.hostRewriteSpecifier = .hostRewriteLiteral(v)}
      case 2:
        if self.hostRewriteSpecifier != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.hostRewriteSpecifier = .hostRewriteHeader(v)}
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self.hostRewriteSpecifier {
    case .hostRewriteLiteral(let v)?:
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    case .hostRewriteHeader(let v)?:
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_DynamicForwardProxy_V3_PerRouteConfig, rhs: Envoy_Extensions_Filters_Http_DynamicForwardProxy_V3_PerRouteConfig) -> Bool {
    if lhs.hostRewriteSpecifier != rhs.hostRewriteSpecifier {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
