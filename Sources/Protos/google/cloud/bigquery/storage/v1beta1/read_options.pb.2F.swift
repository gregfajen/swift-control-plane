// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/bigquery/storage/v1beta1/read_options.proto
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

/// Options dictating how we read a table.
public struct Google_Cloud_Bigquery_Storage_V1beta1_TableReadOptions {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional. Names of the fields in the table that should be read. If empty,
  /// all fields will be read. If the specified field is a nested field, all the
  /// sub-fields in the field will be selected. The output field order is
  /// unrelated to the order of fields in selected_fields.
  public var selectedFields: [String] = []

  /// Optional. SQL text filtering statement, similar to a WHERE clause in
  /// a query. Aggregates are not supported.
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

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.bigquery.storage.v1beta1"

extension Google_Cloud_Bigquery_Storage_V1beta1_TableReadOptions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TableReadOptions"
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

  public static func ==(lhs: Google_Cloud_Bigquery_Storage_V1beta1_TableReadOptions, rhs: Google_Cloud_Bigquery_Storage_V1beta1_TableReadOptions) -> Bool {
    if lhs.selectedFields != rhs.selectedFields {return false}
    if lhs.rowRestriction != rhs.rowRestriction {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
