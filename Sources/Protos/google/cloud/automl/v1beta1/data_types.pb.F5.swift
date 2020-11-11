// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/automl/v1beta1/data_types.proto
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

/// `TypeCode` is used as a part of
/// [DataType][google.cloud.automl.v1beta1.DataType].
public enum Google_Cloud_Automl_V1beta1_TypeCode: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Not specified. Should not be used.
  case unspecified // = 0

  /// Encoded as `number`, or the strings `"NaN"`, `"Infinity"`, or
  /// `"-Infinity"`.
  case float64 // = 3

  /// Must be between 0AD and 9999AD. Encoded as `string` according to
  /// [time_format][google.cloud.automl.v1beta1.DataType.time_format], or, if
  /// that format is not set, then in RFC 3339 `date-time` format, where
  /// `time-offset` = `"Z"` (e.g. 1985-04-12T23:20:50.52Z).
  case timestamp // = 4

  /// Encoded as `string`.
  case string // = 6

  /// Encoded as `list`, where the list elements are represented according to
  ///
  /// [list_element_type][google.cloud.automl.v1beta1.DataType.list_element_type].
  case array // = 8

  /// Encoded as `struct`, where field values are represented according to
  /// [struct_type][google.cloud.automl.v1beta1.DataType.struct_type].
  case `struct` // = 9

  /// Values of this type are not further understood by AutoML,
  /// e.g. AutoML is unable to tell the order of values (as it could with
  /// FLOAT64), or is unable to say if one value contains another (as it
  /// could with STRING).
  /// Encoded as `string` (bytes should be base64-encoded, as described in RFC
  /// 4648, section 4).
  case category // = 10
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 3: self = .float64
    case 4: self = .timestamp
    case 6: self = .string
    case 8: self = .array
    case 9: self = .struct
    case 10: self = .category
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .float64: return 3
    case .timestamp: return 4
    case .string: return 6
    case .array: return 8
    case .struct: return 9
    case .category: return 10
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Cloud_Automl_V1beta1_TypeCode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Automl_V1beta1_TypeCode] = [
    .unspecified,
    .float64,
    .timestamp,
    .string,
    .array,
    .struct,
    .category,
  ]
}

#endif  // swift(>=4.2)

/// Indicated the type of data that can be stored in a structured data entity
/// (e.g. a table).
public struct Google_Cloud_Automl_V1beta1_DataType {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Details of DataType-s that need additional specification.
  public var details: OneOf_Details? {
    get {return _storage._details}
    set {_uniqueStorage()._details = newValue}
  }

  /// If [type_code][google.cloud.automl.v1beta1.DataType.type_code] == [ARRAY][google.cloud.automl.v1beta1.TypeCode.ARRAY],
  /// then `list_element_type` is the type of the elements.
  public var listElementType: Google_Cloud_Automl_V1beta1_DataType {
    get {
      if case .listElementType(let v)? = _storage._details {return v}
      return Google_Cloud_Automl_V1beta1_DataType()
    }
    set {_uniqueStorage()._details = .listElementType(newValue)}
  }

  /// If [type_code][google.cloud.automl.v1beta1.DataType.type_code] == [STRUCT][google.cloud.automl.v1beta1.TypeCode.STRUCT], then `struct_type`
  /// provides type information for the struct's fields.
  public var structType: Google_Cloud_Automl_V1beta1_StructType {
    get {
      if case .structType(let v)? = _storage._details {return v}
      return Google_Cloud_Automl_V1beta1_StructType()
    }
    set {_uniqueStorage()._details = .structType(newValue)}
  }

  /// If [type_code][google.cloud.automl.v1beta1.DataType.type_code] == [TIMESTAMP][google.cloud.automl.v1beta1.TypeCode.TIMESTAMP]
  /// then `time_format` provides the format in which that time field is
  /// expressed. The time_format must either be one of:
  /// * `UNIX_SECONDS`
  /// * `UNIX_MILLISECONDS`
  /// * `UNIX_MICROSECONDS`
  /// * `UNIX_NANOSECONDS`
  /// (for respectively number of seconds, milliseconds, microseconds and
  /// nanoseconds since start of the Unix epoch);
  /// or be written in `strftime` syntax. If time_format is not set, then the
  /// default format as described on the type_code is used.
  public var timeFormat: String {
    get {
      if case .timeFormat(let v)? = _storage._details {return v}
      return String()
    }
    set {_uniqueStorage()._details = .timeFormat(newValue)}
  }

  /// Required. The [TypeCode][google.cloud.automl.v1beta1.TypeCode] for this type.
  public var typeCode: Google_Cloud_Automl_V1beta1_TypeCode {
    get {return _storage._typeCode}
    set {_uniqueStorage()._typeCode = newValue}
  }

