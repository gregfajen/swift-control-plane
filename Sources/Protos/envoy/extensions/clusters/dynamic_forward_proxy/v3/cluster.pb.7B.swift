// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/clusters/dynamic_forward_proxy/v3/cluster.proto
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

/// Configuration for the dynamic forward proxy cluster. See the :ref:`architecture overview
/// <arch_overview_http_dynamic_forward_proxy>` for more information.
/// [#extension: envoy.clusters.dynamic_forward_proxy]
public struct Envoy_Extensions_Clusters_DynamicForwardProxy_V3_ClusterConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The DNS cache configuration that the cluster will attach to. Note this configuration must
  /// match that of associated :ref:`dynamic forward proxy HTTP filter configuration
  /// <envoy_api_field_extensions.filters.http.dynamic_forward_proxy.v3.FilterConfig.dns_cache_config>`.
  public var dnsCacheConfig: Envoy_Extensions_Common_DynamicForwardProxy_V3_DnsCacheConfig {
    get {return _dnsCacheConfig ?? Envoy_Extensions_Common_DynamicForwardProxy_V3_DnsCacheConfig()}
    set {_dnsCacheConfig = newValue}
  }
  /// Returns true if `dnsCacheConfig` has been explicitly set.
  public var hasDnsCacheConfig: Bool {return self._dnsCacheConfig != nil}
  /// Clears the value of `dnsCacheConfig`. Subsequent reads from it will return its default value.
  public mutating func clearDnsCacheConfig() {self._dnsCacheConfig = nil}

  /// If true allow the cluster configuration to disable the auto_sni and auto_san_validation options
  /// in the :ref:`cluster's upstream_http_protocol_options
  /// <envoy_api_field_config.cluster.v3.Cluster.upstream_http_protocol_options>`
  public var allowInsecureClusterOptions: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _dnsCacheConfig: Envoy_Extensions_Common_DynamicForwardProxy_V3_DnsCacheConfig? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.clusters.dynamic_forward_proxy.v3"

extension Envoy_Extensions_Clusters_DynamicForwardProxy_V3_ClusterConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClusterConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "dns_cache_config"),
    2: .standard(proto: "allow_insecure_cluster_options"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._dnsCacheConfig) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.allowInsecureClusterOptions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._dnsCacheConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.allowInsecureClusterOptions != false {
      try visitor.visitSingularBoolField(value: self.allowInsecureClusterOptions, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Clusters_DynamicForwardProxy_V3_ClusterConfig, rhs: Envoy_Extensions_Clusters_DynamicForwardProxy_V3_ClusterConfig) -> Bool {
    if lhs._dnsCacheConfig != rhs._dnsCacheConfig {return false}
    if lhs.allowInsecureClusterOptions != rhs.allowInsecureClusterOptions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
