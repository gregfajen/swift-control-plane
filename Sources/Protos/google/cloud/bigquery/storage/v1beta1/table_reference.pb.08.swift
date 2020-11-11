// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/bigquery/storage/v1beta1/table_reference.proto
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

/// Table reference that includes just the 3 strings needed to identify a table.
public struct Google_Cloud_Bigquery_Storage_V1beta1_TableReference {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The assigned project ID of the project.
  public var projectID: String = String()

  /// The ID of the dataset in the above project.
  public var datasetID: String = String()

  /// The ID of the table in the above dataset.
  public var tableID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// All fields in this message optional.
public struct Google_Cloud_Bigquery_Storage_V1beta1_TableModifiers {
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

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.bigquery.storage.v1beta1"

extension Google_Cloud_Bigquery_Storage_V1beta1_TableReference: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TableReference"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "project_id"),
    2: .standard(proto: "dataset_id"),
    3: .standard(proto: "table_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.datasetID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.tableID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 1)
    }
    if !self.datasetID.isEmpty {
      try visitor.visitSingularStringField(value: self.datasetID, fieldNumber: 2)
    }
    if !self.tableID.isEmpty {
      try visitor.visitSingularStringField(value: self.tableID, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Bigquery_Storage_V1beta1_TableReference, rhs: Google_Cloud_Bigquery_Storage_V1beta1_TableReference) -> Bool {
    if lhs.projectID != rhs.projectID {return false}
    if lhs.datasetID != rhs.datasetID {return false}
    if lhs.tableID != rhs.tableID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Bigquery_Storage_V1beta1_TableModifiers: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TableModifiers"
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

  public static func ==(lhs: Google_Cloud_Bigquery_Storage_V1beta1_TableModifiers, rhs: Google_Cloud_Bigquery_Storage_V1beta1_TableModifiers) -> Bool {
    if lhs._snapshotTime != rhs._snapshotTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
