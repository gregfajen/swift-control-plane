// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/firestore/admin/v1/field.proto
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

/// Represents a single field in the database.
///
/// Fields are grouped by their "Collection Group", which represent all
/// collections in the database with the same id.
public struct Google_Firestore_Admin_V1_Field {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A field name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`
  ///
  /// A field path may be a simple field name, e.g. `address` or a path to fields
  /// within map_value , e.g. `address.city`,
  /// or a special field path. The only valid special field is `*`, which
  /// represents any field.
  ///
  /// Field paths may be quoted using ` (backtick). The only character that needs
  /// to be escaped within a quoted field path is the backtick character itself,
  /// escaped using a backslash. Special characters in field paths that
  /// must be quoted include: `*`, `.`,
  /// ``` (backtick), `[`, `]`, as well as any ascii symbolic characters.
  ///
  /// Examples:
  /// (Note: Comments here are written in markdown syntax, so there is an
  ///  additional layer of backticks to represent a code block)
  /// `\`address.city\`` represents a field named `address.city`, not the map key
  /// `city` in the field `address`.
  /// `\`*\`` represents a field named `*`, not any field.
  ///
  /// A special `Field` contains the default indexing settings for all fields.
  /// This field's resource name is:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields/*`
  /// Indexes defined on this `Field` will be applied to all fields which do not
  /// have their own `Field` index configuration.
  public var name: String = String()

  /// The index configuration for this field. If unset, field indexing will
  /// revert to the configuration defined by the `ancestor_field`. To
  /// explicitly remove all indexes for this field, specify an index config
  /// with an empty list of indexes.
  public var indexConfig: Google_Firestore_Admin_V1_Field.IndexConfig {
    get {return _indexConfig ?? Google_Firestore_Admin_V1_Field.IndexConfig()}
    set {_indexConfig = newValue}
  }
  /// Returns true if `indexConfig` has been explicitly set.
  public var hasIndexConfig: Bool {return self._indexConfig != nil}
  /// Clears the value of `indexConfig`. Subsequent reads from it will return its default value.
  public mutating func clearIndexConfig() {self._indexConfig = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The index configuration for this field.
  public struct IndexConfig {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The indexes supported for this field.
    public var indexes: [Google_Firestore_Admin_V1_Index] = []

    /// Output only. When true, the `Field`'s index configuration is set from the
    /// configuration specified by the `ancestor_field`.
    /// When false, the `Field`'s index configuration is defined explicitly.
    public var usesAncestorConfig: Bool = false

    /// Output only. Specifies the resource name of the `Field` from which this field's
    /// index configuration is set (when `uses_ancestor_config` is true),
    /// or from which it *would* be set if this field had no index configuration
    /// (when `uses_ancestor_config` is false).
    public var ancestorField: String = String()

    /// Output only
    /// When true, the `Field`'s index configuration is in the process of being
    /// reverted. Once complete, the index config will transition to the same
    /// state as the field specified by `ancestor_field`, at which point
    /// `uses_ancestor_config` will be `true` and `reverting` will be `false`.
    public var reverting: Bool = false

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _indexConfig: Google_Firestore_Admin_V1_Field.IndexConfig? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.firestore.admin.v1"

extension Google_Firestore_Admin_V1_Field: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Field"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "index_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._indexConfig) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._indexConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_Admin_V1_Field, rhs: Google_Firestore_Admin_V1_Field) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._indexConfig != rhs._indexConfig {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Firestore_Admin_V1_Field.IndexConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Firestore_Admin_V1_Field.protoMessageName + ".IndexConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "indexes"),
    2: .standard(proto: "uses_ancestor_config"),
    3: .standard(proto: "ancestor_field"),
    4: .same(proto: "reverting"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.indexes) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.usesAncestorConfig) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.ancestorField) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.reverting) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.indexes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.indexes, fieldNumber: 1)
    }
    if self.usesAncestorConfig != false {
      try visitor.visitSingularBoolField(value: self.usesAncestorConfig, fieldNumber: 2)
    }
    if !self.ancestorField.isEmpty {
      try visitor.visitSingularStringField(value: self.ancestorField, fieldNumber: 3)
    }
    if self.reverting != false {
      try visitor.visitSingularBoolField(value: self.reverting, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_Admin_V1_Field.IndexConfig, rhs: Google_Firestore_Admin_V1_Field.IndexConfig) -> Bool {
    if lhs.indexes != rhs.indexes {return false}
    if lhs.usesAncestorConfig != rhs.usesAncestorConfig {return false}
    if lhs.ancestorField != rhs.ancestorField {return false}
    if lhs.reverting != rhs.reverting {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
