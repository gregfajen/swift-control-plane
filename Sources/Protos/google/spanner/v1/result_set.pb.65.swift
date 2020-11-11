// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/spanner/v1/result_set.proto
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

/// Results from [Read][google.spanner.v1.Spanner.Read] or
/// [ExecuteSql][google.spanner.v1.Spanner.ExecuteSql].
public struct Google_Spanner_V1_ResultSet {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Metadata about the result set, such as row type information.
  public var metadata: Google_Spanner_V1_ResultSetMetadata {
    get {return _metadata ?? Google_Spanner_V1_ResultSetMetadata()}
    set {_metadata = newValue}
  }
  /// Returns true if `metadata` has been explicitly set.
  public var hasMetadata: Bool {return self._metadata != nil}
  /// Clears the value of `metadata`. Subsequent reads from it will return its default value.
  public mutating func clearMetadata() {self._metadata = nil}

  /// Each element in `rows` is a row whose format is defined by
  /// [metadata.row_type][google.spanner.v1.ResultSetMetadata.row_type]. The ith element
  /// in each row matches the ith field in
  /// [metadata.row_type][google.spanner.v1.ResultSetMetadata.row_type]. Elements are
  /// encoded based on type as described
  /// [here][google.spanner.v1.TypeCode].
  public var rows: [SwiftProtobuf.Google_Protobuf_ListValue] = []

  /// Query plan and execution statistics for the SQL statement that
  /// produced this result set. These can be requested by setting
  /// [ExecuteSqlRequest.query_mode][google.spanner.v1.ExecuteSqlRequest.query_mode].
  /// DML statements always produce stats containing the number of rows
  /// modified, unless executed using the
  /// [ExecuteSqlRequest.QueryMode.PLAN][google.spanner.v1.ExecuteSqlRequest.QueryMode.PLAN] [ExecuteSqlRequest.query_mode][google.spanner.v1.ExecuteSqlRequest.query_mode].
  /// Other fields may or may not be populated, based on the
  /// [ExecuteSqlRequest.query_mode][google.spanner.v1.ExecuteSqlRequest.query_mode].
  public var stats: Google_Spanner_V1_ResultSetStats {
    get {return _stats ?? Google_Spanner_V1_ResultSetStats()}
    set {_stats = newValue}
  }
  /// Returns true if `stats` has been explicitly set.
  public var hasStats: Bool {return self._stats != nil}
  /// Clears the value of `stats`. Subsequent reads from it will return its default value.
  public mutating func clearStats() {self._stats = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _metadata: Google_Spanner_V1_ResultSetMetadata? = nil
  fileprivate var _stats: Google_Spanner_V1_ResultSetStats? = nil
}

/// Partial results from a streaming read or SQL query. Streaming reads and
/// SQL queries better tolerate large result sets, large rows, and large
/// values, but are a little trickier to consume.
public struct Google_Spanner_V1_PartialResultSet {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Metadata about the result set, such as row type information.
  /// Only present in the first response.
  public var metadata: Google_Spanner_V1_ResultSetMetadata {
    get {return _metadata ?? Google_Spanner_V1_ResultSetMetadata()}
    set {_metadata = newValue}
  }
  /// Returns true if `metadata` has been explicitly set.
  public var hasMetadata: Bool {return self._metadata != nil}
  /// Clears the value of `metadata`. Subsequent reads from it will return its default value.
  public mutating func clearMetadata() {self._metadata = nil}

