// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/oslogin/v1/oslogin.proto
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

/// The user profile information used for logging in to a virtual machine on
/// Google Compute Engine.
public struct Google_Cloud_Oslogin_V1_LoginProfile {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. A unique user ID.
  public var name: String = String()

  /// The list of POSIX accounts associated with the user.
  public var posixAccounts: [Google_Cloud_Oslogin_Common_PosixAccount] = []

  /// A map from SSH public key fingerprint to the associated key object.
  public var sshPublicKeys: Dictionary<String,Google_Cloud_Oslogin_Common_SshPublicKey> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A request message for deleting a POSIX account entry.
public struct Google_Cloud_Oslogin_V1_DeletePosixAccountRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. A reference to the POSIX account to update. POSIX accounts are identified
  /// by the project ID they are associated with. A reference to the POSIX
  /// account is in format `users/{user}/projects/{project}`.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A request message for deleting an SSH public key.
public struct Google_Cloud_Oslogin_V1_DeleteSshPublicKeyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The fingerprint of the public key to update. Public keys are identified by
  /// their SHA-256 fingerprint. The fingerprint of the public key is in format
  /// `users/{user}/sshPublicKeys/{fingerprint}`.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A request message for retrieving the login profile information for a user.
public struct Google_Cloud_Oslogin_V1_GetLoginProfileRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The unique ID for the user in format `users/{user}`.
  public var name: String = String()

  /// The project ID of the Google Cloud Platform project.
  public var projectID: String = String()

  /// A system ID for filtering the results of the request.
  public var systemID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A request message for retrieving an SSH public key.
public struct Google_Cloud_Oslogin_V1_GetSshPublicKeyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The fingerprint of the public key to retrieve. Public keys are identified
  /// by their SHA-256 fingerprint. The fingerprint of the public key is in
  /// format `users/{user}/sshPublicKeys/{fingerprint}`.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A request message for importing an SSH public key.
public struct Google_Cloud_Oslogin_V1_ImportSshPublicKeyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The unique ID for the user in format `users/{user}`.
  public var parent: String = String()

  /// Optional. The SSH public key and expiration time.
  public var sshPublicKey: Google_Cloud_Oslogin_Common_SshPublicKey {
    get {return _sshPublicKey ?? Google_Cloud_Oslogin_Common_SshPublicKey()}
    set {_sshPublicKey = newValue}
  }
  /// Returns true if `sshPublicKey` has been explicitly set.
  public var hasSshPublicKey: Bool {return self._sshPublicKey != nil}
  /// Clears the value of `sshPublicKey`. Subsequent reads from it will return its default value.
  public mutating func clearSshPublicKey() {self._sshPublicKey = nil}

  /// The project ID of the Google Cloud Platform project.
  public var projectID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _sshPublicKey: Google_Cloud_Oslogin_Common_SshPublicKey? = nil
}

/// A response message for importing an SSH public key.
public struct Google_Cloud_Oslogin_V1_ImportSshPublicKeyResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The login profile information for the user.
  public var loginProfile: Google_Cloud_Oslogin_V1_LoginProfile {
    get {return _loginProfile ?? Google_Cloud_Oslogin_V1_LoginProfile()}
    set {_loginProfile = newValue}
  }
  /// Returns true if `loginProfile` has been explicitly set.
  public var hasLoginProfile: Bool {return self._loginProfile != nil}
  /// Clears the value of `loginProfile`. Subsequent reads from it will return its default value.
  public mutating func clearLoginProfile() {self._loginProfile = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _loginProfile: Google_Cloud_Oslogin_V1_LoginProfile? = nil
}

