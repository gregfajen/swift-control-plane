// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/retry/host/omit_host_metadata/v3/omit_host_metadata_config.proto
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

/// A retry host predicate that can be used to reject a host based on
/// predefined metadata match criteria.
/// [#extension: envoy.retry_host_predicates.omit_host_metadata]
public struct Envoy_Extensions_Retry_Host_OmitHostMetadata_V3_OmitHostMetadataConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Retry host predicate metadata match criteria. The hosts in
  /// the upstream cluster with matching metadata will be omitted while
  /// attempting a retry of a failed request. The metadata should be specified
  /// under the *envoy.lb* key.
  public var metadataMatch: Envoy_Config_Core_V3_Metadata {
    get {return _metadataMatch ?? Envoy_Config_Core_V3_Metadata()}
    set {_metadataMatch = newValue}
  }
  /// Returns true if `metadataMatch` has been explicitly set.
  public var hasMetadataMatch: Bool {return self._metadataMatch != nil}
  /// Clears the value of `metadataMatch`. Subsequent reads from it will return its default value.
  public mutating func clearMetadataMatch() {self._metadataMatch = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _metadataMatch: Envoy_Config_Core_V3_Metadata? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.retry.host.omit_host_metadata.v3"

extension Envoy_Extensions_Retry_Host_OmitHostMetadata_V3_OmitHostMetadataConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OmitHostMetadataConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "metadata_match"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._metadataMatch)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._metadataMatch {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Retry_Host_OmitHostMetadata_V3_OmitHostMetadataConfig, rhs: Envoy_Extensions_Retry_Host_OmitHostMetadata_V3_OmitHostMetadataConfig) -> Bool {
    if lhs._metadataMatch != rhs._metadataMatch {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