  /// A streamed result set consists of a stream of values, which might
  /// be split into many `PartialResultSet` messages to accommodate
  /// large rows and/or large values. Every N complete values defines a
  /// row, where N is equal to the number of entries in
  /// [metadata.row_type.fields][google.spanner.v1.StructType.fields].
  ///
  /// Most values are encoded based on type as described
  /// [here][google.spanner.v1.TypeCode].
  ///
  /// It is possible that the last value in values is "chunked",
  /// meaning that the rest of the value is sent in subsequent
  /// `PartialResultSet`(s). This is denoted by the [chunked_value][google.spanner.v1.PartialResultSet.chunked_value]
  /// field. Two or more chunked values can be merged to form a
  /// complete value as follows:
  ///
  ///   * `bool/number/null`: cannot be chunked
  ///   * `string`: concatenate the strings
  ///   * `list`: concatenate the lists. If the last element in a list is a
  ///     `string`, `list`, or `object`, merge it with the first element in
  ///     the next list by applying these rules recursively.
  ///   * `object`: concatenate the (field name, field value) pairs. If a
  ///     field name is duplicated, then apply these rules recursively
  ///     to merge the field values.
  ///
  /// Some examples of merging:
  ///
  ///     # Strings are concatenated.
  ///     "foo", "bar" => "foobar"
  ///
  ///     # Lists of non-strings are concatenated.
  ///     [2, 3], [4] => [2, 3, 4]
  ///
  ///     # Lists are concatenated, but the last and first elements are merged
  ///     # because they are strings.
  ///     ["a", "b"], ["c", "d"] => ["a", "bc", "d"]
  ///
  ///     # Lists are concatenated, but the last and first elements are merged
  ///     # because they are lists. Recursively, the last and first elements
  ///     # of the inner lists are merged because they are strings.
  ///     ["a", ["b", "c"]], [["d"], "e"] => ["a", ["b", "cd"], "e"]
  ///
  ///     # Non-overlapping object fields are combined.
  ///     {"a": "1"}, {"b": "2"} => {"a": "1", "b": 2"}
  ///
  ///     # Overlapping object fields are merged.
  ///     {"a": "1"}, {"a": "2"} => {"a": "12"}
  ///
  ///     # Examples of merging objects containing lists of strings.
  ///     {"a": ["1"]}, {"a": ["2"]} => {"a": ["12"]}
  ///
  /// For a more complete example, suppose a streaming SQL query is
  /// yielding a result set whose rows contain a single string
  /// field. The following `PartialResultSet`s might be yielded:
  ///
  ///     {
  ///       "metadata": { ... }
  ///       "values": ["Hello", "W"]
  ///       "chunked_value": true
  ///       "resume_token": "Af65..."
  ///     }
  ///     {
  ///       "values": ["orl"]
  ///       "chunked_value": true
  ///       "resume_token": "Bqp2..."
  ///     }
  ///     {
  ///       "values": ["d"]
  ///       "resume_token": "Zx1B..."
  ///     }
  ///
  /// This sequence of `PartialResultSet`s encodes two rows, one
  /// containing the field value `"Hello"`, and a second containing the
  /// field value `"World" = "W" + "orl" + "d"`.
  public var values: [SwiftProtobuf.Google_Protobuf_Value] = []

  /// If true, then the final value in [values][google.spanner.v1.PartialResultSet.values] is chunked, and must
  /// be combined with more values from subsequent `PartialResultSet`s
  /// to obtain a complete field value.
  public var chunkedValue: Bool = false

  /// Streaming calls might be interrupted for a variety of reasons, such
  /// as TCP connection loss. If this occurs, the stream of results can
  /// be resumed by re-sending the original request and including
  /// `resume_token`. Note that executing any other transaction in the
  /// same session invalidates the token.
  public var resumeToken: Data = Data()

  /// Query plan and execution statistics for the statement that produced this
  /// streaming result set. These can be requested by setting
  /// [ExecuteSqlRequest.query_mode][google.spanner.v1.ExecuteSqlRequest.query_mode] and are sent
  /// only once with the last response in the stream.
  /// This field will also be present in the last response for DML
  /// statements.
  public var stats: Google_Spanner_V1_ResultSetStats {
    get {return _stats ?? Google_Spanner_V1_ResultSetStats()}
    set {_stats = newValue}
  }
  /// Returns true if `stats` has been explicitly set.
  public var hasStats: Bool {return self._stats != nil}
  /// Clears the value of `stats`. Subsequent reads from it will return its default value.
  public mutating func clearStats() {self._stats = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _metadata: Google_Spanner_V1_ResultSetMetadata? = nil
  fileprivate var _stats: Google_Spanner_V1_ResultSetStats? = nil
}

/// Metadata about a [ResultSet][google.spanner.v1.ResultSet] or [PartialResultSet][google.spanner.v1.PartialResultSet].
public struct Google_Spanner_V1_ResultSetMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Indicates the field names and types for the rows in the result
  /// set.  For example, a SQL query like `"SELECT UserId, UserName FROM
  /// Users"` could return a `row_type` value like:
  ///
  ///     "fields": [
  ///       { "name": "UserId", "type": { "code": "INT64" } },
  ///       { "name": "UserName", "type": { "code": "STRING" } },
  ///     ]
  public var rowType: Google_Spanner_V1_StructType {
    get {return _rowType ?? Google_Spanner_V1_StructType()}
    set {_rowType = newValue}
  }
  /// Returns true if `rowType` has been explicitly set.
  public var hasRowType: Bool {return self._rowType != nil}
  /// Clears the value of `rowType`. Subsequent reads from it will return its default value.
  public mutating func clearRowType() {self._rowType = nil}

