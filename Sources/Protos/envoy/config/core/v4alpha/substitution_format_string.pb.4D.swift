// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/core/v4alpha/substitution_format_string.proto
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

/// Configuration to use multiple :ref:`command operators <config_access_log_command_operators>`
/// to generate a new string in either plain text or JSON format.
public struct Envoy_Config_Core_V4alpha_SubstitutionFormatString {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var format: Envoy_Config_Core_V4alpha_SubstitutionFormatString.OneOf_Format? = nil

  /// Specify a format with command operators to form a text string.
  /// Its details is described in :ref:`format string<config_access_log_format_strings>`.
  ///
  /// .. code-block::
  ///
  ///   text_format: %RESP_BODY%:%RESPONSE_CODE%:path=$REQ(:path)%
  ///
  /// The following plain text will be created:
  ///
  /// .. code-block::
  ///
  ///   upstream connect error:204:path=/foo
  public var textFormat: String {
    get {
      if case .textFormat(let v)? = format {return v}
      return String()
    }
    set {format = .textFormat(newValue)}
  }

  /// Specify a format with command operators to form a JSON string.
  /// Its details is described in :ref:`format dictionary<config_access_log_format_dictionaries>`.
  /// Values are rendered as strings, numbers, or boolean values as appropriate.
  /// Nested JSON objects may be produced by some command operators (e.g. FILTER_STATE or DYNAMIC_METADATA).
  /// See the documentation for a specific command operator for details.
  ///
  /// .. code-block::
  ///
  ///  typed_json_format:
  ///    status: %RESPONSE_CODE%
  ///    message: %RESP_BODY%
  ///
  /// The following JSON object would be created:
  ///
  /// .. code-block:: json
  ///
  ///  {
  ///    "status": 500,
  ///    "message": "My error message"
  ///  }
  public var jsonFormat: SwiftProtobuf.Google_Protobuf_Struct {
    get {
      if case .jsonFormat(let v)? = format {return v}
      return SwiftProtobuf.Google_Protobuf_Struct()
    }
    set {format = .jsonFormat(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Format: Equatable {
    /// Specify a format with command operators to form a text string.
    /// Its details is described in :ref:`format string<config_access_log_format_strings>`.
    ///
    /// .. code-block::
    ///
    ///   text_format: %RESP_BODY%:%RESPONSE_CODE%:path=$REQ(:path)%
    ///
    /// The following plain text will be created:
    ///
    /// .. code-block::
    ///
    ///   upstream connect error:204:path=/foo
    case textFormat(String)
    /// Specify a format with command operators to form a JSON string.
    /// Its details is described in :ref:`format dictionary<config_access_log_format_dictionaries>`.
    /// Values are rendered as strings, numbers, or boolean values as appropriate.
    /// Nested JSON objects may be produced by some command operators (e.g. FILTER_STATE or DYNAMIC_METADATA).
    /// See the documentation for a specific command operator for details.
    ///
    /// .. code-block::
    ///
    ///  typed_json_format:
    ///    status: %RESPONSE_CODE%
    ///    message: %RESP_BODY%
    ///
    /// The following JSON object would be created:
    ///
    /// .. code-block:: json
    ///
    ///  {
    ///    "status": 500,
    ///    "message": "My error message"
    ///  }
    case jsonFormat(SwiftProtobuf.Google_Protobuf_Struct)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Config_Core_V4alpha_SubstitutionFormatString.OneOf_Format, rhs: Envoy_Config_Core_V4alpha_SubstitutionFormatString.OneOf_Format) -> Bool {
      switch (lhs, rhs) {
      case (.textFormat(let l), .textFormat(let r)): return l == r
      case (.jsonFormat(let l), .jsonFormat(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.core.v4alpha"

extension Envoy_Config_Core_V4alpha_SubstitutionFormatString: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SubstitutionFormatString"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "text_format"),
    2: .standard(proto: "json_format"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        if self.format != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.format = .textFormat(v)}
      case 2:
        var v: SwiftProtobuf.Google_Protobuf_Struct?
        if let current = self.format {
          try decoder.handleConflictingOneOf()
          if case .jsonFormat(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.format = .jsonFormat(v)}
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self.format {
    case .textFormat(let v)?:
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    case .jsonFormat(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Core_V4alpha_SubstitutionFormatString, rhs: Envoy_Config_Core_V4alpha_SubstitutionFormatString) -> Bool {
    if lhs.format != rhs.format {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
