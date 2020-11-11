// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/genomics/v1/readgroupset.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2016 Google Inc.
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

/// A read group set is a logical collection of read groups, which are
/// collections of reads produced by a sequencer. A read group set typically
/// models reads corresponding to one sample, sequenced one way, and aligned one
/// way.
///
/// * A read group set belongs to one dataset.
/// * A read group belongs to one read group set.
/// * A read belongs to one read group.
///
/// For more genomics resource definitions, see [Fundamentals of Google
/// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
public struct Google_Genomics_V1_ReadGroupSet {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The server-generated read group set ID, unique for all read group sets.
  public var id: String = String()

  /// The dataset to which this read group set belongs.
  public var datasetID: String = String()

  /// The reference set to which the reads in this read group set are aligned.
  public var referenceSetID: String = String()

  /// The read group set name. By default this will be initialized to the sample
  /// name of the sequenced data contained in this set.
  public var name: String = String()

  /// The filename of the original source file for this read group set, if any.
  public var filename: String = String()

  /// The read groups in this set. There are typically 1-10 read groups in a read
  /// group set.
  public var readGroups: [Google_Genomics_V1_ReadGroup] = []

  /// A map of additional read group set information.
  public var info: Dictionary<String,SwiftProtobuf.Google_Protobuf_ListValue> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.genomics.v1"

extension Google_Genomics_V1_ReadGroupSet: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ReadGroupSet"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "dataset_id"),
    3: .standard(proto: "reference_set_id"),
    4: .same(proto: "name"),
    5: .same(proto: "filename"),
    6: .standard(proto: "read_groups"),
    7: .same(proto: "info"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.datasetID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.referenceSetID) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.filename) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.readGroups) }()
      case 7: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.Google_Protobuf_ListValue>.self, value: &self.info) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.datasetID.isEmpty {
      try visitor.visitSingularStringField(value: self.datasetID, fieldNumber: 2)
    }
    if !self.referenceSetID.isEmpty {
      try visitor.visitSingularStringField(value: self.referenceSetID, fieldNumber: 3)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 4)
    }
    if !self.filename.isEmpty {
      try visitor.visitSingularStringField(value: self.filename, fieldNumber: 5)
    }
    if !self.readGroups.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.readGroups, fieldNumber: 6)
    }
    if !self.info.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.Google_Protobuf_ListValue>.self, value: self.info, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Genomics_V1_ReadGroupSet, rhs: Google_Genomics_V1_ReadGroupSet) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.datasetID != rhs.datasetID {return false}
    if lhs.referenceSetID != rhs.referenceSetID {return false}
    if lhs.name != rhs.name {return false}
    if lhs.filename != rhs.filename {return false}
    if lhs.readGroups != rhs.readGroups {return false}
    if lhs.info != rhs.info {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}