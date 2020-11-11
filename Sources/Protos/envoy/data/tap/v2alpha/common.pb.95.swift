// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/data/tap/v2alpha/common.proto
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

/// Wrapper for tapped body data. This includes HTTP request/response body, transport socket received
/// and transmitted data, etc.
public struct Envoy_Data_Tap_V2alpha_Body {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var bodyType: Envoy_Data_Tap_V2alpha_Body.OneOf_BodyType? = nil

  /// Body data as bytes. By default, tap body data will be present in this field, as the proto
  /// `bytes` type can contain any valid byte.
  public var asBytes: Data {
    get {
      if case .asBytes(let v)? = bodyType {return v}
      return Data()
    }
    set {bodyType = .asBytes(newValue)}
  }

  /// Body data as string. This field is only used when the :ref:`JSON_BODY_AS_STRING
  /// <envoy_api_enum_value_service.tap.v2alpha.OutputSink.Format.JSON_BODY_AS_STRING>` sink
  /// format type is selected. See the documentation for that option for why this is useful.
  public var asString: String {
    get {
      if case .asString(let v)? = bodyType {return v}
      return String()
    }
    set {bodyType = .asString(newValue)}
  }

  /// Specifies whether body data has been truncated to fit within the specified
  /// :ref:`max_buffered_rx_bytes
  /// <envoy_api_field_service.tap.v2alpha.OutputConfig.max_buffered_rx_bytes>` and
  /// :ref:`max_buffered_tx_bytes
  /// <envoy_api_field_service.tap.v2alpha.OutputConfig.max_buffered_tx_bytes>` settings.
  public var truncated: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_BodyType: Equatable {
    /// Body data as bytes. By default, tap body data will be present in this field, as the proto
    /// `bytes` type can contain any valid byte.
    case asBytes(Data)
    /// Body data as string. This field is only used when the :ref:`JSON_BODY_AS_STRING
    /// <envoy_api_enum_value_service.tap.v2alpha.OutputSink.Format.JSON_BODY_AS_STRING>` sink
    /// format type is selected. See the documentation for that option for why this is useful.
    case asString(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Data_Tap_V2alpha_Body.OneOf_BodyType, rhs: Envoy_Data_Tap_V2alpha_Body.OneOf_BodyType) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.asBytes, .asBytes): return {
        guard case .asBytes(let l) = lhs, case .asBytes(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.asString, .asString): return {
        guard case .asString(let l) = lhs, case .asString(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.data.tap.v2alpha"

extension Envoy_Data_Tap_V2alpha_Body: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Body"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "as_bytes"),
    2: .standard(proto: "as_string"),
    3: .same(proto: "truncated"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        if self.bodyType != nil {try decoder.handleConflictingOneOf()}
        var v: Data?
        try decoder.decodeSingularBytesField(value: &v)
        if let v = v {self.bodyType = .asBytes(v)}
      }()
      case 2: try {
        if self.bodyType != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.bodyType = .asString(v)}
      }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.truncated) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.bodyType {
    case .asBytes?: try {
      guard case .asBytes(let v)? = self.bodyType else { preconditionFailure() }
      try visitor.visitSingularBytesField(value: v, fieldNumber: 1)
    }()
    case .asString?: try {
      guard case .asString(let v)? = self.bodyType else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    if self.truncated != false {
      try visitor.visitSingularBoolField(value: self.truncated, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Tap_V2alpha_Body, rhs: Envoy_Data_Tap_V2alpha_Body) -> Bool {
    if lhs.bodyType != rhs.bodyType {return false}
    if lhs.truncated != rhs.truncated {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}