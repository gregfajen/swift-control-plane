// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/bigquery/storage/v1/stream.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2019 Google LLC.
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

/// Data format for input or output data.
public enum Google_Cloud_Bigquery_Storage_V1_DataFormat: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case unspecified // = 0

  /// Avro is a standard open source row based file format.
  /// See https://avro.apache.org/ for more details.
  case avro // = 1

  /// Arrow is a standard open source column-based message format.
  /// See https://arrow.apache.org/ for more details.
  case arrow // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .avro
    case 2: self = .arrow
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .avro: return 1
    case .arrow: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Cloud_Bigquery_Storage_V1_DataFormat: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Bigquery_Storage_V1_DataFormat] = [
    .unspecified,
    .avro,
    .arrow,
  ]
}

#endif  // swift(>=4.2)

/// Information about the ReadSession.
public struct Google_Cloud_Bigquery_Storage_V1_ReadSession {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. Unique identifier for the session, in the form
  /// `projects/{project_id}/locations/{location}/sessions/{session_id}`.
  public var name: String = String()

  /// Output only. Time at which the session becomes invalid. After this time, subsequent
  /// requests to read this Session will return errors. The expire_time is
  /// automatically assigned and currently cannot be specified or updated.
  public var expireTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _expireTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_expireTime = newValue}
  }
  /// Returns true if `expireTime` has been explicitly set.
  public var hasExpireTime: Bool {return self._expireTime != nil}
  /// Clears the value of `expireTime`. Subsequent reads from it will return its default value.
  public mutating func clearExpireTime() {self._expireTime = nil}

  /// Immutable. Data format of the output data.
  public var dataFormat: Google_Cloud_Bigquery_Storage_V1_DataFormat = .unspecified

  /// The schema for the read. If read_options.selected_fields is set, the
  /// schema may be different from the table schema as it will only contain
  /// the selected fields.
  public var schema: Google_Cloud_Bigquery_Storage_V1_ReadSession.OneOf_Schema? = nil

  /// Output only. Avro schema.
  public var avroSchema: Google_Cloud_Bigquery_Storage_V1_AvroSchema {
    get {
      if case .avroSchema(let v)? = schema {return v}
      return Google_Cloud_Bigquery_Storage_V1_AvroSchema()
    }
    set {schema = .avroSchema(newValue)}
  }

  /// Output only. Arrow schema.
  public var arrowSchema: Google_Cloud_Bigquery_Storage_V1_ArrowSchema {
    get {
      if case .arrowSchema(let v)? = schema {return v}
      return Google_Cloud_Bigquery_Storage_V1_ArrowSchema()
    }
    set {schema = .arrowSchema(newValue)}
  }

  /// Immutable. Table that this ReadSession is reading from, in the form
  /// `projects/{project_id}/datasets/{dataset_id}/tables/{table_id}`
  public var table: String = String()

  /// Optional. Any modifiers which are applied when reading from the specified table.
  public var tableModifiers: Google_Cloud_Bigquery_Storage_V1_ReadSession.TableModifiers {
    get {return _tableModifiers ?? Google_Cloud_Bigquery_Storage_V1_ReadSession.TableModifiers()}
    set {_tableModifiers = newValue}
  }
  /// Returns true if `tableModifiers` has been explicitly set.
  public var hasTableModifiers: Bool {return self._tableModifiers != nil}
  /// Clears the value of `tableModifiers`. Subsequent reads from it will return its default value.
  public mutating func clearTableModifiers() {self._tableModifiers = nil}

  /// Optional. Read options for this session (e.g. column selection, filters).
  public var readOptions: Google_Cloud_Bigquery_Storage_V1_ReadSession.TableReadOptions {
    get {return _readOptions ?? Google_Cloud_Bigquery_Storage_V1_ReadSession.TableReadOptions()}
    set {_readOptions = newValue}
  }
  /// Returns true if `readOptions` has been explicitly set.
  public var hasReadOptions: Bool {return self._readOptions != nil}
  /// Clears the value of `readOptions`. Subsequent reads from it will return its default value.
  public mutating func clearReadOptions() {self._readOptions = nil}

  /// Output only. A list of streams created with the session.
  ///
  /// At least one stream is created with the session. In the future, larger
  /// request_stream_count values *may* result in this list being unpopulated,
  /// in that case, the user will need to use a List method to get the streams
  /// instead, which is not yet available.
  public var streams: [Google_Cloud_Bigquery_Storage_V1_ReadStream] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The schema for the read. If read_options.selected_fields is set, the
  /// schema may be different from the table schema as it will only contain
  /// the selected fields.
  public enum OneOf_Schema: Equatable {
    /// Output only. Avro schema.
    case avroSchema(Google_Cloud_Bigquery_Storage_V1_AvroSchema)
    /// Output only. Arrow schema.
    case arrowSchema(Google_Cloud_Bigquery_Storage_V1_ArrowSchema)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Bigquery_Storage_V1_ReadSession.OneOf_Schema, rhs: Google_Cloud_Bigquery_Storage_V1_ReadSession.OneOf_Schema) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.avroSchema, .avroSchema): return {
        guard case .avroSchema(let l) = lhs, case .avroSchema(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.arrowSchema, .arrowSchema): return {
        guard case .arrowSchema(let l) = lhs, case .arrowSchema(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  /// Additional attributes when reading a table.
  public struct TableModifiers {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The snapshot time of the table. If not set, interpreted as now.
    public var snapshotTime: SwiftProtobuf.Google_Protobuf_Timestamp {
      get {return _snapshotTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
      set {_snapshotTime = newValue}
    }
    /// Returns true if `snapshotTime` has been explicitly set.
    public var hasSnapshotTime: Bool {return self._snapshotTime != nil}
    /// Clears the value of `snapshotTime`. Subsequent reads from it will return its default value.
    public mutating func clearSnapshotTime() {self._snapshotTime = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _snapshotTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  }

  /// Options dictating how we read a table.
  public struct TableReadOptions {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Names of the fields in the table that should be read. If empty, all
    /// fields will be read. If the specified field is a nested field, all
    /// the sub-fields in the field will be selected. The output field order is
    /// unrelated to the order of fields in selected_fields.
    public var selectedFields: [String] = []

    /// SQL text filtering statement, similar to a WHERE clause in a query.
    /// Aggregates are not supported.
    ///
    /// Examples: "int_field > 5"
    ///           "date_field = CAST('2014-9-27' as DATE)"
    ///           "nullable_field is not NULL"
    ///           "st_equals(geo_field, st_geofromtext("POINT(2, 2)"))"
    ///           "numeric_field BETWEEN 1.0 AND 5.0"
    public var rowRestriction: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _expireTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _tableModifiers: Google_Cloud_Bigquery_Storage_V1_ReadSession.TableModifiers? = nil
  fileprivate var _readOptions: Google_Cloud_Bigquery_Storage_V1_ReadSession.TableReadOptions? = nil
}

/// Information about a single stream that gets data out of the storage system.
/// Most of the information about `ReadStream` instances is aggregated, making
/// `ReadStream` lightweight.
public struct Google_Cloud_Bigquery_Storage_V1_ReadStream {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. Name of the stream, in the form
  /// `projects/{project_id}/locations/{location}/sessions/{session_id}/streams/{stream_id}`.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.bigquery.storage.v1"

extension Google_Cloud_Bigquery_Storage_V1_DataFormat: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DATA_FORMAT_UNSPECIFIED"),
    1: .same(proto: "AVRO"),
    2: .same(proto: "ARROW"),
  ]
}

extension Google_Cloud_Bigquery_Storage_V1_ReadSession: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ReadSession"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "expire_time"),
    3: .standard(proto: "data_format"),
    4: .standard(proto: "avro_schema"),
    5: .standard(proto: "arrow_schema"),
    6: .same(proto: "table"),
    7: .standard(proto: "table_modifiers"),
    8: .standard(proto: "read_options"),
    10: .same(proto: "streams"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._expireTime) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.dataFormat) }()
      case 4: try {
        var v: Google_Cloud_Bigquery_Storage_V1_AvroSchema?
        if let current = self.schema {
          try decoder.handleConflictingOneOf()
          if case .avroSchema(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.schema = .avroSchema(v)}
      }()
      case 5: try {
        var v: Google_Cloud_Bigquery_Storage_V1_ArrowSchema?
        if let current = self.schema {
          try decoder.handleConflictingOneOf()
          if case .arrowSchema(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.schema = .arrowSchema(v)}
      }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.table) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._tableModifiers) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._readOptions) }()
      case 10: try { try decoder.decodeRepeatedMessageField(value: &self.streams) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._expireTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.dataFormat != .unspecified {
      try visitor.visitSingularEnumField(value: self.dataFormat, fieldNumber: 3)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.schema {
    case .avroSchema?: try {
      guard case .avroSchema(let v)? = self.schema else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case .arrowSchema?: try {
      guard case .arrowSchema(let v)? = self.schema else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }()
    case nil: break
    }
    if !self.table.isEmpty {
      try visitor.visitSingularStringField(value: self.table, fieldNumber: 6)
    }
    if let v = self._tableModifiers {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    if let v = self._readOptions {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }
    if !self.streams.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.streams, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Bigquery_Storage_V1_ReadSession, rhs: Google_Cloud_Bigquery_Storage_V1_ReadSession) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._expireTime != rhs._expireTime {return false}
    if lhs.dataFormat != rhs.dataFormat {return false}
    if lhs.schema != rhs.schema {return false}
    if lhs.table != rhs.table {return false}
    if lhs._tableModifiers != rhs._tableModifiers {return false}
    if lhs._readOptions != rhs._readOptions {return false}
    if lhs.streams != rhs.streams {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Bigquery_Storage_V1_ReadSession.TableModifiers: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Bigquery_Storage_V1_ReadSession.protoMessageName + ".TableModifiers"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "snapshot_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._snapshotTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._snapshotTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Bigquery_Storage_V1_ReadSession.TableModifiers, rhs: Google_Cloud_Bigquery_Storage_V1_ReadSession.TableModifiers) -> Bool {
    if lhs._snapshotTime != rhs._snapshotTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Bigquery_Storage_V1_ReadSession.TableReadOptions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Bigquery_Storage_V1_ReadSession.protoMessageName + ".TableReadOptions"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "selected_fields"),
    2: .standard(proto: "row_restriction"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.selectedFields) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.rowRestriction) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.selectedFields.isEmpty {
      try visitor.visitRepeatedStringField(value: self.selectedFields, fieldNumber: 1)
    }
    if !self.rowRestriction.isEmpty {
      try visitor.visitSingularStringField(value: self.rowRestriction, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Bigquery_Storage_V1_ReadSession.TableReadOptions, rhs: Google_Cloud_Bigquery_Storage_V1_ReadSession.TableReadOptions) -> Bool {
    if lhs.selectedFields != rhs.selectedFields {return false}
    if lhs.rowRestriction != rhs.rowRestriction {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Bigquery_Storage_V1_ReadStream: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ReadStream"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Bigquery_Storage_V1_ReadStream, rhs: Google_Cloud_Bigquery_Storage_V1_ReadStream) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}