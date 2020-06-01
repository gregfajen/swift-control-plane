// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/annotations/deprecation.proto
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

// MARK: - Extension support defined in deprecation.proto.

extension SwiftProtobuf.Google_Protobuf_EnumValueOptions {

  public var Envoy_Annotations_disallowedByDefaultEnum: Bool {
    get {return getExtensionValue(ext: Envoy_Annotations_Extensions_disallowed_by_default_enum) ?? false}
    set {setExtensionValue(ext: Envoy_Annotations_Extensions_disallowed_by_default_enum, value: newValue)}
  }
  /// Returns true if extension `Envoy_Annotations_Extensions_disallowed_by_default_enum`
  /// has been explicitly set.
  public var hasEnvoy_Annotations_disallowedByDefaultEnum: Bool {
    return hasExtensionValue(ext: Envoy_Annotations_Extensions_disallowed_by_default_enum)
  }
  /// Clears the value of extension `Envoy_Annotations_Extensions_disallowed_by_default_enum`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearEnvoy_Annotations_disallowedByDefaultEnum() {
    clearExtensionValue(ext: Envoy_Annotations_Extensions_disallowed_by_default_enum)
  }
}

extension SwiftProtobuf.Google_Protobuf_FieldOptions {

  public var Envoy_Annotations_disallowedByDefault: Bool {
    get {return getExtensionValue(ext: Envoy_Annotations_Extensions_disallowed_by_default) ?? false}
    set {setExtensionValue(ext: Envoy_Annotations_Extensions_disallowed_by_default, value: newValue)}
  }
  /// Returns true if extension `Envoy_Annotations_Extensions_disallowed_by_default`
  /// has been explicitly set.
  public var hasEnvoy_Annotations_disallowedByDefault: Bool {
    return hasExtensionValue(ext: Envoy_Annotations_Extensions_disallowed_by_default)
  }
  /// Clears the value of extension `Envoy_Annotations_Extensions_disallowed_by_default`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearEnvoy_Annotations_disallowedByDefault() {
    clearExtensionValue(ext: Envoy_Annotations_Extensions_disallowed_by_default)
  }

}

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
public let Envoy_Annotations_Deprecation_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  Envoy_Annotations_Extensions_disallowed_by_default,
  Envoy_Annotations_Extensions_disallowed_by_default_enum
]

let Envoy_Annotations_Extensions_disallowed_by_default = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufBool>, SwiftProtobuf.Google_Protobuf_FieldOptions>(
  _protobuf_fieldNumber: 189503207,
  fieldName: "envoy.annotations.disallowed_by_default"
)

let Envoy_Annotations_Extensions_disallowed_by_default_enum = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufBool>, SwiftProtobuf.Google_Protobuf_EnumValueOptions>(
  _protobuf_fieldNumber: 70100853,
  fieldName: "envoy.annotations.disallowed_by_default_enum"
)
