// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/filter/http/header_to_metadata/v2/header_to_metadata.proto
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

public struct Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The list of rules to apply to requests.
  public var requestRules: [Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.Rule] = []

  /// The list of rules to apply to responses.
  public var responseRules: [Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.Rule] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum ValueType: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case string // = 0
    case number // = 1

    /// The value is a serialized `protobuf.Value
    /// <https://github.com/protocolbuffers/protobuf/blob/master/src/google/protobuf/struct.proto#L62>`_.
    case protobufValue // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .string
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .string
      case 1: self = .number
      case 2: self = .protobufValue
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .string: return 0
      case .number: return 1
      case .protobufValue: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// ValueEncode defines the encoding algorithm.
  public enum ValueEncode: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// The value is not encoded.
    case none // = 0

    /// The value is encoded in `Base64 <https://tools.ietf.org/html/rfc4648#section-4>`_.
    /// Note: this is mostly used for STRING and PROTOBUF_VALUE to escape the
    /// non-ASCII characters in the header.
    case base64 // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .none
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .none
      case 1: self = .base64
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .none: return 0
      case .base64: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// [#next-free-field: 6]
  public struct KeyValuePair {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The namespace — if this is empty, the filter's namespace will be used.
    public var metadataNamespace: String = String()

    /// The key to use within the namespace.
    public var key: String = String()

    /// The value to pair with the given key.
    ///
    /// When used for a `on_header_present` case, if value is non-empty it'll be used
    /// instead of the header value. If both are empty, no metadata is added.
    ///
    /// When used for a `on_header_missing` case, a non-empty value must be provided
    /// otherwise no metadata is added.
    public var value: String = String()

    /// The value's type — defaults to string.
    public var type: Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.ValueType = .string

    /// How is the value encoded, default is NONE (not encoded).
    /// The value will be decoded accordingly before storing to metadata.
    public var encode: Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.ValueEncode = .none

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// A Rule defines what metadata to apply when a header is present or missing.
  public struct Rule {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The header that triggers this rule — required.
    public var header: String = String()

    /// If the header is present, apply this metadata KeyValuePair.
    ///
    /// If the value in the KeyValuePair is non-empty, it'll be used instead
    /// of the header value.
    public var onHeaderPresent: Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.KeyValuePair {
      get {return _onHeaderPresent ?? Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.KeyValuePair()}
      set {_onHeaderPresent = newValue}
    }
    /// Returns true if `onHeaderPresent` has been explicitly set.
    public var hasOnHeaderPresent: Bool {return self._onHeaderPresent != nil}
    /// Clears the value of `onHeaderPresent`. Subsequent reads from it will return its default value.
    public mutating func clearOnHeaderPresent() {self._onHeaderPresent = nil}

    /// If the header is not present, apply this metadata KeyValuePair.
    ///
    /// The value in the KeyValuePair must be set, since it'll be used in lieu
    /// of the missing header value.
    public var onHeaderMissing: Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.KeyValuePair {
      get {return _onHeaderMissing ?? Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.KeyValuePair()}
      set {_onHeaderMissing = newValue}
    }
    /// Returns true if `onHeaderMissing` has been explicitly set.
    public var hasOnHeaderMissing: Bool {return self._onHeaderMissing != nil}
    /// Clears the value of `onHeaderMissing`. Subsequent reads from it will return its default value.
    public mutating func clearOnHeaderMissing() {self._onHeaderMissing = nil}

    /// Whether or not to remove the header after a rule is applied.
    ///
    /// This prevents headers from leaking.
    public var remove: Bool = false

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _onHeaderPresent: Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.KeyValuePair? = nil
    fileprivate var _onHeaderMissing: Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.KeyValuePair? = nil
  }

  public init() {}
}

#if swift(>=4.2)

extension Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.ValueType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.ValueType] = [
    .string,
    .number,
    .protobufValue,
  ]
}

extension Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.ValueEncode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.ValueEncode] = [
    .none,
    .base64,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.filter.http.header_to_metadata.v2"

extension Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Config"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "request_rules"),
    2: .standard(proto: "response_rules"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.requestRules) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.responseRules) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.requestRules.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.requestRules, fieldNumber: 1)
    }
    if !self.responseRules.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.responseRules, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config, rhs: Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config) -> Bool {
    if lhs.requestRules != rhs.requestRules {return false}
    if lhs.responseRules != rhs.responseRules {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.ValueType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STRING"),
    1: .same(proto: "NUMBER"),
    2: .same(proto: "PROTOBUF_VALUE"),
  ]
}

extension Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.ValueEncode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NONE"),
    1: .same(proto: "BASE64"),
  ]
}

extension Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.KeyValuePair: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.protoMessageName + ".KeyValuePair"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "metadata_namespace"),
    2: .same(proto: "key"),
    3: .same(proto: "value"),
    4: .same(proto: "type"),
    5: .same(proto: "encode"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.metadataNamespace) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.key) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.value) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.encode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.metadataNamespace.isEmpty {
      try visitor.visitSingularStringField(value: self.metadataNamespace, fieldNumber: 1)
    }
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 2)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 3)
    }
    if self.type != .string {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 4)
    }
    if self.encode != .none {
      try visitor.visitSingularEnumField(value: self.encode, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.KeyValuePair, rhs: Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.KeyValuePair) -> Bool {
    if lhs.metadataNamespace != rhs.metadataNamespace {return false}
    if lhs.key != rhs.key {return false}
    if lhs.value != rhs.value {return false}
    if lhs.type != rhs.type {return false}
    if lhs.encode != rhs.encode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.Rule: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.protoMessageName + ".Rule"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .standard(proto: "on_header_present"),
    3: .standard(proto: "on_header_missing"),
    4: .same(proto: "remove"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.header) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._onHeaderPresent) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._onHeaderMissing) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.remove) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.header.isEmpty {
      try visitor.visitSingularStringField(value: self.header, fieldNumber: 1)
    }
    if let v = self._onHeaderPresent {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._onHeaderMissing {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if self.remove != false {
      try visitor.visitSingularBoolField(value: self.remove, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.Rule, rhs: Envoy_Config_Filter_Http_HeaderToMetadata_V2_Config.Rule) -> Bool {
    if lhs.header != rhs.header {return false}
    if lhs._onHeaderPresent != rhs._onHeaderPresent {return false}
    if lhs._onHeaderMissing != rhs._onHeaderMissing {return false}
    if lhs.remove != rhs.remove {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}