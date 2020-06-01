// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/annotations/resource.proto
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

public struct Envoy_Annotations_ResourceAnnotation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Annotation for xDS services that indicates the fully-qualified Protobuf type for the resource
  /// type.
  public var type: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Extension support defined in resource.proto.

extension SwiftProtobuf.Google_Protobuf_ServiceOptions {

  public var Envoy_Annotations_resource: Envoy_Annotations_ResourceAnnotation {
    get {return getExtensionValue(ext: Envoy_Annotations_Extensions_resource) ?? Envoy_Annotations_ResourceAnnotation()}
    set {setExtensionValue(ext: Envoy_Annotations_Extensions_resource, value: newValue)}
  }
  /// Returns true if extension `Envoy_Annotations_Extensions_resource`
  /// has been explicitly set.
  public var hasEnvoy_Annotations_resource: Bool {
    return hasExtensionValue(ext: Envoy_Annotations_Extensions_resource)
  }
  /// Clears the value of extension `Envoy_Annotations_Extensions_resource`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearEnvoy_Annotations_resource() {
    clearExtensionValue(ext: Envoy_Annotations_Extensions_resource)
  }

}

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
public let Envoy_Annotations_Resource_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  Envoy_Annotations_Extensions_resource
]

let Envoy_Annotations_Extensions_resource = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<Envoy_Annotations_ResourceAnnotation>, SwiftProtobuf.Google_Protobuf_ServiceOptions>(
  _protobuf_fieldNumber: 265073217,
  fieldName: "envoy.annotations.resource"
)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.annotations"

extension Envoy_Annotations_ResourceAnnotation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ResourceAnnotation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.type)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Annotations_ResourceAnnotation, rhs: Envoy_Annotations_ResourceAnnotation) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
