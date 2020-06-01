// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: grafeas/v1/attestation.proto
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

/// Note kind that represents a logical attestation "role" or "authority". For
/// example, an organization might have one `Authority` for "QA" and one for
/// "build". This note is intended to act strictly as a grouping mechanism for
/// the attached occurrences (Attestations). This grouping mechanism also
/// provides a security boundary, since IAM ACLs gate the ability for a principle
/// to attach an occurrence to a given note. It also provides a single point of
/// lookup to find all attached attestation occurrences, even if they don't all
/// live in the same project.
public struct Grafeas_V1_AttestationNote {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Hint hints at the purpose of the attestation authority.
  public var hint: Grafeas_V1_AttestationNote.Hint {
    get {return _hint ?? Grafeas_V1_AttestationNote.Hint()}
    set {_hint = newValue}
  }
  /// Returns true if `hint` has been explicitly set.
  public var hasHint: Bool {return self._hint != nil}
  /// Clears the value of `hint`. Subsequent reads from it will return its default value.
  public mutating func clearHint() {self._hint = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// This submessage provides human-readable hints about the purpose of the
  /// authority. Because the name of a note acts as its resource reference, it is
  /// important to disambiguate the canonical name of the Note (which might be a
  /// UUID for security purposes) from "readable" names more suitable for debug
  /// output. Note that these hints should not be used to look up authorities in
  /// security sensitive contexts, such as when looking up attestations to
  /// verify.
  public struct Hint {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Required. The human readable name of this attestation authority, for
    /// example "qa".
    public var humanReadableName: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _hint: Grafeas_V1_AttestationNote.Hint? = nil
}

/// Occurrence that represents a single "attestation". The authenticity of an
/// attestation can be verified using the attached signature. If the verifier
/// trusts the public key of the signer, then verifying the signature is
/// sufficient to establish trust. In this circumstance, the authority to which
/// this attestation is attached is primarily useful for lookup (how to find
/// this attestation if you already know the authority and artifact to be
/// verified) and intent (for which authority this attestation was intended to
/// sign.
public struct Grafeas_V1_AttestationOccurrence {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The serialized payload that is verified by one or more
  /// `signatures`.
  public var serializedPayload: Data = SwiftProtobuf.Internal.emptyData

  /// One or more signatures over `serialized_payload`.  Verifier implementations
  /// should consider this attestation message verified if at least one
  /// `signature` verifies `serialized_payload`.  See `Signature` in common.proto
  /// for more details on signature structure and verification.
  public var signatures: [Grafeas_V1_Signature] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "grafeas.v1"

extension Grafeas_V1_AttestationNote: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AttestationNote"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hint"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._hint)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._hint {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1_AttestationNote, rhs: Grafeas_V1_AttestationNote) -> Bool {
    if lhs._hint != rhs._hint {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1_AttestationNote.Hint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Grafeas_V1_AttestationNote.protoMessageName + ".Hint"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "human_readable_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.humanReadableName)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.humanReadableName.isEmpty {
      try visitor.visitSingularStringField(value: self.humanReadableName, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1_AttestationNote.Hint, rhs: Grafeas_V1_AttestationNote.Hint) -> Bool {
    if lhs.humanReadableName != rhs.humanReadableName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1_AttestationOccurrence: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AttestationOccurrence"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "serialized_payload"),
    2: .same(proto: "signatures"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.serializedPayload)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.signatures)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.serializedPayload.isEmpty {
      try visitor.visitSingularBytesField(value: self.serializedPayload, fieldNumber: 1)
    }
    if !self.signatures.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.signatures, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1_AttestationOccurrence, rhs: Grafeas_V1_AttestationOccurrence) -> Bool {
    if lhs.serializedPayload != rhs.serializedPayload {return false}
    if lhs.signatures != rhs.signatures {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
