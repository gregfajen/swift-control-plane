// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/grpc_credential/v2alpha/file_based_metadata.proto
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

public struct Envoy_Config_GrpcCredential_V2alpha_FileBasedMetadataConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Location or inline data of secret to use for authentication of the Google gRPC connection
  /// this secret will be attached to a header of the gRPC connection
  public var secretData: Envoy_Api_V2_Core_DataSource {
    get {return _secretData ?? Envoy_Api_V2_Core_DataSource()}
    set {_secretData = newValue}
  }
  /// Returns true if `secretData` has been explicitly set.
  public var hasSecretData: Bool {return self._secretData != nil}
  /// Clears the value of `secretData`. Subsequent reads from it will return its default value.
  public mutating func clearSecretData() {self._secretData = nil}

  /// Metadata header key to use for sending the secret data
  /// if no header key is set, "authorization" header will be used
  public var headerKey: String = String()

  /// Prefix to prepend to the secret in the metadata header
  /// if no prefix is set, the default is to use no prefix
  public var headerPrefix: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _secretData: Envoy_Api_V2_Core_DataSource? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.grpc_credential.v2alpha"

extension Envoy_Config_GrpcCredential_V2alpha_FileBasedMetadataConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FileBasedMetadataConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "secret_data"),
    2: .standard(proto: "header_key"),
    3: .standard(proto: "header_prefix"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._secretData) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.headerKey) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.headerPrefix) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._secretData {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.headerKey.isEmpty {
      try visitor.visitSingularStringField(value: self.headerKey, fieldNumber: 2)
    }
    if !self.headerPrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.headerPrefix, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_GrpcCredential_V2alpha_FileBasedMetadataConfig, rhs: Envoy_Config_GrpcCredential_V2alpha_FileBasedMetadataConfig) -> Bool {
    if lhs._secretData != rhs._secretData {return false}
    if lhs.headerKey != rhs.headerKey {return false}
    if lhs.headerPrefix != rhs.headerPrefix {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
