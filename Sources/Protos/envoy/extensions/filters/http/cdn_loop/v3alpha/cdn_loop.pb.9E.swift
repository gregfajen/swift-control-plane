// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/http/cdn_loop/v3alpha/cdn_loop.proto
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

/// CDN-Loop Header filter config. See the :ref:`configuration overview
/// <config_http_filters_cdn_loop>` for more information.
public struct Envoy_Extensions_Filters_Http_CdnLoop_V3alpha_CdnLoopConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The CDN identifier to use for loop checks and to append to the
  /// CDN-Loop header.
  ///
  /// RFC 8586 calls this the cdn-id. The cdn-id can either be a
  /// pseudonym or hostname the CDN is in control of.
  ///
  /// cdn_id must not be empty.
  public var cdnID: String = String()

  /// The maximum allowed count of cdn_id in the downstream CDN-Loop
  /// request header.
  ///
  /// The default of 0 means a request can transit the CdnLoopFilter
  /// once. A value of 1 means that a request can transit the
  /// CdnLoopFilter twice and so on.
  public var maxAllowedOccurrences: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.http.cdn_loop.v3alpha"

extension Envoy_Extensions_Filters_Http_CdnLoop_V3alpha_CdnLoopConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CdnLoopConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "cdn_id"),
    2: .standard(proto: "max_allowed_occurrences"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.cdnID) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self.maxAllowedOccurrences) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.cdnID.isEmpty {
      try visitor.visitSingularStringField(value: self.cdnID, fieldNumber: 1)
    }
    if self.maxAllowedOccurrences != 0 {
      try visitor.visitSingularUInt32Field(value: self.maxAllowedOccurrences, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_CdnLoop_V3alpha_CdnLoopConfig, rhs: Envoy_Extensions_Filters_Http_CdnLoop_V3alpha_CdnLoopConfig) -> Bool {
    if lhs.cdnID != rhs.cdnID {return false}
    if lhs.maxAllowedOccurrences != rhs.maxAllowedOccurrences {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
