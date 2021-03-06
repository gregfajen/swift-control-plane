// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/secrets/v1beta1/resources.proto
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

/// A [Secret][google.cloud.secrets.v1beta1.Secret] is a logical secret whose value and versions can
/// be accessed.
///
/// A [Secret][google.cloud.secrets.v1beta1.Secret] is made up of zero or more [SecretVersions][google.cloud.secrets.v1beta1.SecretVersion] that
/// represent the secret data.
public struct Google_Cloud_Secrets_V1beta1_Secret {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The resource name of the [Secret][google.cloud.secrets.v1beta1.Secret] in the format `projects/*/secrets/*`.
  public var name: String = String()

  /// Required. Immutable. The replication policy of the secret data attached to the [Secret][google.cloud.secrets.v1beta1.Secret].
  ///
  /// The replication policy cannot be changed after the Secret has been created.
  public var replication: Google_Cloud_Secrets_V1beta1_Replication {
    get {return _replication ?? Google_Cloud_Secrets_V1beta1_Replication()}
    set {_replication = newValue}
  }
  /// Returns true if `replication` has been explicitly set.
  public var hasReplication: Bool {return self._replication != nil}
  /// Clears the value of `replication`. Subsequent reads from it will return its default value.
  public mutating func clearReplication() {self._replication = nil}

  /// Output only. The time at which the [Secret][google.cloud.secrets.v1beta1.Secret] was created.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// The labels assigned to this Secret.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the following PCRE regular
  /// expression: `[\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}`
  ///
  /// Label values must be between 0 and 63 characters long, have a UTF-8
  /// encoding of maximum 128 bytes, and must conform to the following PCRE
  /// regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`
  ///
  /// No more than 64 labels can be assigned to a given resource.
  public var labels: Dictionary<String,String> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _replication: Google_Cloud_Secrets_V1beta1_Replication? = nil
  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// A secret version resource in the Secret Manager API.
public struct Google_Cloud_Secrets_V1beta1_SecretVersion {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The resource name of the [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion] in the
  /// format `projects/*/secrets/*/versions/*`.
  ///
  /// [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion] IDs in a [Secret][google.cloud.secrets.v1beta1.Secret] start at 1 and
  /// are incremented for each subsequent version of the secret.
  public var name: String = String()

  /// Output only. The time at which the [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion] was created.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// Output only. The time this [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion] was destroyed.
  /// Only present if [state][google.cloud.secrets.v1beta1.SecretVersion.state] is
  /// [DESTROYED][google.cloud.secrets.v1beta1.SecretVersion.State.DESTROYED].
  public var destroyTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _destroyTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_destroyTime = newValue}
  }
  /// Returns true if `destroyTime` has been explicitly set.
  public var hasDestroyTime: Bool {return self._destroyTime != nil}
  /// Clears the value of `destroyTime`. Subsequent reads from it will return its default value.
  public mutating func clearDestroyTime() {self._destroyTime = nil}

  /// Output only. The current state of the [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion].
  public var state: Google_Cloud_Secrets_V1beta1_SecretVersion.State = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The state of a [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion], indicating if it can be accessed.
  public enum State: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Not specified. This value is unused and invalid.
    case unspecified // = 0

    /// The [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion] may be accessed.
    case enabled // = 1

    /// The [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion] may not be accessed, but the secret data
    /// is still available and can be placed back into the [ENABLED][google.cloud.secrets.v1beta1.SecretVersion.State.ENABLED]
    /// state.
    case disabled // = 2

    /// The [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion] is destroyed and the secret data is no longer
    /// stored. A version may not leave this state once entered.
    case destroyed // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .enabled
      case 2: self = .disabled
      case 3: self = .destroyed
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .enabled: return 1
      case .disabled: return 2
      case .destroyed: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _destroyTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

#if swift(>=4.2)

extension Google_Cloud_Secrets_V1beta1_SecretVersion.State: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Secrets_V1beta1_SecretVersion.State] = [
    .unspecified,
    .enabled,
    .disabled,
    .destroyed,
  ]
}

#endif  // swift(>=4.2)

/// A policy that defines the replication configuration of data.
public struct Google_Cloud_Secrets_V1beta1_Replication {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The replication policy for this secret.
  public var replication: Google_Cloud_Secrets_V1beta1_Replication.OneOf_Replication? = nil

  /// The [Secret][google.cloud.secrets.v1beta1.Secret] will automatically be replicated without any restrictions.
  public var automatic: Google_Cloud_Secrets_V1beta1_Replication.Automatic {
    get {
      if case .automatic(let v)? = replication {return v}
      return Google_Cloud_Secrets_V1beta1_Replication.Automatic()
    }
    set {replication = .automatic(newValue)}
  }