  /// If true, this DataType can also be `NULL`. In .CSV files `NULL` value is
  /// expressed as an empty string.
  public var nullable: Bool {
    get {return _storage._nullable}
    set {_uniqueStorage()._nullable = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Details of DataType-s that need additional specification.
  public enum OneOf_Details: Equatable {
    /// If [type_code][google.cloud.automl.v1beta1.DataType.type_code] == [ARRAY][google.cloud.automl.v1beta1.TypeCode.ARRAY],
    /// then `list_element_type` is the type of the elements.
    case listElementType(Google_Cloud_Automl_V1beta1_DataType)
    /// If [type_code][google.cloud.automl.v1beta1.DataType.type_code] == [STRUCT][google.cloud.automl.v1beta1.TypeCode.STRUCT], then `struct_type`
    /// provides type information for the struct's fields.
    case structType(Google_Cloud_Automl_V1beta1_StructType)
    /// If [type_code][google.cloud.automl.v1beta1.DataType.type_code] == [TIMESTAMP][google.cloud.automl.v1beta1.TypeCode.TIMESTAMP]
    /// then `time_format` provides the format in which that time field is
    /// expressed. The time_format must either be one of:
    /// * `UNIX_SECONDS`
    /// * `UNIX_MILLISECONDS`
    /// * `UNIX_MICROSECONDS`
    /// * `UNIX_NANOSECONDS`
    /// (for respectively number of seconds, milliseconds, microseconds and
    /// nanoseconds since start of the Unix epoch);
    /// or be written in `strftime` syntax. If time_format is not set, then the
    /// default format as described on the type_code is used.
    case timeFormat(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Automl_V1beta1_DataType.OneOf_Details, rhs: Google_Cloud_Automl_V1beta1_DataType.OneOf_Details) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.listElementType, .listElementType): return {
        guard case .listElementType(let l) = lhs, case .listElementType(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.structType, .structType): return {
        guard case .structType(let l) = lhs, case .structType(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.timeFormat, .timeFormat): return {
        guard case .timeFormat(let l) = lhs, case .timeFormat(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// `StructType` defines the DataType-s of a [STRUCT][google.cloud.automl.v1beta1.TypeCode.STRUCT] type.
public struct Google_Cloud_Automl_V1beta1_StructType {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Unordered map of struct field names to their data types.
  /// Fields cannot be added or removed via Update. Their names and
  /// data types are still mutable.
  public var fields: Dictionary<String,Google_Cloud_Automl_V1beta1_DataType> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.automl.v1beta1"

extension Google_Cloud_Automl_V1beta1_TypeCode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TYPE_CODE_UNSPECIFIED"),
    3: .same(proto: "FLOAT64"),
    4: .same(proto: "TIMESTAMP"),
    6: .same(proto: "STRING"),
    8: .same(proto: "ARRAY"),
    9: .same(proto: "STRUCT"),
    10: .same(proto: "CATEGORY"),
  ]
}

extension Google_Cloud_Automl_V1beta1_DataType: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DataType"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "list_element_type"),
    3: .standard(proto: "struct_type"),
    5: .standard(proto: "time_format"),
    1: .standard(proto: "type_code"),
    4: .same(proto: "nullable"),
  ]

  fileprivate class _StorageClass {
    var _details: Google_Cloud_Automl_V1beta1_DataType.OneOf_Details?
    var _typeCode: Google_Cloud_Automl_V1beta1_TypeCode = .unspecified
    var _nullable: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _details = source._details
      _typeCode = source._typeCode
      _nullable = source._nullable
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
        case 1: try { try decoder.decodeSingularEnumField(value: &_storage._typeCode) }()
        case 2: try {
          var v: Google_Cloud_Automl_V1beta1_DataType?
          if let current = _storage._details {
            try decoder.handleConflictingOneOf()
            if case .listElementType(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._details = .listElementType(v)}
        }()
        case 3: try {
          var v: Google_Cloud_Automl_V1beta1_StructType?
          if let current = _storage._details {
            try decoder.handleConflictingOneOf()
            if case .structType(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._details = .structType(v)}
        }()
        case 4: try { try decoder.decodeSingularBoolField(value: &_storage._nullable) }()
        case 5: try {
          if _storage._details != nil {try decoder.handleConflictingOneOf()}
          var v: String?
          try decoder.decodeSingularStringField(value: &v)
          if let v = v {_storage._details = .timeFormat(v)}
        }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._typeCode != .unspecified {
        try visitor.visitSingularEnumField(value: _storage._typeCode, fieldNumber: 1)
      }
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch _storage._details {
      case .listElementType?: try {
        guard case .listElementType(let v)? = _storage._details else { preconditionFailure() }
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }()
      case .structType?: try {
        guard case .structType(let v)? = _storage._details else { preconditionFailure() }
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }()
      default: break
      }
      if _storage._nullable != false {
        try visitor.visitSingularBoolField(value: _storage._nullable, fieldNumber: 4)
      }
      if case .timeFormat(let v)? = _storage._details {
        try visitor.visitSingularStringField(value: v, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_DataType, rhs: Google_Cloud_Automl_V1beta1_DataType) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._details != rhs_storage._details {return false}
        if _storage._typeCode != rhs_storage._typeCode {return false}
        if _storage._nullable != rhs_storage._nullable {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1beta1_StructType: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StructType"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "fields"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Cloud_Automl_V1beta1_DataType>.self, value: &self.fields) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.fields.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Cloud_Automl_V1beta1_DataType>.self, value: self.fields, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_StructType, rhs: Google_Cloud_Automl_V1beta1_StructType) -> Bool {
    if lhs.fields != rhs.fields {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}