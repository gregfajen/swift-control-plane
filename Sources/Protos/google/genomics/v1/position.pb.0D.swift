// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/genomics/v1/position.proto
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

/// An abstraction for referring to a genomic position, in relation to some
/// already known reference. For now, represents a genomic position as a
/// reference name, a base number on that reference (0-based), and a
/// determination of forward or reverse strand.
public struct Google_Genomics_V1_Position {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the reference in whatever reference set is being used.
  public var referenceName: String = String()

  /// The 0-based offset from the start of the forward strand for that reference.
  public var position: Int64 = 0

  /// Whether this position is on the reverse strand, as opposed to the forward
  /// strand.
  public var reverseStrand: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.genomics.v1"

extension Google_Genomics_V1_Position: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Position"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "reference_name"),
    2: .same(proto: "position"),
    3: .standard(proto: "reverse_strand"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.referenceName) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.position) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.reverseStrand) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.referenceName.isEmpty {
      try visitor.visitSingularStringField(value: self.referenceName, fieldNumber: 1)
    }
    if self.position != 0 {
      try visitor.visitSingularInt64Field(value: self.position, fieldNumber: 2)
    }
    if self.reverseStrand != false {
      try visitor.visitSingularBoolField(value: self.reverseStrand, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Genomics_V1_Position, rhs: Google_Genomics_V1_Position) -> Bool {
    if lhs.referenceName != rhs.referenceName {return false}
    if lhs.position != rhs.position {return false}
    if lhs.reverseStrand != rhs.reverseStrand {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