  /// The [Secret][google.cloud.secrets.v1beta1.Secret] will only be replicated into the locations specified.
  public var userManaged: Google_Cloud_Secrets_V1beta1_Replication.UserManaged {
    get {
      if case .userManaged(let v)? = replication {return v}
      return Google_Cloud_Secrets_V1beta1_Replication.UserManaged()
    }
    set {replication = .userManaged(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The replication policy for this secret.
  public enum OneOf_Replication: Equatable {
    /// The [Secret][google.cloud.secrets.v1beta1.Secret] will automatically be replicated without any restrictions.
    case automatic(Google_Cloud_Secrets_V1beta1_Replication.Automatic)
    /// The [Secret][google.cloud.secrets.v1beta1.Secret] will only be replicated into the locations specified.
    case userManaged(Google_Cloud_Secrets_V1beta1_Replication.UserManaged)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Secrets_V1beta1_Replication.OneOf_Replication, rhs: Google_Cloud_Secrets_V1beta1_Replication.OneOf_Replication) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.automatic, .automatic): return {
        guard case .automatic(let l) = lhs, case .automatic(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.userManaged, .userManaged): return {
        guard case .userManaged(let l) = lhs, case .userManaged(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  /// A replication policy that replicates the [Secret][google.cloud.secrets.v1beta1.Secret] payload without any
  /// restrictions.
  public struct Automatic {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// A replication policy that replicates the [Secret][google.cloud.secrets.v1beta1.Secret] payload into the
  /// locations specified in [Secret.replication.user_managed.replicas][]
  public struct UserManaged {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Required. The list of Replicas for this [Secret][google.cloud.secrets.v1beta1.Secret].
    ///
    /// Cannot be empty.
    public var replicas: [Google_Cloud_Secrets_V1beta1_Replication.UserManaged.Replica] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    /// Represents a Replica for this [Secret][google.cloud.secrets.v1beta1.Secret].
    public struct Replica {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      /// The canonical IDs of the location to replicate data.
      /// For example: `"us-east1"`.
      public var location: String = String()

      public var unknownFields = SwiftProtobuf.UnknownStorage()

      public init() {}
    }

    public init() {}
  }

  public init() {}
}

/// A secret payload resource in the Secret Manager API. This contains the
/// sensitive secret data that is associated with a [SecretVersion][google.cloud.secrets.v1beta1.SecretVersion].
public struct Google_Cloud_Secrets_V1beta1_SecretPayload {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The secret data. Must be no larger than 64KiB.
  public var data: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.secrets.v1beta1"

extension Google_Cloud_Secrets_V1beta1_Secret: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Secret"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "replication"),
    3: .standard(proto: "create_time"),
    4: .same(proto: "labels"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._replication) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 4: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.labels) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._replication {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.labels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.labels, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Secrets_V1beta1_Secret, rhs: Google_Cloud_Secrets_V1beta1_Secret) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._replication != rhs._replication {return false}
    if lhs._createTime != rhs._createTime {return false}
    if lhs.labels != rhs.labels {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Secrets_V1beta1_SecretVersion: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SecretVersion"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "create_time"),
    3: .standard(proto: "destroy_time"),
    4: .same(proto: "state"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._destroyTime) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._destroyTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Secrets_V1beta1_SecretVersion, rhs: Google_Cloud_Secrets_V1beta1_SecretVersion) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._createTime != rhs._createTime {return false}
    if lhs._destroyTime != rhs._destroyTime {return false}
    if lhs.state != rhs.state {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Secrets_V1beta1_SecretVersion.State: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STATE_UNSPECIFIED"),
    1: .same(proto: "ENABLED"),
    2: .same(proto: "DISABLED"),
    3: .same(proto: "DESTROYED"),
  ]
}

extension Google_Cloud_Secrets_V1beta1_Replication: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Replication"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "automatic"),
    2: .standard(proto: "user_managed"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Google_Cloud_Secrets_V1beta1_Replication.Automatic?
        if let current = self.replication {
          try decoder.handleConflictingOneOf()
          if case .automatic(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.replication = .automatic(v)}
      }()
      case 2: try {
        var v: Google_Cloud_Secrets_V1beta1_Replication.UserManaged?
        if let current = self.replication {
          try decoder.handleConflictingOneOf()
          if case .userManaged(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.replication = .userManaged(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.replication {
    case .automatic?: try {
      guard case .automatic(let v)? = self.replication else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .userManaged?: try {
      guard case .userManaged(let v)? = self.replication else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Secrets_V1beta1_Replication, rhs: Google_Cloud_Secrets_V1beta1_Replication) -> Bool {
    if lhs.replication != rhs.replication {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Secrets_V1beta1_Replication.Automatic: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Secrets_V1beta1_Replication.protoMessageName + ".Automatic"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Secrets_V1beta1_Replication.Automatic, rhs: Google_Cloud_Secrets_V1beta1_Replication.Automatic) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Secrets_V1beta1_Replication.UserManaged: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Secrets_V1beta1_Replication.protoMessageName + ".UserManaged"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "replicas"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.replicas) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.replicas.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.replicas, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Secrets_V1beta1_Replication.UserManaged, rhs: Google_Cloud_Secrets_V1beta1_Replication.UserManaged) -> Bool {
    if lhs.replicas != rhs.replicas {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Secrets_V1beta1_Replication.UserManaged.Replica: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Secrets_V1beta1_Replication.UserManaged.protoMessageName + ".Replica"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "location"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.location) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.location.isEmpty {
      try visitor.visitSingularStringField(value: self.location, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Secrets_V1beta1_Replication.UserManaged.Replica, rhs: Google_Cloud_Secrets_V1beta1_Replication.UserManaged.Replica) -> Bool {
    if lhs.location != rhs.location {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Secrets_V1beta1_SecretPayload: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SecretPayload"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.data) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Secrets_V1beta1_SecretPayload, rhs: Google_Cloud_Secrets_V1beta1_SecretPayload) -> Bool {
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
