// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: grafeas/v1/build.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2019 The Grafeas Authors. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
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

/// Note holding the version of the provider's builder and the signature of the
/// provenance message in the build details occurrence.
public struct Grafeas_V1_BuildNote {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Immutable. Version of the builder which produced this build.
  public var builderVersion: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Details of a build occurrence.
public struct Grafeas_V1_BuildOccurrence {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The actual provenance for the build.
  public var provenance: Grafeas_V1_BuildProvenance {
    get {return _provenance ?? Grafeas_V1_BuildProvenance()}
    set {_provenance = newValue}
  }
  /// Returns true if `provenance` has been explicitly set.
  public var hasProvenance: Bool {return self._provenance != nil}
  /// Clears the value of `provenance`. Subsequent reads from it will return its default value.
  public mutating func clearProvenance() {self._provenance = nil}

  /// Serialized JSON representation of the provenance, used in generating the
  /// build signature in the corresponding build note. After verifying the
  /// signature, `provenance_bytes` can be unmarshalled and compared to the
  /// provenance to confirm that it is unchanged. A base64-encoded string
  /// representation of the provenance bytes is used for the signature in order
  /// to interoperate with openssl which expects this format for signature
  /// verification.
  ///
  /// The serialized form is captured both to avoid ambiguity in how the
  /// provenance is marshalled to json as well to prevent incompatibilities with
  /// future changes.
  public var provenanceBytes: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _provenance: Grafeas_V1_BuildProvenance? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "grafeas.v1"

extension Grafeas_V1_BuildNote: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BuildNote"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "builder_version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.builderVersion) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.builderVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.builderVersion, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1_BuildNote, rhs: Grafeas_V1_BuildNote) -> Bool {
    if lhs.builderVersion != rhs.builderVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1_BuildOccurrence: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BuildOccurrence"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "provenance"),
    2: .standard(proto: "provenance_bytes"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._provenance) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.provenanceBytes) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._provenance {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.provenanceBytes.isEmpty {
      try visitor.visitSingularStringField(value: self.provenanceBytes, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1_BuildOccurrence, rhs: Grafeas_V1_BuildOccurrence) -> Bool {
    if lhs._provenance != rhs._provenance {return false}
    if lhs.provenanceBytes != rhs.provenanceBytes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
