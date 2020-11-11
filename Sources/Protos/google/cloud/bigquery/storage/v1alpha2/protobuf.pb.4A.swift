// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/bigquery/storage/v1alpha2/protobuf.proto
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

/// Protobuf schema is an API presentation the proto buffer schema.
public struct Google_Cloud_Bigquery_Storage_V1alpha2_ProtoSchema {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Descriptor for input message. The descriptor has to be self contained,
  /// including all the nested types, excepted for proto buffer well known types
  /// (https://developers.google.com/protocol-buffers/docs/reference/google.protobuf)
  /// and zetasql public protos
  /// (https://github.com/google/zetasql/tree/master/zetasql/public/proto).
  public var protoDescriptor: SwiftProtobuf.Google_Protobuf_DescriptorProto {
    get {return _protoDescriptor ?? SwiftProtobuf.Google_Protobuf_DescriptorProto()}
    set {_protoDescriptor = newValue}
  }
  /// Returns true if `protoDescriptor` has been explicitly set.
  public var hasProtoDescriptor: Bool {return self._protoDescriptor != nil}
  /// Clears the value of `protoDescriptor`. Subsequent reads from it will return its default value.
  public mutating func clearProtoDescriptor() {self._protoDescriptor = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _protoDescriptor: SwiftProtobuf.Google_Protobuf_DescriptorProto? = nil
}

/// Protobuf rows.
public struct Google_Cloud_Bigquery_Storage_V1alpha2_ProtoRows {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A sequence of rows serialized as a Protocol Buffer.
  ///
  /// See https://developers.google.com/protocol-buffers/docs/overview for more
  /// information on deserializing this field.
  public var serializedRows: [Data] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.bigquery.storage.v1alpha2"

extension Google_Cloud_Bigquery_Storage_V1alpha2_ProtoSchema: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ProtoSchema"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "proto_descriptor"),
  ]

  public var isInitialized: Bool {
    if let v = self._protoDescriptor, !v.isInitialized {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._protoDescriptor) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._protoDescriptor {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Bigquery_Storage_V1alpha2_ProtoSchema, rhs: Google_Cloud_Bigquery_Storage_V1alpha2_ProtoSchema) -> Bool {
    if lhs._protoDescriptor != rhs._protoDescriptor {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Bigquery_Storage_V1alpha2_ProtoRows: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ProtoRows"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "serialized_rows"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedBytesField(value: &self.serializedRows) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.serializedRows.isEmpty {
      try visitor.visitRepeatedBytesField(value: self.serializedRows, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Bigquery_Storage_V1alpha2_ProtoRows, rhs: Google_Cloud_Bigquery_Storage_V1alpha2_ProtoRows) -> Bool {
    if lhs.serializedRows != rhs.serializedRows {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
