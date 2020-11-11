// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/artifactregistry/v1beta2/repository.proto
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

/// A Repository for storing artifacts with a specific format.
public struct Google_Devtools_Artifactregistry_V1beta2_Repository {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the repository, for example:
  /// "projects/p1/locations/us-central1/repositories/repo1".
  public var name: String = String()

  /// The format of packages that are stored in the repository.
  public var format: Google_Devtools_Artifactregistry_V1beta2_Repository.Format = .unspecified

  /// The user-provided description of the repository.
  public var description_p: String = String()

  /// Labels with user-defined metadata.
  /// This field may contain up to 64 entries. Label keys and values may be no
  /// longer than 63 characters. Label keys must begin with a lowercase letter
  /// and may only contain lowercase letters, numeric characters, underscores,
  /// and dashes.
  public var labels: Dictionary<String,String> = [:]

  /// The time when the repository was created.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// The time when the repository was last updated.
  public var updateTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updateTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updateTime = newValue}
  }
  /// Returns true if `updateTime` has been explicitly set.
  public var hasUpdateTime: Bool {return self._updateTime != nil}
  /// Clears the value of `updateTime`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateTime() {self._updateTime = nil}

  /// The Cloud KMS resource name of the customer managed encryption key that’s
  /// used to encrypt the contents of the Repository. Has the form:
  /// `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`.
  /// This value may not be changed after the Repository has been created.
  public var kmsKeyName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// A package format.
  public enum Format: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unspecified package format.
    case unspecified // = 0

    /// Docker package format.
    case docker // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .docker
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .docker: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _updateTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

#if swift(>=4.2)

extension Google_Devtools_Artifactregistry_V1beta2_Repository.Format: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Devtools_Artifactregistry_V1beta2_Repository.Format] = [
    .unspecified,
    .docker,
  ]
}

#endif  // swift(>=4.2)

/// The request to list repositories.
public struct Google_Devtools_Artifactregistry_V1beta2_ListRepositoriesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the parent resource whose repositories will be listed.
  public var parent: String = String()

  /// The maximum number of repositories to return.
  /// Maximum page size is 10,000.
  public var pageSize: Int32 = 0

  /// The next_page_token value returned from a previous list request, if any.
  public var pageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The response from listing repositories.
public struct Google_Devtools_Artifactregistry_V1beta2_ListRepositoriesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The repositories returned.
  public var repositories: [Google_Devtools_Artifactregistry_V1beta2_Repository] = []

  /// The token to retrieve the next page of repositories, or empty if there are
  /// no more repositories to return.
  public var nextPageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The request to retrieve a repository.
public struct Google_Devtools_Artifactregistry_V1beta2_GetRepositoryRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the repository to retrieve.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The request to create a new repository.
public struct Google_Devtools_Artifactregistry_V1beta2_CreateRepositoryRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the parent resource where the repository will be created.
  public var parent: String = String()

  /// The repository id to use for this repository.
  public var repositoryID: String = String()

  /// The repository to be created.
  public var repository: Google_Devtools_Artifactregistry_V1beta2_Repository {
    get {return _repository ?? Google_Devtools_Artifactregistry_V1beta2_Repository()}
    set {_repository = newValue}
  }
  /// Returns true if `repository` has been explicitly set.
  public var hasRepository: Bool {return self._repository != nil}
  /// Clears the value of `repository`. Subsequent reads from it will return its default value.
  public mutating func clearRepository() {self._repository = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _repository: Google_Devtools_Artifactregistry_V1beta2_Repository? = nil
}

/// The request to update a repository.
public struct Google_Devtools_Artifactregistry_V1beta2_UpdateRepositoryRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The repository that replaces the resource on the server.
  public var repository: Google_Devtools_Artifactregistry_V1beta2_Repository {
    get {return _repository ?? Google_Devtools_Artifactregistry_V1beta2_Repository()}
    set {_repository = newValue}
  }
  /// Returns true if `repository` has been explicitly set.
  public var hasRepository: Bool {return self._repository != nil}
  /// Clears the value of `repository`. Subsequent reads from it will return its default value.
  public mutating func clearRepository() {self._repository = nil}

  /// The update mask applies to the resource. For the `FieldMask` definition,
  /// see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
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

  fileprivate var _repository: Google_Devtools_Artifactregistry_V1beta2_Repository? = nil
  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

