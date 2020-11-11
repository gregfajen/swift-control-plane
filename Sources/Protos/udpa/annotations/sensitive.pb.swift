// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: udpa/annotations/sensitive.proto
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

// MARK: - Extension support defined in sensitive.proto.

// MARK: - Extension Properties

// Swift Extensions on the exteneded Messages to add easy access to the declared
// extension fields. The names are based on the extension field name from the proto
// declaration. To avoid naming collisions, the names are prefixed with the name of
// the scope where the extend directive occurs.

extension SwiftProtobuf.Google_Protobuf_FieldOptions {

  /// Magic number is the 28 most significant bits in the sha256sum of "udpa.annotations.sensitive".
  /// When set to true, `sensitive` indicates that this field contains sensitive data, such as
  /// personally identifiable information, passwords, or private keys, and should be redacted for
  /// display by tools aware of this annotation. Note that that this has no effect on standard
  /// Protobuf functions such as `TextFormat::PrintToString`.
  public var Udpa_Annotations_sensitive: Bool {
    get {return getExtensionValue(ext: Udpa_Annotations_Extensions_sensitive) ?? false}
    set {setExtensionValue(ext: Udpa_Annotations_Extensions_sensitive, value: newValue)}
  }
  /// Returns true if extension `Udpa_Annotations_Extensions_sensitive`
  /// has been explicitly set.
  public var hasUdpa_Annotations_sensitive: Bool {
    return hasExtensionValue(ext: Udpa_Annotations_Extensions_sensitive)
  }
  /// Clears the value of extension `Udpa_Annotations_Extensions_sensitive`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearUdpa_Annotations_sensitive() {
    clearExtensionValue(ext: Udpa_Annotations_Extensions_sensitive)
  }

}

// MARK: - File's ExtensionMap: Udpa_Annotations_Sensitive_Extensions

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
public let Udpa_Annotations_Sensitive_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  Udpa_Annotations_Extensions_sensitive
]

// Extension Objects - The only reason these might be needed is when manually
// constructing a `SimpleExtensionMap`, otherwise, use the above _Extension Properties_
// accessors for the extension fields on the messages directly.

/// Magic number is the 28 most significant bits in the sha256sum of "udpa.annotations.sensitive".
/// When set to true, `sensitive` indicates that this field contains sensitive data, such as
/// personally identifiable information, passwords, or private keys, and should be redacted for
/// display by tools aware of this annotation. Note that that this has no effect on standard
/// Protobuf functions such as `TextFormat::PrintToString`.
public let Udpa_Annotations_Extensions_sensitive = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufBool>, SwiftProtobuf.Google_Protobuf_FieldOptions>(
  _protobuf_fieldNumber: 76569463,
  fieldName: "udpa.annotations.sensitive"
)