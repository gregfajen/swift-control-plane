// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/datacatalog/v1/table_spec.proto
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

/// Table source type.
public enum Google_Cloud_Datacatalog_V1_TableSourceType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Default unknown type.
  case unspecified // = 0

  /// Table view.
  case bigqueryView // = 2

  /// BigQuery native table.
  case bigqueryTable // = 5
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 2: self = .bigqueryView
    case 5: self = .bigqueryTable
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .bigqueryView: return 2
    case .bigqueryTable: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Cloud_Datacatalog_V1_TableSourceType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Datacatalog_V1_TableSourceType] = [
    .unspecified,
    .bigqueryView,
    .bigqueryTable,
  ]
}

#endif  // swift(>=4.2)

/// Describes a BigQuery table.
public struct Google_Cloud_Datacatalog_V1_BigQueryTableSpec {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The table source type.
  public var tableSourceType: Google_Cloud_Datacatalog_V1_TableSourceType = .unspecified

  /// Output only.
  public var typeSpec: Google_Cloud_Datacatalog_V1_BigQueryTableSpec.OneOf_TypeSpec? = nil

  /// Table view specification. This field should only be populated if
  /// `table_source_type` is `BIGQUERY_VIEW`.
  public var viewSpec: Google_Cloud_Datacatalog_V1_ViewSpec {
    get {
      if case .viewSpec(let v)? = typeSpec {return v}
      return Google_Cloud_Datacatalog_V1_ViewSpec()
    }
    set {typeSpec = .viewSpec(newValue)}
  }

  /// Spec of a BigQuery table. This field should only be populated if
  /// `table_source_type` is `BIGQUERY_TABLE`.
  public var tableSpec: Google_Cloud_Datacatalog_V1_TableSpec {
    get {
      if case .tableSpec(let v)? = typeSpec {return v}
      return Google_Cloud_Datacatalog_V1_TableSpec()
    }
    set {typeSpec = .tableSpec(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Output only.
  public enum OneOf_TypeSpec: Equatable {
    /// Table view specification. This field should only be populated if
    /// `table_source_type` is `BIGQUERY_VIEW`.
    case viewSpec(Google_Cloud_Datacatalog_V1_ViewSpec)
    /// Spec of a BigQuery table. This field should only be populated if
    /// `table_source_type` is `BIGQUERY_TABLE`.
    case tableSpec(Google_Cloud_Datacatalog_V1_TableSpec)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Datacatalog_V1_BigQueryTableSpec.OneOf_TypeSpec, rhs: Google_Cloud_Datacatalog_V1_BigQueryTableSpec.OneOf_TypeSpec) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.viewSpec, .viewSpec): return {
        guard case .viewSpec(let l) = lhs, case .viewSpec(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.tableSpec, .tableSpec): return {
        guard case .tableSpec(let l) = lhs, case .tableSpec(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Table view specification.
public struct Google_Cloud_Datacatalog_V1_ViewSpec {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The query that defines the table view.
  public var viewQuery: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Normal BigQuery table spec.
public struct Google_Cloud_Datacatalog_V1_TableSpec {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. If the table is a dated shard, i.e., with name pattern `[prefix]YYYYMMDD`,
  /// `grouped_entry` is the Data Catalog resource name of the date sharded
  /// grouped entry, for example,
  /// `projects/{project_id}/locations/{location}/entrygroups/{entry_group_id}/entries/{entry_id}`.
  /// Otherwise, `grouped_entry` is empty.
  public var groupedEntry: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Spec for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`.
/// Context:
/// https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding
public struct Google_Cloud_Datacatalog_V1_BigQueryDateShardedSpec {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The Data Catalog resource name of the dataset entry the current table
  /// belongs to, for example,
  /// `projects/{project_id}/locations/{location}/entrygroups/{entry_group_id}/entries/{entry_id}`.
  public var dataset: String = String()

  /// Output only. The table name prefix of the shards. The name of any given shard is
  /// `[table_prefix]YYYYMMDD`, for example, for shard `MyTable20180101`, the
  /// `table_prefix` is `MyTable`.
  public var tablePrefix: String = String()

  /// Output only. Total number of shards.
  public var shardCount: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.datacatalog.v1"

extension Google_Cloud_Datacatalog_V1_TableSourceType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TABLE_SOURCE_TYPE_UNSPECIFIED"),
    2: .same(proto: "BIGQUERY_VIEW"),
    5: .same(proto: "BIGQUERY_TABLE"),
  ]
}

extension Google_Cloud_Datacatalog_V1_BigQueryTableSpec: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BigQueryTableSpec"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "table_source_type"),
    2: .standard(proto: "view_spec"),
    3: .standard(proto: "table_spec"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.tableSourceType) }()
      case 2: try {
        var v: Google_Cloud_Datacatalog_V1_ViewSpec?
        if let current = self.typeSpec {
          try decoder.handleConflictingOneOf()
          if case .viewSpec(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.typeSpec = .viewSpec(v)}
      }()
      case 3: try {
        var v: Google_Cloud_Datacatalog_V1_TableSpec?
        if let current = self.typeSpec {
          try decoder.handleConflictingOneOf()
          if case .tableSpec(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.typeSpec = .tableSpec(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.tableSourceType != .unspecified {
      try visitor.visitSingularEnumField(value: self.tableSourceType, fieldNumber: 1)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.typeSpec {
    case .viewSpec?: try {
      guard case .viewSpec(let v)? = self.typeSpec else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .tableSpec?: try {
      guard case .tableSpec(let v)? = self.typeSpec else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Datacatalog_V1_BigQueryTableSpec, rhs: Google_Cloud_Datacatalog_V1_BigQueryTableSpec) -> Bool {
    if lhs.tableSourceType != rhs.tableSourceType {return false}
    if lhs.typeSpec != rhs.typeSpec {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Datacatalog_V1_ViewSpec: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ViewSpec"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "view_query"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.viewQuery) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.viewQuery.isEmpty {
      try visitor.visitSingularStringField(value: self.viewQuery, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Datacatalog_V1_ViewSpec, rhs: Google_Cloud_Datacatalog_V1_ViewSpec) -> Bool {
    if lhs.viewQuery != rhs.viewQuery {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Datacatalog_V1_TableSpec: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TableSpec"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "grouped_entry"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.groupedEntry) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.groupedEntry.isEmpty {
      try visitor.visitSingularStringField(value: self.groupedEntry, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Datacatalog_V1_TableSpec, rhs: Google_Cloud_Datacatalog_V1_TableSpec) -> Bool {
    if lhs.groupedEntry != rhs.groupedEntry {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Datacatalog_V1_BigQueryDateShardedSpec: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BigQueryDateShardedSpec"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "dataset"),
    2: .standard(proto: "table_prefix"),
    3: .standard(proto: "shard_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.dataset) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.tablePrefix) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.shardCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.dataset.isEmpty {
      try visitor.visitSingularStringField(value: self.dataset, fieldNumber: 1)
    }
    if !self.tablePrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.tablePrefix, fieldNumber: 2)
    }
    if self.shardCount != 0 {
      try visitor.visitSingularInt64Field(value: self.shardCount, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Datacatalog_V1_BigQueryDateShardedSpec, rhs: Google_Cloud_Datacatalog_V1_BigQueryDateShardedSpec) -> Bool {
    if lhs.dataset != rhs.dataset {return false}
    if lhs.tablePrefix != rhs.tablePrefix {return false}
    if lhs.shardCount != rhs.shardCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
