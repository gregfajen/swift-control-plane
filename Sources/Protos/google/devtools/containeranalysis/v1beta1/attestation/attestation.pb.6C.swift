// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/containeranalysis/v1beta1/attestation/attestation.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2018 The Grafeas Authors. All rights reserved.
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

/// An attestation wrapper with a PGP-compatible signature. This message only
/// supports `ATTACHED` signatures, where the payload that is signed is included
/// alongside the signature itself in the same file.
public struct Grafeas_V1beta1_Attestation_PgpSignedAttestation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The raw content of the signature, as output by GNU Privacy Guard
  /// (GPG) or equivalent. Since this message only supports attached signatures,
  /// the payload that was signed must be attached. While the signature format
  /// supported is dependent on the verification implementation, currently only
  /// ASCII-armored (`--armor` to gpg), non-clearsigned (`--sign` rather than
  /// `--clearsign` to gpg) are supported. Concretely, `gpg --sign --armor
  /// --output=signature.gpg payload.json` will create the signature content
  /// expected in this field in `signature.gpg` for the `payload.json`
  /// attestation payload.
  public var signature: String = String()

  /// Type (for example schema) of the attestation payload that was signed.
  /// The verifier must ensure that the provided type is one that the verifier
  /// supports, and that the attestation payload is a valid instantiation of that
  /// type (for example by validating a JSON schema).
  public var contentType: Grafeas_V1beta1_Attestation_PgpSignedAttestation.ContentType = .unspecified

  /// This field is used by verifiers to select the public key used to validate
  /// the signature. Note that the policy of the verifier ultimately determines
  /// which public keys verify a signature based on the context of the
  /// verification. There is no guarantee validation will succeed if the
  /// verifier has no key matching this ID, even if it has a key under a
  /// different ID that would verify the signature. Note that this ID should also
  /// be present in the signature content above, but that is not expected to be
  /// used by the verifier.
  public var keyID: Grafeas_V1beta1_Attestation_PgpSignedAttestation.OneOf_KeyID? = nil

  /// The cryptographic fingerprint of the key used to generate the signature,
  /// as output by, e.g. `gpg --list-keys`. This should be the version 4, full
  /// 160-bit fingerprint, expressed as a 40 character hexidecimal string. See
  /// https://tools.ietf.org/html/rfc4880#section-12.2 for details.
  /// Implementations may choose to acknowledge "LONG", "SHORT", or other
  /// abbreviated key IDs, but only the full fingerprint is guaranteed to work.
  /// In gpg, the full fingerprint can be retrieved from the `fpr` field
  /// returned when calling --list-keys with --with-colons.  For example:
  /// ```
  /// gpg --with-colons --with-fingerprint --force-v4-certs \
  ///     --list-keys attester@example.com
  /// tru::1:1513631572:0:3:1:5
  /// pub:...<SNIP>...
  /// fpr:::::::::24FF6481B76AC91E66A00AC657A93A81EF3AE6FB:
  /// ```
  /// Above, the fingerprint is `24FF6481B76AC91E66A00AC657A93A81EF3AE6FB`.
  public var pgpKeyID: String {
    get {
      if case .pgpKeyID(let v)? = keyID {return v}
      return String()
    }
    set {keyID = .pgpKeyID(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// This field is used by verifiers to select the public key used to validate
  /// the signature. Note that the policy of the verifier ultimately determines
  /// which public keys verify a signature based on the context of the
  /// verification. There is no guarantee validation will succeed if the
  /// verifier has no key matching this ID, even if it has a key under a
  /// different ID that would verify the signature. Note that this ID should also
  /// be present in the signature content above, but that is not expected to be
  /// used by the verifier.
  public enum OneOf_KeyID: Equatable {
    /// The cryptographic fingerprint of the key used to generate the signature,
    /// as output by, e.g. `gpg --list-keys`. This should be the version 4, full
    /// 160-bit fingerprint, expressed as a 40 character hexidecimal string. See
    /// https://tools.ietf.org/html/rfc4880#section-12.2 for details.
    /// Implementations may choose to acknowledge "LONG", "SHORT", or other
    /// abbreviated key IDs, but only the full fingerprint is guaranteed to work.
    /// In gpg, the full fingerprint can be retrieved from the `fpr` field
    /// returned when calling --list-keys with --with-colons.  For example:
    /// ```
    /// gpg --with-colons --with-fingerprint --force-v4-certs \
    ///     --list-keys attester@example.com
    /// tru::1:1513631572:0:3:1:5
    /// pub:...<SNIP>...
    /// fpr:::::::::24FF6481B76AC91E66A00AC657A93A81EF3AE6FB:
    /// ```
    /// Above, the fingerprint is `24FF6481B76AC91E66A00AC657A93A81EF3AE6FB`.
    case pgpKeyID(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Grafeas_V1beta1_Attestation_PgpSignedAttestation.OneOf_KeyID, rhs: Grafeas_V1beta1_Attestation_PgpSignedAttestation.OneOf_KeyID) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.pgpKeyID, .pgpKeyID): return {
        guard case .pgpKeyID(let l) = lhs, case .pgpKeyID(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  /// Type (for example schema) of the attestation payload that was signed.
  public enum ContentType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// `ContentType` is not set.
    case unspecified // = 0

    /// Atomic format attestation signature. See
    /// https://github.com/containers/image/blob/8a5d2f82a6e3263290c8e0276c3e0f64e77723e7/docs/atomic-signature.md
    /// The payload extracted from `signature` is a JSON blob conforming to the
    /// linked schema.
    case simpleSigningJson // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .simpleSigningJson
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .simpleSigningJson: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Grafeas_V1beta1_Attestation_PgpSignedAttestation.ContentType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1beta1_Attestation_PgpSignedAttestation.ContentType] = [
    .unspecified,
    .simpleSigningJson,
  ]
}

#endif  // swift(>=4.2)

/// An attestation wrapper that uses the Grafeas `Signature` message.
/// This attestation must define the `serialized_payload` that the `signatures`
/// verify and any metadata necessary to interpret that plaintext.  The
/// signatures should always be over the `serialized_payload` bytestring.
public struct Grafeas_V1beta1_Attestation_GenericSignedAttestation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Type (for example schema) of the attestation payload that was signed.
  /// The verifier must ensure that the provided type is one that the verifier
  /// supports, and that the attestation payload is a valid instantiation of that
  /// type (for example by validating a JSON schema).
  public var contentType: Grafeas_V1beta1_Attestation_GenericSignedAttestation.ContentType = .unspecified

  /// The serialized payload that is verified by one or more `signatures`.
  /// The encoding and semantic meaning of this payload must match what is set in
  /// `content_type`.
  public var serializedPayload: Data = Data()

  /// One or more signatures over `serialized_payload`.  Verifier implementations
  /// should consider this attestation message verified if at least one
  /// `signature` verifies `serialized_payload`.  See `Signature` in common.proto
  /// for more details on signature structure and verification.
  public var signatures: [Grafeas_V1beta1_Signature] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Type of the attestation plaintext that was signed.
  public enum ContentType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// `ContentType` is not set.
    case unspecified // = 0

    /// Atomic format attestation signature. See
    /// https://github.com/containers/image/blob/8a5d2f82a6e3263290c8e0276c3e0f64e77723e7/docs/atomic-signature.md
    /// The payload extracted in `plaintext` is a JSON blob conforming to the
    /// linked schema.
    case simpleSigningJson // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .simpleSigningJson
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .simpleSigningJson: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Grafeas_V1beta1_Attestation_GenericSignedAttestation.ContentType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1beta1_Attestation_GenericSignedAttestation.ContentType] = [
    .unspecified,
    .simpleSigningJson,
  ]
}

#endif  // swift(>=4.2)

/// Note kind that represents a logical attestation "role" or "authority". For
/// example, an organization might have one `Authority` for "QA" and one for
/// "build". This note is intended to act strictly as a grouping mechanism for
/// the attached occurrences (Attestations). This grouping mechanism also
/// provides a security boundary, since IAM ACLs gate the ability for a principle
/// to attach an occurrence to a given note. It also provides a single point of
/// lookup to find all attached attestation occurrences, even if they don't all
/// live in the same project.
public struct Grafeas_V1beta1_Attestation_Authority {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Hint hints at the purpose of the attestation authority.
  public var hint: Grafeas_V1beta1_Attestation_Authority.Hint {
    get {return _hint ?? Grafeas_V1beta1_Attestation_Authority.Hint()}
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

  fileprivate var _hint: Grafeas_V1beta1_Attestation_Authority.Hint? = nil
}

/// Details of an attestation occurrence.
public struct Grafeas_V1beta1_Attestation_Details {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Attestation for the resource.
  public var attestation: Grafeas_V1beta1_Attestation_Attestation {
    get {return _attestation ?? Grafeas_V1beta1_Attestation_Attestation()}
    set {_attestation = newValue}
  }
  /// Returns true if `attestation` has been explicitly set.
  public var hasAttestation: Bool {return self._attestation != nil}
  /// Clears the value of `attestation`. Subsequent reads from it will return its default value.
  public mutating func clearAttestation() {self._attestation = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _attestation: Grafeas_V1beta1_Attestation_Attestation? = nil
}

/// Occurrence that represents a single "attestation". The authenticity of an
/// attestation can be verified using the attached signature. If the verifier
/// trusts the public key of the signer, then verifying the signature is
/// sufficient to establish trust. In this circumstance, the authority to which
/// this attestation is attached is primarily useful for look-up (how to find
/// this attestation if you already know the authority and artifact to be
/// verified) and intent (which authority was this attestation intended to sign
/// for).
public struct Grafeas_V1beta1_Attestation_Attestation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The signature, generally over the `resource_url`, that verifies
  /// this attestation. The semantics of the signature veracity are ultimately
  /// determined by the verification engine.
  public var signature: Grafeas_V1beta1_Attestation_Attestation.OneOf_Signature? = nil

  /// A PGP signed attestation.
  public var pgpSignedAttestation: Grafeas_V1beta1_Attestation_PgpSignedAttestation {
    get {
      if case .pgpSignedAttestation(let v)? = signature {return v}
      return Grafeas_V1beta1_Attestation_PgpSignedAttestation()
    }
    set {signature = .pgpSignedAttestation(newValue)}
  }

  public var genericSignedAttestation: Grafeas_V1beta1_Attestation_GenericSignedAttestation {
    get {
      if case .genericSignedAttestation(let v)? = signature {return v}
      return Grafeas_V1beta1_Attestation_GenericSignedAttestation()
    }
    set {signature = .genericSignedAttestation(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Required. The signature, generally over the `resource_url`, that verifies
  /// this attestation. The semantics of the signature veracity are ultimately
  /// determined by the verification engine.
  public enum OneOf_Signature: Equatable {
    /// A PGP signed attestation.
    case pgpSignedAttestation(Grafeas_V1beta1_Attestation_PgpSignedAttestation)
    case genericSignedAttestation(Grafeas_V1beta1_Attestation_GenericSignedAttestation)

  #if !swift(>=4.1)
    public static func ==(lhs: Grafeas_V1beta1_Attestation_Attestation.OneOf_Signature, rhs: Grafeas_V1beta1_Attestation_Attestation.OneOf_Signature) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.pgpSignedAttestation, .pgpSignedAttestation): return {
        guard case .pgpSignedAttestation(let l) = lhs, case .pgpSignedAttestation(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.genericSignedAttestation, .genericSignedAttestation): return {
        guard case .genericSignedAttestation(let l) = lhs, case .genericSignedAttestation(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "grafeas.v1beta1.attestation"

extension Grafeas_V1beta1_Attestation_PgpSignedAttestation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PgpSignedAttestation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "signature"),
    3: .standard(proto: "content_type"),
    2: .standard(proto: "pgp_key_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.signature) }()
      case 2: try {
        if self.keyID != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.keyID = .pgpKeyID(v)}
      }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.contentType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.signature.isEmpty {
      try visitor.visitSingularStringField(value: self.signature, fieldNumber: 1)
    }
    if case .pgpKeyID(let v)? = self.keyID {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
    if self.contentType != .unspecified {
      try visitor.visitSingularEnumField(value: self.contentType, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Attestation_PgpSignedAttestation, rhs: Grafeas_V1beta1_Attestation_PgpSignedAttestation) -> Bool {
    if lhs.signature != rhs.signature {return false}
    if lhs.contentType != rhs.contentType {return false}
    if lhs.keyID != rhs.keyID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Attestation_PgpSignedAttestation.ContentType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CONTENT_TYPE_UNSPECIFIED"),
    1: .same(proto: "SIMPLE_SIGNING_JSON"),
  ]
}

extension Grafeas_V1beta1_Attestation_GenericSignedAttestation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GenericSignedAttestation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "content_type"),
    2: .standard(proto: "serialized_payload"),
    3: .same(proto: "signatures"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.contentType) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.serializedPayload) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.signatures) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.contentType != .unspecified {
      try visitor.visitSingularEnumField(value: self.contentType, fieldNumber: 1)
    }
    if !self.serializedPayload.isEmpty {
      try visitor.visitSingularBytesField(value: self.serializedPayload, fieldNumber: 2)
    }
    if !self.signatures.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.signatures, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Attestation_GenericSignedAttestation, rhs: Grafeas_V1beta1_Attestation_GenericSignedAttestation) -> Bool {
    if lhs.contentType != rhs.contentType {return false}
    if lhs.serializedPayload != rhs.serializedPayload {return false}
    if lhs.signatures != rhs.signatures {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Attestation_GenericSignedAttestation.ContentType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CONTENT_TYPE_UNSPECIFIED"),
    1: .same(proto: "SIMPLE_SIGNING_JSON"),
  ]
}

extension Grafeas_V1beta1_Attestation_Authority: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Authority"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hint"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._hint) }()
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

  public static func ==(lhs: Grafeas_V1beta1_Attestation_Authority, rhs: Grafeas_V1beta1_Attestation_Authority) -> Bool {
    if lhs._hint != rhs._hint {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Attestation_Authority.Hint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Grafeas_V1beta1_Attestation_Authority.protoMessageName + ".Hint"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "human_readable_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.humanReadableName) }()
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

  public static func ==(lhs: Grafeas_V1beta1_Attestation_Authority.Hint, rhs: Grafeas_V1beta1_Attestation_Authority.Hint) -> Bool {
    if lhs.humanReadableName != rhs.humanReadableName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Attestation_Details: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Details"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "attestation"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._attestation) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._attestation {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Attestation_Details, rhs: Grafeas_V1beta1_Attestation_Details) -> Bool {
    if lhs._attestation != rhs._attestation {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Attestation_Attestation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Attestation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "pgp_signed_attestation"),
    2: .standard(proto: "generic_signed_attestation"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Grafeas_V1beta1_Attestation_PgpSignedAttestation?
        if let current = self.signature {
          try decoder.handleConflictingOneOf()
          if case .pgpSignedAttestation(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.signature = .pgpSignedAttestation(v)}
      }()
      case 2: try {
        var v: Grafeas_V1beta1_Attestation_GenericSignedAttestation?
        if let current = self.signature {
          try decoder.handleConflictingOneOf()
          if case .genericSignedAttestation(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.signature = .genericSignedAttestation(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.signature {
    case .pgpSignedAttestation?: try {
      guard case .pgpSignedAttestation(let v)? = self.signature else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .genericSignedAttestation?: try {
      guard case .genericSignedAttestation(let v)? = self.signature else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Attestation_Attestation, rhs: Grafeas_V1beta1_Attestation_Attestation) -> Bool {
    if lhs.signature != rhs.signature {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}