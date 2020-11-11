// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/resultstore/v2/upload_metadata.proto
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

/// The upload metadata for an invocation
public struct Google_Devtools_Resultstore_V2_UploadMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the upload metadata.  Its format will be:
  /// invocations/${INVOCATION_ID}/uploadMetadata
  public var name: String = String()

  /// The resume token of the last batch that was committed in the most recent
  /// batch upload.
  /// More information with resume_token could be found in
  /// resultstore_upload.proto
  public var resumeToken: String = String()

  /// Client-specific data used to resume batch upload if an error occurs and
  /// retry action is needed.
  public var uploaderState: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.devtools.resultstore.v2"

extension Google_Devtools_Resultstore_V2_UploadMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UploadMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "resume_token"),
    3: .standard(proto: "uploader_state"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.resumeToken) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.uploaderState) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.resumeToken.isEmpty {
      try visitor.visitSingularStringField(value: self.resumeToken, fieldNumber: 2)
    }
    if !self.uploaderState.isEmpty {
      try visitor.visitSingularBytesField(value: self.uploaderState, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_UploadMetadata, rhs: Google_Devtools_Resultstore_V2_UploadMetadata) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.resumeToken != rhs.resumeToken {return false}
    if lhs.uploaderState != rhs.uploaderState {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}