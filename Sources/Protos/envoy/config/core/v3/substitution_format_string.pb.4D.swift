// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/core/v3/substitution_format_string.proto
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
public struct Envoy_Config_Core_V3_SubstitutionFormatString {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var format: Envoy_Config_Core_V3_SubstitutionFormatString.OneOf_Format? = nil

  /// Specify a format with command operators to form a text string.
  /// Its details is described in :ref:`format string<config_access_log_format_strings>`.
  ///
  /// For example, setting ``text_format`` like below,
  ///
  /// .. validated-code-block:: yaml
  ///   :type-name: envoy.config.core.v3.SubstitutionFormatString
  ///
  ///   text_format: "%LOCAL_REPLY_BODY%:%RESPONSE_CODE%:path=%REQ(:path)%\n"
  ///
  /// generates plain text similar to:
  ///
  /// .. code-block:: text
  ///
  ///   upstream connect error:503:path=/foo
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
  /// .. validated-code-block:: yaml
  ///   :type-name: envoy.config.core.v3.SubstitutionFormatString
  ///
  ///   json_format:
  ///     status: "%RESPONSE_CODE%"
  ///     message: "%LOCAL_REPLY_BODY%"
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

  /// If set to true, when command operators are evaluated to null,
  ///
  /// * for ``text_format``, the output of the empty operator is changed from ``-`` to an
  ///   empty string, so that empty values are omitted entirely.
  /// * for ``json_format`` the keys with null values are omitted in the output structure.
  public var omitEmptyValues: Bool = false

  /// Specify a *content_type* field.
  /// If this field is not set then ``text/plain`` is used for *text_format* and
  /// ``application/json`` is used for *json_format*.
  ///
  /// .. validated-code-block:: yaml
  ///   :type-name: envoy.config.core.v3.SubstitutionFormatString
  ///
  ///   content_type: "text/html; charset=UTF-8"
  public var contentType: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Format: Equatable {
    /// Specify a format with command operators to form a text string.
    /// Its details is described in :ref:`format string<config_access_log_format_strings>`.
    ///
    /// For example, setting ``text_format`` like below,
    ///
    /// .. validated-code-block:: yaml
    ///   :type-name: envoy.config.core.v3.SubstitutionFormatString
    ///
    ///   text_format: "%LOCAL_REPLY_BODY%:%RESPONSE_CODE%:path=%REQ(:path)%\n"
    ///
    /// generates plain text similar to:
    ///
    /// .. code-block:: text
    ///
    ///   upstream connect error:503:path=/foo
    case textFormat(String)
    /// Specify a format with command operators to form a JSON string.
    /// Its details is described in :ref:`format dictionary<config_access_log_format_dictionaries>`.
    /// Values are rendered as strings, numbers, or boolean values as appropriate.
    /// Nested JSON objects may be produced by some command operators (e.g. FILTER_STATE or DYNAMIC_METADATA).
    /// See the documentation for a specific command operator for details.
    ///
    /// .. validated-code-block:: yaml
    ///   :type-name: envoy.config.core.v3.SubstitutionFormatString
    ///
    ///   json_format:
    ///     status: "%RESPONSE_CODE%"
    ///     message: "%LOCAL_REPLY_BODY%"
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
    public static func ==(lhs: Envoy_Config_Core_V3_SubstitutionFormatString.OneOf_Format, rhs: Envoy_Config_Core_V3_SubstitutionFormatString.OneOf_Format) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.textFormat, .textFormat): return {
        guard case .textFormat(let l) = lhs, case .textFormat(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.jsonFormat, .jsonFormat): return {
        guard case .jsonFormat(let l) = lhs, case .jsonFormat(let r) = rhs else { preconditionFailure() }
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

fileprivate let _protobuf_package = "envoy.config.core.v3"

extension Envoy_Config_Core_V3_SubstitutionFormatString: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SubstitutionFormatString"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "text_format"),
    2: .standard(proto: "json_format"),
    3: .standard(proto: "omit_empty_values"),
    4: .standard(proto: "content_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        if self.format != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.format = .textFormat(v)}
      }()
      case 2: try {
        var v: SwiftProtobuf.Google_Protobuf_Struct?
        if let current = self.format {
          try decoder.handleConflictingOneOf()
          if case .jsonFormat(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.format = .jsonFormat(v)}
      }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.omitEmptyValues) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.contentType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.format {
    case .textFormat?: try {
      guard case .textFormat(let v)? = self.format else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }()
    case .jsonFormat?: try {
      guard case .jsonFormat(let v)? = self.format else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    if self.omitEmptyValues != false {
      try visitor.visitSingularBoolField(value: self.omitEmptyValues, fieldNumber: 3)
    }
    if !self.contentType.isEmpty {
      try visitor.visitSingularStringField(value: self.contentType, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Core_V3_SubstitutionFormatString, rhs: Envoy_Config_Core_V3_SubstitutionFormatString) -> Bool {
    if lhs.format != rhs.format {return false}
    if lhs.omitEmptyValues != rhs.omitEmptyValues {return false}
    if lhs.contentType != rhs.contentType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
