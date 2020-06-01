// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/http/original_src/v3/original_src.proto
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

/// The Original Src filter binds upstream connections to the original source address determined
/// for the request. This address could come from something like the Proxy Protocol filter, or it
/// could come from trusted http headers.
/// [#extension: envoy.filters.http.original_src]
public struct Envoy_Extensions_Filters_Http_OriginalSrc_V3_OriginalSrc {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Sets the SO_MARK option on the upstream connection's socket to the provided value. Used to
  /// ensure that non-local addresses may be routed back through envoy when binding to the original
  /// source address. The option will not be applied if the mark is 0.
  public var mark: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.http.original_src.v3"

extension Envoy_Extensions_Filters_Http_OriginalSrc_V3_OriginalSrc: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OriginalSrc"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "mark"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.mark)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.mark != 0 {
      try visitor.visitSingularUInt32Field(value: self.mark, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_OriginalSrc_V3_OriginalSrc, rhs: Envoy_Extensions_Filters_Http_OriginalSrc_V3_OriginalSrc) -> Bool {
    if lhs.mark != rhs.mark {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
