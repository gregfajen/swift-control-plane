// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/spanner/v1/mutation.proto
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

/// A modification to one or more Cloud Spanner rows.  Mutations can be
/// applied to a Cloud Spanner database by sending them in a
/// [Commit][google.spanner.v1.Spanner.Commit] call.
public struct Google_Spanner_V1_Mutation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The operation to perform.
  public var operation: Google_Spanner_V1_Mutation.OneOf_Operation? = nil

  /// Insert new rows in a table. If any of the rows already exist,
  /// the write or transaction fails with error `ALREADY_EXISTS`.
  public var insert: Google_Spanner_V1_Mutation.Write {
    get {
      if case .insert(let v)? = operation {return v}
      return Google_Spanner_V1_Mutation.Write()
    }
    set {operation = .insert(newValue)}
  }

  /// Update existing rows in a table. If any of the rows does not
  /// already exist, the transaction fails with error `NOT_FOUND`.
  public var update: Google_Spanner_V1_Mutation.Write {
    get {
      if case .update(let v)? = operation {return v}
      return Google_Spanner_V1_Mutation.Write()
    }
    set {operation = .update(newValue)}
  }

  /// Like [insert][google.spanner.v1.Mutation.insert], except that if the row already exists, then
  /// its column values are overwritten with the ones provided. Any
  /// column values not explicitly written are preserved.
  ///
  /// When using [insert_or_update][google.spanner.v1.Mutation.insert_or_update], just as when using [insert][google.spanner.v1.Mutation.insert], all `NOT
  /// NULL` columns in the table must be given a value. This holds true
  /// even when the row already exists and will therefore actually be updated.
  public var insertOrUpdate: Google_Spanner_V1_Mutation.Write {
    get {
      if case .insertOrUpdate(let v)? = operation {return v}
      return Google_Spanner_V1_Mutation.Write()
    }
    set {operation = .insertOrUpdate(newValue)}
  }

  /// Like [insert][google.spanner.v1.Mutation.insert], except that if the row already exists, it is
  /// deleted, and the column values provided are inserted
  /// instead. Unlike [insert_or_update][google.spanner.v1.Mutation.insert_or_update], this means any values not
  /// explicitly written become `NULL`.
  ///
  /// In an interleaved table, if you create the child table with the
  /// `ON DELETE CASCADE` annotation, then replacing a parent row
  /// also deletes the child rows. Otherwise, you must delete the
  /// child rows before you replace the parent row.
  public var replace: Google_Spanner_V1_Mutation.Write {
    get {
      if case .replace(let v)? = operation {return v}
      return Google_Spanner_V1_Mutation.Write()
    }
    set {operation = .replace(newValue)}
  }

  /// Delete rows from a table. Succeeds whether or not the named
  /// rows were present.
  public var delete: Google_Spanner_V1_Mutation.Delete {
    get {
      if case .delete(let v)? = operation {return v}
      return Google_Spanner_V1_Mutation.Delete()
    }
    set {operation = .delete(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Required. The operation to perform.
  public enum OneOf_Operation: Equatable {
    /// Insert new rows in a table. If any of the rows already exist,
    /// the write or transaction fails with error `ALREADY_EXISTS`.
    case insert(Google_Spanner_V1_Mutation.Write)
    /// Update existing rows in a table. If any of the rows does not
    /// already exist, the transaction fails with error `NOT_FOUND`.
    case update(Google_Spanner_V1_Mutation.Write)
    /// Like [insert][google.spanner.v1.Mutation.insert], except that if the row already exists, then
    /// its column values are overwritten with the ones provided. Any
    /// column values not explicitly written are preserved.
    ///
    /// When using [insert_or_update][google.spanner.v1.Mutation.insert_or_update], just as when using [insert][google.spanner.v1.Mutation.insert], all `NOT
    /// NULL` columns in the table must be given a value. This holds true
    /// even when the row already exists and will therefore actually be updated.
    case insertOrUpdate(Google_Spanner_V1_Mutation.Write)
    /// Like [insert][google.spanner.v1.Mutation.insert], except that if the row already exists, it is
    /// deleted, and the column values provided are inserted
    /// instead. Unlike [insert_or_update][google.spanner.v1.Mutation.insert_or_update], this means any values not
    /// explicitly written become `NULL`.
    ///
    /// In an interleaved table, if you create the child table with the
    /// `ON DELETE CASCADE` annotation, then replacing a parent row
    /// also deletes the child rows. Otherwise, you must delete the
    /// child rows before you replace the parent row.
    case replace(Google_Spanner_V1_Mutation.Write)
    /// Delete rows from a table. Succeeds whether or not the named
    /// rows were present.
    case delete(Google_Spanner_V1_Mutation.Delete)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Spanner_V1_Mutation.OneOf_Operation, rhs: Google_Spanner_V1_Mutation.OneOf_Operation) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.insert, .insert): return {
        guard case .insert(let l) = lhs, case .insert(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.update, .update): return {
        guard case .update(let l) = lhs, case .update(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.insertOrUpdate, .insertOrUpdate): return {
        guard case .insertOrUpdate(let l) = lhs, case .insertOrUpdate(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.replace, .replace): return {
        guard case .replace(let l) = lhs, case .replace(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.delete, .delete): return {
        guard case .delete(let l) = lhs, case .delete(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  /// Arguments to [insert][google.spanner.v1.Mutation.insert], [update][google.spanner.v1.Mutation.update], [insert_or_update][google.spanner.v1.Mutation.insert_or_update], and
  /// [replace][google.spanner.v1.Mutation.replace] operations.
  public struct Write {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Required. The table whose rows will be written.
    public var table: String = String()

    /// The names of the columns in [table][google.spanner.v1.Mutation.Write.table] to be written.
    ///
    /// The list of columns must contain enough columns to allow
    /// Cloud Spanner to derive values for all primary key columns in the
    /// row(s) to be modified.
    public var columns: [String] = []

    /// The values to be written. `values` can contain more than one
    /// list of values. If it does, then multiple rows are written, one
    /// for each entry in `values`. Each list in `values` must have
    /// exactly as many entries as there are entries in [columns][google.spanner.v1.Mutation.Write.columns]
    /// above. Sending multiple lists is equivalent to sending multiple
    /// `Mutation`s, each containing one `values` entry and repeating
    /// [table][google.spanner.v1.Mutation.Write.table] and [columns][google.spanner.v1.Mutation.Write.columns]. Individual values in each list are
    /// encoded as described [here][google.spanner.v1.TypeCode].
    public var values: [SwiftProtobuf.Google_Protobuf_ListValue] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// Arguments to [delete][google.spanner.v1.Mutation.delete] operations.
  public struct Delete {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Required. The table whose rows will be deleted.
    public var table: String = String()

    /// Required. The primary keys of the rows within [table][google.spanner.v1.Mutation.Delete.table] to delete.  The
    /// primary keys must be specified in the order in which they appear in the
    /// `PRIMARY KEY()` clause of the table's equivalent DDL statement (the DDL
    /// statement used to create the table).
    /// Delete is idempotent. The transaction will succeed even if some or all
    /// rows do not exist.
    public var keySet: Google_Spanner_V1_KeySet {
      get {return _keySet ?? Google_Spanner_V1_KeySet()}
      set {_keySet = newValue}
    }
    /// Returns true if `keySet` has been explicitly set.
    public var hasKeySet: Bool {return self._keySet != nil}
    /// Clears the value of `keySet`. Subsequent reads from it will return its default value.
    public mutating func clearKeySet() {self._keySet = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _keySet: Google_Spanner_V1_KeySet? = nil
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.spanner.v1"

extension Google_Spanner_V1_Mutation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Mutation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "insert"),
    2: .same(proto: "update"),
    3: .standard(proto: "insert_or_update"),
    4: .same(proto: "replace"),
    5: .same(proto: "delete"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Google_Spanner_V1_Mutation.Write?
        if let current = self.operation {
          try decoder.handleConflictingOneOf()
          if case .insert(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.operation = .insert(v)}
      }()
      case 2: try {
        var v: Google_Spanner_V1_Mutation.Write?
        if let current = self.operation {
          try decoder.handleConflictingOneOf()
          if case .update(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.operation = .update(v)}
      }()
      case 3: try {
        var v: Google_Spanner_V1_Mutation.Write?
        if let current = self.operation {
          try decoder.handleConflictingOneOf()
          if case .insertOrUpdate(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.operation = .insertOrUpdate(v)}
      }()
      case 4: try {
        var v: Google_Spanner_V1_Mutation.Write?
        if let current = self.operation {
          try decoder.handleConflictingOneOf()
          if case .replace(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.operation = .replace(v)}
      }()
      case 5: try {
        var v: Google_Spanner_V1_Mutation.Delete?
        if let current = self.operation {
          try decoder.handleConflictingOneOf()
          if case .delete(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.operation = .delete(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.operation {
    case .insert?: try {
      guard case .insert(let v)? = self.operation else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .update?: try {
      guard case .update(let v)? = self.operation else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .insertOrUpdate?: try {
      guard case .insertOrUpdate(let v)? = self.operation else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case .replace?: try {
      guard case .replace(let v)? = self.operation else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case .delete?: try {
      guard case .delete(let v)? = self.operation else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Spanner_V1_Mutation, rhs: Google_Spanner_V1_Mutation) -> Bool {
    if lhs.operation != rhs.operation {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Spanner_V1_Mutation.Write: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Spanner_V1_Mutation.protoMessageName + ".Write"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "table"),
    2: .same(proto: "columns"),
    3: .same(proto: "values"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.table) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.columns) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.values) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.table.isEmpty {
      try visitor.visitSingularStringField(value: self.table, fieldNumber: 1)
    }
    if !self.columns.isEmpty {
      try visitor.visitRepeatedStringField(value: self.columns, fieldNumber: 2)
    }
    if !self.values.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.values, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Spanner_V1_Mutation.Write, rhs: Google_Spanner_V1_Mutation.Write) -> Bool {
    if lhs.table != rhs.table {return false}
    if lhs.columns != rhs.columns {return false}
    if lhs.values != rhs.values {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Spanner_V1_Mutation.Delete: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Spanner_V1_Mutation.protoMessageName + ".Delete"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "table"),
    2: .standard(proto: "key_set"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.table) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._keySet) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.table.isEmpty {
      try visitor.visitSingularStringField(value: self.table, fieldNumber: 1)
    }
    if let v = self._keySet {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Spanner_V1_Mutation.Delete, rhs: Google_Spanner_V1_Mutation.Delete) -> Bool {
    if lhs.table != rhs.table {return false}
    if lhs._keySet != rhs._keySet {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
