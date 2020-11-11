// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/bigquery/storage/v1beta2/table.proto
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

/// Schema of a table
public struct Google_Cloud_Bigquery_Storage_V1beta2_TableSchema {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Describes the fields in a table.
  public var fields: [Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A field in TableSchema
public struct Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The field name. The name must contain only letters (a-z, A-Z),
  /// numbers (0-9), or underscores (_), and must start with a letter or
  /// underscore. The maximum length is 128 characters.
  public var name: String = String()

  /// Required. The field data type.
  public var type: Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema.TypeEnum = .unspecified

  /// Optional. The field mode. The default value is NULLABLE.
  public var mode: Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema.Mode = .unspecified

  /// Optional. Describes the nested schema fields if the type property is set to STRUCT.
  public var fields: [Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema] = []

  /// Optional. The field description. The maximum length is 1,024 characters.
  public var description_p: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum TypeEnum: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Illegal value
    case unspecified // = 0

    /// 64K, UTF8
    case string // = 1

    /// 64-bit signed
    case int64 // = 2

    /// 64-bit IEEE floating point
    case double // = 3

    /// Aggregate type
    case `struct` // = 4

    /// 64K, Binary
    case bytes // = 5

    /// 2-valued
    case bool // = 6

    /// 64-bit signed usec since UTC epoch
    case timestamp // = 7

    /// Civil date - Year, Month, Day
    case date // = 8

    /// Civil time - Hour, Minute, Second, Microseconds
    case time // = 9

    /// Combination of civil date and civil time
    case datetime // = 10

    /// Geography object
    case geography // = 11

    /// Numeric value
    case numeric // = 12
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .string
      case 2: self = .int64
      case 3: self = .double
      case 4: self = .struct
      case 5: self = .bytes
      case 6: self = .bool
      case 7: self = .timestamp
      case 8: self = .date
      case 9: self = .time
      case 10: self = .datetime
      case 11: self = .geography
      case 12: self = .numeric
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .string: return 1
      case .int64: return 2
      case .double: return 3
      case .struct: return 4
      case .bytes: return 5
      case .bool: return 6
      case .timestamp: return 7
      case .date: return 8
      case .time: return 9
      case .datetime: return 10
      case .geography: return 11
      case .numeric: return 12
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public enum Mode: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Illegal value
    case unspecified // = 0
    case nullable // = 1
    case `required` // = 2
    case repeated // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .nullable
      case 2: self = .required
      case 3: self = .repeated
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .nullable: return 1
      case .required: return 2
      case .repeated: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema.TypeEnum: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema.TypeEnum] = [
    .unspecified,
    .string,
    .int64,
    .double,
    .struct,
    .bytes,
    .bool,
    .timestamp,
    .date,
    .time,
    .datetime,
    .geography,
    .numeric,
  ]
}

extension Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema.Mode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema.Mode] = [
    .unspecified,
    .nullable,
    .required,
    .repeated,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.bigquery.storage.v1beta2"

extension Google_Cloud_Bigquery_Storage_V1beta2_TableSchema: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TableSchema"
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

  public static func ==(lhs: Google_Cloud_Bigquery_Storage_V1beta2_TableSchema, rhs: Google_Cloud_Bigquery_Storage_V1beta2_TableSchema) -> Bool {
    if lhs.fields != rhs.fields {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TableFieldSchema"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "type"),
    3: .same(proto: "mode"),
    4: .same(proto: "fields"),
    6: .same(proto: "description"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.mode) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.fields) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.type != .unspecified {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 2)
    }
    if self.mode != .unspecified {
      try visitor.visitSingularEnumField(value: self.mode, fieldNumber: 3)
    }
    if !self.fields.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.fields, fieldNumber: 4)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema, rhs: Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.type != rhs.type {return false}
    if lhs.mode != rhs.mode {return false}
    if lhs.fields != rhs.fields {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema.TypeEnum: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TYPE_UNSPECIFIED"),
    1: .same(proto: "STRING"),
    2: .same(proto: "INT64"),
    3: .same(proto: "DOUBLE"),
    4: .same(proto: "STRUCT"),
    5: .same(proto: "BYTES"),
    6: .same(proto: "BOOL"),
    7: .same(proto: "TIMESTAMP"),
    8: .same(proto: "DATE"),
    9: .same(proto: "TIME"),
    10: .same(proto: "DATETIME"),
    11: .same(proto: "GEOGRAPHY"),
    12: .same(proto: "NUMERIC"),
  ]
}

extension Google_Cloud_Bigquery_Storage_V1beta2_TableFieldSchema.Mode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "MODE_UNSPECIFIED"),
    1: .same(proto: "NULLABLE"),
    2: .same(proto: "REQUIRED"),
    3: .same(proto: "REPEATED"),
  ]
}
