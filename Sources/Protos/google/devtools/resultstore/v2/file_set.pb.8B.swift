// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/resultstore/v2/file_set.proto
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

/// This resource represents a set of Files and other (nested) FileSets.
/// A FileSet is a node in the graph, and the file_sets field represents the
/// outgoing edges. A resource may reference various nodes in the graph to
/// represent the transitive closure of all files from those nodes.
/// The FileSets must form a directed acyclic graph. The Upload API is unable to
/// enforce that the graph is acyclic at write time, and if cycles are written,
/// it may cause issues at read time.
///
/// A FileSet may be referenced by other resources in conjunction with Files. A
/// File is preferred for something that can only be ever referenced by one
/// resource, and a FileSet is preferred if it can be reference by multiple
/// resources.
public struct Google_Devtools_Resultstore_V2_FileSet {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The format of this FileSet resource name must be:
  /// invocations/${INVOCATION_ID}/fileSets/${url_encode(FILE_SET_ID)}
  public var name: String = String()

  /// The resource ID components that identify the file set. They must match the
  /// resource name after proper encoding.
  public var id: Google_Devtools_Resultstore_V2_FileSet.Id {
    get {return _id ?? Google_Devtools_Resultstore_V2_FileSet.Id()}
    set {_id = newValue}
  }
  /// Returns true if `id` has been explicitly set.
  public var hasID: Bool {return self._id != nil}
  /// Clears the value of `id`. Subsequent reads from it will return its default value.
  public mutating func clearID() {self._id = nil}

  /// List of names of other file sets that are referenced from this one.
  /// Each name must point to a file set under the same invocation. The name
  /// format must be: invocations/${INVOCATION_ID}/fileSets/${FILE_SET_ID}
  public var fileSets: [String] = []

  /// Files that are contained within this file set.
  /// The uid field in the file should be unique for the Invocation.
  public var files: [Google_Devtools_Resultstore_V2_File] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The resource ID components that identify the FileSet.
  public struct Id {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The Invocation ID.
    public var invocationID: String = String()

    /// The FileSet ID.
    public var fileSetID: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _id: Google_Devtools_Resultstore_V2_FileSet.Id? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.devtools.resultstore.v2"

extension Google_Devtools_Resultstore_V2_FileSet: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FileSet"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "id"),
    3: .standard(proto: "file_sets"),
    4: .same(proto: "files"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._id) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.fileSets) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.files) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._id {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.fileSets.isEmpty {
      try visitor.visitRepeatedStringField(value: self.fileSets, fieldNumber: 3)
    }
    if !self.files.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.files, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_FileSet, rhs: Google_Devtools_Resultstore_V2_FileSet) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._id != rhs._id {return false}
    if lhs.fileSets != rhs.fileSets {return false}
    if lhs.files != rhs.files {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Resultstore_V2_FileSet.Id: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Devtools_Resultstore_V2_FileSet.protoMessageName + ".Id"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "invocation_id"),
    2: .standard(proto: "file_set_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.invocationID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.fileSetID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.invocationID.isEmpty {
      try visitor.visitSingularStringField(value: self.invocationID, fieldNumber: 1)
    }
    if !self.fileSetID.isEmpty {
      try visitor.visitSingularStringField(value: self.fileSetID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_FileSet.Id, rhs: Google_Devtools_Resultstore_V2_FileSet.Id) -> Bool {
    if lhs.invocationID != rhs.invocationID {return false}
    if lhs.fileSetID != rhs.fileSetID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