/// A request message for updating an SSH public key.
public struct Google_Cloud_Oslogin_V1_UpdateSshPublicKeyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The fingerprint of the public key to update. Public keys are identified by
  /// their SHA-256 fingerprint. The fingerprint of the public key is in format
  /// `users/{user}/sshPublicKeys/{fingerprint}`.
  public var name: String = String()

  /// Required. The SSH public key and expiration time.
  public var sshPublicKey: Google_Cloud_Oslogin_Common_SshPublicKey {
    get {return _sshPublicKey ?? Google_Cloud_Oslogin_Common_SshPublicKey()}
    set {_sshPublicKey = newValue}
  }
  /// Returns true if `sshPublicKey` has been explicitly set.
  public var hasSshPublicKey: Bool {return self._sshPublicKey != nil}
  /// Clears the value of `sshPublicKey`. Subsequent reads from it will return its default value.
  public mutating func clearSshPublicKey() {self._sshPublicKey = nil}

  /// Mask to control which fields get updated. Updates all if not present.
  public var updateMask: SwiftProtobuf.Google_Protobuf_FieldMask {
    get {return _updateMask ?? SwiftProtobuf.Google_Protobuf_FieldMask()}
    set {_updateMask = newValue}
  }
  /// Returns true if `updateMask` has been explicitly set.
  public var hasUpdateMask: Bool {return self._updateMask != nil}
  /// Clears the value of `updateMask`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateMask() {self._updateMask = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _sshPublicKey: Google_Cloud_Oslogin_Common_SshPublicKey? = nil
  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.oslogin.v1"

extension Google_Cloud_Oslogin_V1_LoginProfile: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LoginProfile"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "posix_accounts"),
    3: .standard(proto: "ssh_public_keys"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.posixAccounts) }()
      case 3: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Cloud_Oslogin_Common_SshPublicKey>.self, value: &self.sshPublicKeys) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.posixAccounts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.posixAccounts, fieldNumber: 2)
    }
    if !self.sshPublicKeys.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Cloud_Oslogin_Common_SshPublicKey>.self, value: self.sshPublicKeys, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Oslogin_V1_LoginProfile, rhs: Google_Cloud_Oslogin_V1_LoginProfile) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.posixAccounts != rhs.posixAccounts {return false}
    if lhs.sshPublicKeys != rhs.sshPublicKeys {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Oslogin_V1_DeletePosixAccountRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeletePosixAccountRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Oslogin_V1_DeletePosixAccountRequest, rhs: Google_Cloud_Oslogin_V1_DeletePosixAccountRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Oslogin_V1_DeleteSshPublicKeyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteSshPublicKeyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Oslogin_V1_DeleteSshPublicKeyRequest, rhs: Google_Cloud_Oslogin_V1_DeleteSshPublicKeyRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Oslogin_V1_GetLoginProfileRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetLoginProfileRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "project_id"),
    3: .standard(proto: "system_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.systemID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 2)
    }
    if !self.systemID.isEmpty {
      try visitor.visitSingularStringField(value: self.systemID, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Oslogin_V1_GetLoginProfileRequest, rhs: Google_Cloud_Oslogin_V1_GetLoginProfileRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.projectID != rhs.projectID {return false}
    if lhs.systemID != rhs.systemID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Oslogin_V1_GetSshPublicKeyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetSshPublicKeyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Oslogin_V1_GetSshPublicKeyRequest, rhs: Google_Cloud_Oslogin_V1_GetSshPublicKeyRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Oslogin_V1_ImportSshPublicKeyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ImportSshPublicKeyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "ssh_public_key"),
    3: .standard(proto: "project_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._sshPublicKey) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if let v = self._sshPublicKey {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Oslogin_V1_ImportSshPublicKeyRequest, rhs: Google_Cloud_Oslogin_V1_ImportSshPublicKeyRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs._sshPublicKey != rhs._sshPublicKey {return false}
    if lhs.projectID != rhs.projectID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Oslogin_V1_ImportSshPublicKeyResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ImportSshPublicKeyResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "login_profile"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._loginProfile) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._loginProfile {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Oslogin_V1_ImportSshPublicKeyResponse, rhs: Google_Cloud_Oslogin_V1_ImportSshPublicKeyResponse) -> Bool {
    if lhs._loginProfile != rhs._loginProfile {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Oslogin_V1_UpdateSshPublicKeyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateSshPublicKeyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "ssh_public_key"),
    3: .standard(proto: "update_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._sshPublicKey) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._sshPublicKey {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Oslogin_V1_UpdateSshPublicKeyRequest, rhs: Google_Cloud_Oslogin_V1_UpdateSshPublicKeyRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._sshPublicKey != rhs._sshPublicKey {return false}
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