/// The request to delete a repository.
public struct Google_Devtools_Artifactregistry_V1beta2_DeleteRepositoryRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the repository to delete.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.devtools.artifactregistry.v1beta2"

extension Google_Devtools_Artifactregistry_V1beta2_Repository: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Repository"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "format"),
    3: .same(proto: "description"),
    4: .same(proto: "labels"),
    5: .standard(proto: "create_time"),
    6: .standard(proto: "update_time"),
    8: .standard(proto: "kms_key_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.format) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 4: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.labels) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._updateTime) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.kmsKeyName) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.format != .unspecified {
      try visitor.visitSingularEnumField(value: self.format, fieldNumber: 2)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 3)
    }
    if !self.labels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.labels, fieldNumber: 4)
    }
    if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._updateTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if !self.kmsKeyName.isEmpty {
      try visitor.visitSingularStringField(value: self.kmsKeyName, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Artifactregistry_V1beta2_Repository, rhs: Google_Devtools_Artifactregistry_V1beta2_Repository) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.format != rhs.format {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.labels != rhs.labels {return false}
    if lhs._createTime != rhs._createTime {return false}
    if lhs._updateTime != rhs._updateTime {return false}
    if lhs.kmsKeyName != rhs.kmsKeyName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Artifactregistry_V1beta2_Repository.Format: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "FORMAT_UNSPECIFIED"),
    1: .same(proto: "DOCKER"),
  ]
}

extension Google_Devtools_Artifactregistry_V1beta2_ListRepositoriesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListRepositoriesRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "page_size"),
    3: .standard(proto: "page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.pageSize) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.pageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if self.pageSize != 0 {
      try visitor.visitSingularInt32Field(value: self.pageSize, fieldNumber: 2)
    }
    if !self.pageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.pageToken, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Artifactregistry_V1beta2_ListRepositoriesRequest, rhs: Google_Devtools_Artifactregistry_V1beta2_ListRepositoriesRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Artifactregistry_V1beta2_ListRepositoriesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListRepositoriesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "repositories"),
    2: .standard(proto: "next_page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.repositories) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.repositories.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.repositories, fieldNumber: 1)
    }
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Artifactregistry_V1beta2_ListRepositoriesResponse, rhs: Google_Devtools_Artifactregistry_V1beta2_ListRepositoriesResponse) -> Bool {
    if lhs.repositories != rhs.repositories {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Artifactregistry_V1beta2_GetRepositoryRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetRepositoryRequest"
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

  public static func ==(lhs: Google_Devtools_Artifactregistry_V1beta2_GetRepositoryRequest, rhs: Google_Devtools_Artifactregistry_V1beta2_GetRepositoryRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Artifactregistry_V1beta2_CreateRepositoryRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateRepositoryRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "repository_id"),
    3: .same(proto: "repository"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.repositoryID) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._repository) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if !self.repositoryID.isEmpty {
      try visitor.visitSingularStringField(value: self.repositoryID, fieldNumber: 2)
    }
    if let v = self._repository {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Artifactregistry_V1beta2_CreateRepositoryRequest, rhs: Google_Devtools_Artifactregistry_V1beta2_CreateRepositoryRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.repositoryID != rhs.repositoryID {return false}
    if lhs._repository != rhs._repository {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Artifactregistry_V1beta2_UpdateRepositoryRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateRepositoryRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "repository"),
    2: .standard(proto: "update_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._repository) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._repository {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Artifactregistry_V1beta2_UpdateRepositoryRequest, rhs: Google_Devtools_Artifactregistry_V1beta2_UpdateRepositoryRequest) -> Bool {
    if lhs._repository != rhs._repository {return false}
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Artifactregistry_V1beta2_DeleteRepositoryRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteRepositoryRequest"
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

  public static func ==(lhs: Google_Devtools_Artifactregistry_V1beta2_DeleteRepositoryRequest, rhs: Google_Devtools_Artifactregistry_V1beta2_DeleteRepositoryRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
