// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/bigquery/v2/standard_sql.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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

/// The type of a variable, e.g., a function argument.
/// Examples:
/// INT64: {type_kind="INT64"}
/// ARRAY<STRING>: {type_kind="ARRAY", array_element_type="STRING"}
/// STRUCT<x STRING, y ARRAY<DATE>>:
///   {type_kind="STRUCT",
///    struct_type={fields=[
///      {name="x", type={type_kind="STRING"}},
///      {name="y", type={type_kind="ARRAY", array_element_type="DATE"}}
///    ]}}
public struct Google_Cloud_Bigquery_V2_StandardSqlDataType {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The top level type of this field.
  /// Can be any standard SQL data type (e.g., "INT64", "DATE", "ARRAY").
  public var typeKind: Google_Cloud_Bigquery_V2_StandardSqlDataType.TypeKind {
    get {return _storage._typeKind}
    set {_uniqueStorage()._typeKind = newValue}
  }

  public var subType: OneOf_SubType? {
    get {return _storage._subType}
    set {_uniqueStorage()._subType = newValue}
  }

  /// The type of the array's elements, if type_kind = "ARRAY".
  public var arrayElementType: Google_Cloud_Bigquery_V2_StandardSqlDataType {
    get {
      if case .arrayElementType(let v)? = _storage._subType {return v}
      return Google_Cloud_Bigquery_V2_StandardSqlDataType()
    }
    set {_uniqueStorage()._subType = .arrayElementType(newValue)}
  }

