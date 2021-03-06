// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/internal_redirect/safe_cross_scheme/v3/safe_cross_scheme_config.proto
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

/// An internal redirect predicate that checks the scheme between the
/// downstream url and the redirect target url and allows a) same scheme
/// redirect and b) safe cross scheme redirect, which means if the downstream
/// scheme is HTTPS, both HTTPS and HTTP redirect targets are allowed, but if the
/// downstream scheme is HTTP, only HTTP redirect targets are allowed.
/// [#extension:
/// envoy.internal_redirect_predicates.safe_cross_scheme]
public struct Envoy_Extensions_InternalRedirect_SafeCrossScheme_V3_SafeCrossSchemeConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.internal_redirect.safe_cross_scheme.v3"

extension Envoy_Extensions_InternalRedirect_SafeCrossScheme_V3_SafeCrossSchemeConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SafeCrossSchemeConfig"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_InternalRedirect_SafeCrossScheme_V3_SafeCrossSchemeConfig, rhs: Envoy_Extensions_InternalRedirect_SafeCrossScheme_V3_SafeCrossSchemeConfig) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