  /// If the read or SQL query began a transaction as a side-effect, the
  /// information about the new transaction is yielded here.
  public var transaction: Google_Spanner_V1_Transaction {
    get {return _transaction ?? Google_Spanner_V1_Transaction()}
    set {_transaction = newValue}
  }
  /// Returns true if `transaction` has been explicitly set.
  public var hasTransaction: Bool {return self._transaction != nil}
  /// Clears the value of `transaction`. Subsequent reads from it will return its default value.
  public mutating func clearTransaction() {self._transaction = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _rowType: Google_Spanner_V1_StructType? = nil
  fileprivate var _transaction: Google_Spanner_V1_Transaction? = nil
}

/// Additional statistics about a [ResultSet][google.spanner.v1.ResultSet] or [PartialResultSet][google.spanner.v1.PartialResultSet].
public struct Google_Spanner_V1_ResultSetStats {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// [QueryPlan][google.spanner.v1.QueryPlan] for the query associated with this result.
  public var queryPlan: Google_Spanner_V1_QueryPlan {
    get {return _queryPlan ?? Google_Spanner_V1_QueryPlan()}
    set {_queryPlan = newValue}
  }
  /// Returns true if `queryPlan` has been explicitly set.
  public var hasQueryPlan: Bool {return self._queryPlan != nil}
  /// Clears the value of `queryPlan`. Subsequent reads from it will return its default value.
  public mutating func clearQueryPlan() {self._queryPlan = nil}

  /// Aggregated statistics from the execution of the query. Only present when
  /// the query is profiled. For example, a query could return the statistics as
  /// follows:
  ///
  ///     {
  ///       "rows_returned": "3",
  ///       "elapsed_time": "1.22 secs",
  ///       "cpu_time": "1.19 secs"
  ///     }
  public var queryStats: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _queryStats ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_queryStats = newValue}
  }
  /// Returns true if `queryStats` has been explicitly set.
  public var hasQueryStats: Bool {return self._queryStats != nil}
  /// Clears the value of `queryStats`. Subsequent reads from it will return its default value.
  public mutating func clearQueryStats() {self._queryStats = nil}

  /// The number of rows modified by the DML statement.
  public var rowCount: Google_Spanner_V1_ResultSetStats.OneOf_RowCount? = nil

  /// Standard DML returns an exact count of rows that were modified.
  public var rowCountExact: Int64 {
    get {
      if case .rowCountExact(let v)? = rowCount {return v}
      return 0
    }
    set {rowCount = .rowCountExact(newValue)}
  }