  /// The fields of this struct, in order, if type_kind = "STRUCT".
  public var structType: Google_Cloud_Bigquery_V2_StandardSqlStructType {
    get {
      if case .structType(let v)? = _storage._subType {return v}
      return Google_Cloud_Bigquery_V2_StandardSqlStructType()
    }
    set {_uniqueStorage()._subType = .structType(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_SubType: Equatable {
    /// The type of the array's elements, if type_kind = "ARRAY".
    case arrayElementType(Google_Cloud_Bigquery_V2_StandardSqlDataType)
    /// The fields of this struct, in order, if type_kind = "STRUCT".
    case structType(Google_Cloud_Bigquery_V2_StandardSqlStructType)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Bigquery_V2_StandardSqlDataType.OneOf_SubType, rhs: Google_Cloud_Bigquery_V2_StandardSqlDataType.OneOf_SubType) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.arrayElementType, .arrayElementType): return {
        guard case .arrayElementType(let l) = lhs, case .arrayElementType(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.structType, .structType): return {
        guard case .structType(let l) = lhs, case .structType(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public enum TypeKind: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Invalid type.
    case unspecified // = 0

    /// Encoded as a string in decimal format.
    case int64 // = 2

    /// Encoded as a boolean "false" or "true".
    case bool // = 5

    /// Encoded as a number, or string "NaN", "Infinity" or "-Infinity".
    case float64 // = 7

    /// Encoded as a string value.
    case string // = 8

    /// Encoded as a base64 string per RFC 4648, section 4.
    case bytes // = 9

    /// Encoded as an RFC 3339 timestamp with mandatory "Z" time zone string:
    /// 1985-04-12T23:20:50.52Z
    case timestamp // = 19

    /// Encoded as RFC 3339 full-date format string: 1985-04-12
    case date // = 10

    /// Encoded as RFC 3339 partial-time format string: 23:20:50.52
    case time // = 20

    /// Encoded as RFC 3339 full-date "T" partial-time: 1985-04-12T23:20:50.52
    case datetime // = 21

    /// Encoded as WKT
    case geography // = 22

    /// Encoded as a decimal string.
    case numeric // = 23

    /// Encoded as a decimal string.
    case bignumeric // = 24

    /// Encoded as a list with types matching Type.array_type.
    case array // = 16

    /// Encoded as a list with fields of type Type.struct_type[i]. List is used
    /// because a JSON object cannot have duplicate field names.
    case `struct` // = 17
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 2: self = .int64
      case 5: self = .bool
      case 7: self = .float64
      case 8: self = .string
      case 9: self = .bytes
      case 10: self = .date
      case 16: self = .array
      case 17: self = .struct
      case 19: self = .timestamp
      case 20: self = .time
      case 21: self = .datetime
      case 22: self = .geography
      case 23: self = .numeric
      case 24: self = .bignumeric
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .int64: return 2
      case .bool: return 5
      case .float64: return 7
      case .string: return 8
      case .bytes: return 9
      case .date: return 10
      case .array: return 16
      case .struct: return 17
      case .timestamp: return 19
      case .time: return 20
      case .datetime: return 21
      case .geography: return 22
      case .numeric: return 23
      case .bignumeric: return 24
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension Google_Cloud_Bigquery_V2_StandardSqlDataType.TypeKind: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Bigquery_V2_StandardSqlDataType.TypeKind] = [
    .unspecified,
    .int64,
    .bool,
    .float64,
    .string,
    .bytes,
    .timestamp,
    .date,
    .time,
    .datetime,
    .geography,
    .numeric,
    .bignumeric,
    .array,
    .struct,
  ]
}

#endif  // swift(>=4.2)

/// A field or a column.
public struct Google_Cloud_Bigquery_V2_StandardSqlField {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional. The name of this field. Can be absent for struct fields.
  public var name: String = String()

  /// Optional. The type of this parameter. Absent if not explicitly
  /// specified (e.g., CREATE FUNCTION statement can omit the return type;
  /// in this case the output parameter does not have this "type" field).
  public var type: Google_Cloud_Bigquery_V2_StandardSqlDataType {
    get {return _type ?? Google_Cloud_Bigquery_V2_StandardSqlDataType()}
    set {_type = newValue}
  }
  /// Returns true if `type` has been explicitly set.
  public var hasType: Bool {return self._type != nil}
  /// Clears the value of `type`. Subsequent reads from it will return its default value.
  public mutating func clearType() {self._type = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _type: Google_Cloud_Bigquery_V2_StandardSqlDataType? = nil
}

public struct Google_Cloud_Bigquery_V2_StandardSqlStructType {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var fields: [Google_Cloud_Bigquery_V2_StandardSqlField] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.bigquery.v2"

extension Google_Cloud_Bigquery_V2_StandardSqlDataType: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StandardSqlDataType"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "type_kind"),
    2: .standard(proto: "array_element_type"),
    3: .standard(proto: "struct_type"),
  ]

  fileprivate class _StorageClass {
    var _typeKind: Google_Cloud_Bigquery_V2_StandardSqlDataType.TypeKind = .unspecified
    var _subType: Google_Cloud_Bigquery_V2_StandardSqlDataType.OneOf_SubType?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _typeKind = source._typeKind
      _subType = source._subType
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularEnumField(value: &_storage._typeKind) }()
        case 2: try {
          var v: Google_Cloud_Bigquery_V2_StandardSqlDataType?
          if let current = _storage._subType {
            try decoder.handleConflictingOneOf()
            if case .arrayElementType(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._subType = .arrayElementType(v)}
        }()
        case 3: try {
          var v: Google_Cloud_Bigquery_V2_StandardSqlStructType?
          if let current = _storage._subType {
            try decoder.handleConflictingOneOf()
            if case .structType(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._subType = .structType(v)}
        }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._typeKind != .unspecified {
        try visitor.visitSingularEnumField(value: _storage._typeKind, fieldNumber: 1)
      }
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch _storage._subType {
      case .arrayElementType?: try {
        guard case .arrayElementType(let v)? = _storage._subType else { preconditionFailure() }
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }()
      case .structType?: try {
        guard case .structType(let v)? = _storage._subType else { preconditionFailure() }
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }()
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Bigquery_V2_StandardSqlDataType, rhs: Google_Cloud_Bigquery_V2_StandardSqlDataType) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._typeKind != rhs_storage._typeKind {return false}
        if _storage._subType != rhs_storage._subType {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Bigquery_V2_StandardSqlDataType.TypeKind: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TYPE_KIND_UNSPECIFIED"),
    2: .same(proto: "INT64"),
    5: .same(proto: "BOOL"),
    7: .same(proto: "FLOAT64"),
    8: .same(proto: "STRING"),
    9: .same(proto: "BYTES"),
    10: .same(proto: "DATE"),
    16: .same(proto: "ARRAY"),
    17: .same(proto: "STRUCT"),
    19: .same(proto: "TIMESTAMP"),
    20: .same(proto: "TIME"),
    21: .same(proto: "DATETIME"),
    22: .same(proto: "GEOGRAPHY"),
    23: .same(proto: "NUMERIC"),
    24: .same(proto: "BIGNUMERIC"),
  ]
}

extension Google_Cloud_Bigquery_V2_StandardSqlField: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StandardSqlField"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._type) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._type {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Bigquery_V2_StandardSqlField, rhs: Google_Cloud_Bigquery_V2_StandardSqlField) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._type != rhs._type {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Bigquery_V2_StandardSqlStructType: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StandardSqlStructType"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "fields"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.fields) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.fields.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.fields, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Bigquery_V2_StandardSqlStructType, rhs: Google_Cloud_Bigquery_V2_StandardSqlStructType) -> Bool {
    if lhs.fields != rhs.fields {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
