// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: udpa/type/v1/typed_struct.proto
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

/// A TypedStruct contains an arbitrary JSON serialized protocol buffer message with a URL that
/// describes the type of the serialized message. This is very similar to google.protobuf.Any,
/// instead of having protocol buffer binary, this employs google.protobuf.Struct as value.
///
/// This message is intended to be embedded inside Any, so it shouldn't be directly referred
/// from other UDPA messages.
///
/// When packing an opaque extension config, packing the expected type into Any is preferred
/// wherever possible for its efficiency. TypedStruct should be used only if a proto descriptor
/// is not available, for example if:
/// - A control plane sends opaque message that is originally from external source in human readable
///   format such as JSON or YAML.
/// - The control plane doesn't have the knowledge of the protocol buffer schema hence it cannot
///   serialize the message in protocol buffer binary format.
/// - The DPLB doesn't have have the knowledge of the protocol buffer schema its plugin or extension
///   uses. This has to be indicated in the DPLB capability negotiation.
///
/// When a DPLB receives a TypedStruct in Any, it should:
/// - Check if the type_url of the TypedStruct matches the type the extension expects.
/// - Convert value to the type described in type_url and perform validation.
/// TODO(lizan): Figure out how TypeStruct should be used with DPLB extensions that doesn't link
/// protobuf descriptor with DPLB itself, (e.g. gRPC LB Plugin, Envoy WASM extensions).
public struct Udpa_Type_V1_TypedStruct {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A URL that uniquely identifies the type of the serialize protocol buffer message.
  /// This has same semantics and format described in google.protobuf.Any:
  /// https://github.com/protocolbuffers/protobuf/blob/master/src/google/protobuf/any.proto
  public var typeURL: String = String()

  /// A JSON representation of the above specified type.
  public var value: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _value ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_value = newValue}
  }
  /// Returns true if `value` has been explicitly set.
  public var hasValue: Bool {return self._value != nil}
  /// Clears the value of `value`. Subsequent reads from it will return its default value.
  public mutating func clearValue() {self._value = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _value: SwiftProtobuf.Google_Protobuf_Struct? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "udpa.type.v1"

extension Udpa_Type_V1_TypedStruct: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TypedStruct"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "type_url"),
    2: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.typeURL) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._value) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.typeURL.isEmpty {
      try visitor.visitSingularStringField(value: self.typeURL, fieldNumber: 1)
    }
    if let v = self._value {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Udpa_Type_V1_TypedStruct, rhs: Udpa_Type_V1_TypedStruct) -> Bool {
    if lhs.typeURL != rhs.typeURL {return false}
    if lhs._value != rhs._value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