  /// Partitioned DML does not offer exactly-once semantics, so it
  /// returns a lower bound of the rows modified.
  public var rowCountLowerBound: Int64 {
    get {
      if case .rowCountLowerBound(let v)? = rowCount {return v}
      return 0
    }
    set {rowCount = .rowCountLowerBound(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The number of rows modified by the DML statement.
  public enum OneOf_RowCount: Equatable {
    /// Standard DML returns an exact count of rows that were modified.
    case rowCountExact(Int64)
    /// Partitioned DML does not offer exactly-once semantics, so it
    /// returns a lower bound of the rows modified.
    case rowCountLowerBound(Int64)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Spanner_V1_ResultSetStats.OneOf_RowCount, rhs: Google_Spanner_V1_ResultSetStats.OneOf_RowCount) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.rowCountExact, .rowCountExact): return {
        guard case .rowCountExact(let l) = lhs, case .rowCountExact(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.rowCountLowerBound, .rowCountLowerBound): return {
        guard case .rowCountLowerBound(let l) = lhs, case .rowCountLowerBound(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _queryPlan: Google_Spanner_V1_QueryPlan? = nil
  fileprivate var _queryStats: SwiftProtobuf.Google_Protobuf_Struct? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.spanner.v1"

extension Google_Spanner_V1_ResultSet: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ResultSet"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "metadata"),
    2: .same(proto: "rows"),
    3: .same(proto: "stats"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._metadata) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.rows) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._stats) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._metadata {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.rows.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.rows, fieldNumber: 2)
    }
    if let v = self._stats {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Spanner_V1_ResultSet, rhs: Google_Spanner_V1_ResultSet) -> Bool {
    if lhs._metadata != rhs._metadata {return false}
    if lhs.rows != rhs.rows {return false}
    if lhs._stats != rhs._stats {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Spanner_V1_PartialResultSet: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PartialResultSet"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "metadata"),
    2: .same(proto: "values"),
    3: .standard(proto: "chunked_value"),
    4: .standard(proto: "resume_token"),
    5: .same(proto: "stats"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._metadata) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.values) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.chunkedValue) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.resumeToken) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._stats) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._metadata {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.values.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.values, fieldNumber: 2)
    }
    if self.chunkedValue != false {
      try visitor.visitSingularBoolField(value: self.chunkedValue, fieldNumber: 3)
    }
    if !self.resumeToken.isEmpty {
      try visitor.visitSingularBytesField(value: self.resumeToken, fieldNumber: 4)
    }
    if let v = self._stats {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Spanner_V1_PartialResultSet, rhs: Google_Spanner_V1_PartialResultSet) -> Bool {
    if lhs._metadata != rhs._metadata {return false}
    if lhs.values != rhs.values {return false}
    if lhs.chunkedValue != rhs.chunkedValue {return false}
    if lhs.resumeToken != rhs.resumeToken {return false}
    if lhs._stats != rhs._stats {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Spanner_V1_ResultSetMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ResultSetMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "row_type"),
    2: .same(proto: "transaction"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._rowType) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._transaction) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._rowType {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._transaction {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Spanner_V1_ResultSetMetadata, rhs: Google_Spanner_V1_ResultSetMetadata) -> Bool {
    if lhs._rowType != rhs._rowType {return false}
    if lhs._transaction != rhs._transaction {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Spanner_V1_ResultSetStats: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ResultSetStats"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "query_plan"),
    2: .standard(proto: "query_stats"),
    3: .standard(proto: "row_count_exact"),
    4: .standard(proto: "row_count_lower_bound"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._queryPlan) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._queryStats) }()
      case 3: try {
        if self.rowCount != nil {try decoder.handleConflictingOneOf()}
        var v: Int64?
        try decoder.decodeSingularInt64Field(value: &v)
        if let v = v {self.rowCount = .rowCountExact(v)}
      }()
      case 4: try {
        if self.rowCount != nil {try decoder.handleConflictingOneOf()}
        var v: Int64?
        try decoder.decodeSingularInt64Field(value: &v)
        if let v = v {self.rowCount = .rowCountLowerBound(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._queryPlan {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._queryStats {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.rowCount {
    case .rowCountExact?: try {
      guard case .rowCountExact(let v)? = self.rowCount else { preconditionFailure() }
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 3)
    }()
    case .rowCountLowerBound?: try {
      guard case .rowCountLowerBound(let v)? = self.rowCount else { preconditionFailure() }
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 4)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Spanner_V1_ResultSetStats, rhs: Google_Spanner_V1_ResultSetStats) -> Bool {
    if lhs._queryPlan != rhs._queryPlan {return false}
    if lhs._queryStats != rhs._queryStats {return false}
    if lhs.rowCount != rhs.rowCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
