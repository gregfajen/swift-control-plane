// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/containeranalysis/v1beta1/source/source.proto
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

/// A SourceContext is a reference to a tree of files. A SourceContext together
/// with a path point to a unique revision of a single file or directory.
public struct Grafeas_V1beta1_Source_SourceContext {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A SourceContext can refer any one of the following types of repositories.
  public var context: Grafeas_V1beta1_Source_SourceContext.OneOf_Context? = nil

  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  public var cloudRepo: Grafeas_V1beta1_Source_CloudRepoSourceContext {
    get {
      if case .cloudRepo(let v)? = context {return v}
      return Grafeas_V1beta1_Source_CloudRepoSourceContext()
    }
    set {context = .cloudRepo(newValue)}
  }

  /// A SourceContext referring to a Gerrit project.
  public var gerrit: Grafeas_V1beta1_Source_GerritSourceContext {
    get {
      if case .gerrit(let v)? = context {return v}
      return Grafeas_V1beta1_Source_GerritSourceContext()
    }
    set {context = .gerrit(newValue)}
  }

  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  public var git: Grafeas_V1beta1_Source_GitSourceContext {
    get {
      if case .git(let v)? = context {return v}
      return Grafeas_V1beta1_Source_GitSourceContext()
    }
    set {context = .git(newValue)}
  }

  /// Labels with user defined metadata.
  public var labels: Dictionary<String,String> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// A SourceContext can refer any one of the following types of repositories.
  public enum OneOf_Context: Equatable {
    /// A SourceContext referring to a revision in a Google Cloud Source Repo.
    case cloudRepo(Grafeas_V1beta1_Source_CloudRepoSourceContext)
    /// A SourceContext referring to a Gerrit project.
    case gerrit(Grafeas_V1beta1_Source_GerritSourceContext)
    /// A SourceContext referring to any third party Git repo (e.g., GitHub).
    case git(Grafeas_V1beta1_Source_GitSourceContext)

  #if !swift(>=4.1)
    public static func ==(lhs: Grafeas_V1beta1_Source_SourceContext.OneOf_Context, rhs: Grafeas_V1beta1_Source_SourceContext.OneOf_Context) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.cloudRepo, .cloudRepo): return {
        guard case .cloudRepo(let l) = lhs, case .cloudRepo(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.gerrit, .gerrit): return {
        guard case .gerrit(let l) = lhs, case .gerrit(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.git, .git): return {
        guard case .git(let l) = lhs, case .git(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// An alias to a repo revision.
public struct Grafeas_V1beta1_Source_AliasContext {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The alias kind.
  public var kind: Grafeas_V1beta1_Source_AliasContext.Kind = .unspecified

  /// The alias name.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The type of an alias.
  public enum Kind: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unknown.
    case unspecified // = 0

    /// Git tag.
    case fixed // = 1

    /// Git branch.
    case movable // = 2

    /// Used to specify non-standard aliases. For example, if a Git repo has a
    /// ref named "refs/foo/bar".
    case other // = 4
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .fixed
      case 2: self = .movable
      case 4: self = .other
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .fixed: return 1
      case .movable: return 2
      case .other: return 4
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Grafeas_V1beta1_Source_AliasContext.Kind: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1beta1_Source_AliasContext.Kind] = [
    .unspecified,
    .fixed,
    .movable,
    .other,
  ]
}

#endif  // swift(>=4.2)

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud
/// Source Repo.
public struct Grafeas_V1beta1_Source_CloudRepoSourceContext {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The ID of the repo.
  public var repoID: Grafeas_V1beta1_Source_RepoId {
    get {return _repoID ?? Grafeas_V1beta1_Source_RepoId()}
    set {_repoID = newValue}
  }
  /// Returns true if `repoID` has been explicitly set.
  public var hasRepoID: Bool {return self._repoID != nil}
  /// Clears the value of `repoID`. Subsequent reads from it will return its default value.
  public mutating func clearRepoID() {self._repoID = nil}

  /// A revision in a Cloud Repo can be identified by either its revision ID or
  /// its alias.
  public var revision: Grafeas_V1beta1_Source_CloudRepoSourceContext.OneOf_Revision? = nil

  /// A revision ID.
  public var revisionID: String {
    get {
      if case .revisionID(let v)? = revision {return v}
      return String()
    }
    set {revision = .revisionID(newValue)}
  }

  /// An alias, which may be a branch or tag.
  public var aliasContext: Grafeas_V1beta1_Source_AliasContext {
    get {
      if case .aliasContext(let v)? = revision {return v}
      return Grafeas_V1beta1_Source_AliasContext()
    }
    set {revision = .aliasContext(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// A revision in a Cloud Repo can be identified by either its revision ID or
  /// its alias.
  public enum OneOf_Revision: Equatable {
    /// A revision ID.
    case revisionID(String)
    /// An alias, which may be a branch or tag.
    case aliasContext(Grafeas_V1beta1_Source_AliasContext)

  #if !swift(>=4.1)
    public static func ==(lhs: Grafeas_V1beta1_Source_CloudRepoSourceContext.OneOf_Revision, rhs: Grafeas_V1beta1_Source_CloudRepoSourceContext.OneOf_Revision) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.revisionID, .revisionID): return {
        guard case .revisionID(let l) = lhs, case .revisionID(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.aliasContext, .aliasContext): return {
        guard case .aliasContext(let l) = lhs, case .aliasContext(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _repoID: Grafeas_V1beta1_Source_RepoId? = nil
}

/// A SourceContext referring to a Gerrit project.
public struct Grafeas_V1beta1_Source_GerritSourceContext {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The URI of a running Gerrit instance.
  public var hostUri: String = String()

  /// The full project name within the host. Projects may be nested, so
  /// "project/subproject" is a valid project name. The "repo name" is the
  /// hostURI/project.
  public var gerritProject: String = String()

  /// A revision in a Gerrit project can be identified by either its revision ID
  /// or its alias.
  public var revision: Grafeas_V1beta1_Source_GerritSourceContext.OneOf_Revision? = nil

  /// A revision (commit) ID.
  public var revisionID: String {
    get {
      if case .revisionID(let v)? = revision {return v}
      return String()
    }
    set {revision = .revisionID(newValue)}
  }

  /// An alias, which may be a branch or tag.
  public var aliasContext: Grafeas_V1beta1_Source_AliasContext {
    get {
      if case .aliasContext(let v)? = revision {return v}
      return Grafeas_V1beta1_Source_AliasContext()
    }
    set {revision = .aliasContext(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// A revision in a Gerrit project can be identified by either its revision ID
  /// or its alias.
  public enum OneOf_Revision: Equatable {
    /// A revision (commit) ID.
    case revisionID(String)
    /// An alias, which may be a branch or tag.
    case aliasContext(Grafeas_V1beta1_Source_AliasContext)

  #if !swift(>=4.1)
    public static func ==(lhs: Grafeas_V1beta1_Source_GerritSourceContext.OneOf_Revision, rhs: Grafeas_V1beta1_Source_GerritSourceContext.OneOf_Revision) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.revisionID, .revisionID): return {
        guard case .revisionID(let l) = lhs, case .revisionID(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.aliasContext, .aliasContext): return {
        guard case .aliasContext(let l) = lhs, case .aliasContext(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// A GitSourceContext denotes a particular revision in a third party Git
/// repository (e.g., GitHub).
public struct Grafeas_V1beta1_Source_GitSourceContext {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Git repository URL.
  public var url: String = String()

  /// Git commit hash.
  public var revisionID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A unique identifier for a Cloud Repo.
public struct Grafeas_V1beta1_Source_RepoId {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A cloud repo can be identified by either its project ID and repository name
  /// combination, or its globally unique identifier.
  public var id: Grafeas_V1beta1_Source_RepoId.OneOf_ID? = nil

  /// A combination of a project ID and a repo name.
  public var projectRepoID: Grafeas_V1beta1_Source_ProjectRepoId {
    get {
      if case .projectRepoID(let v)? = id {return v}
      return Grafeas_V1beta1_Source_ProjectRepoId()
    }
    set {id = .projectRepoID(newValue)}
  }

  /// A server-assigned, globally unique identifier.
  public var uid: String {
    get {
      if case .uid(let v)? = id {return v}
      return String()
    }
    set {id = .uid(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// A cloud repo can be identified by either its project ID and repository name
  /// combination, or its globally unique identifier.
  public enum OneOf_ID: Equatable {
    /// A combination of a project ID and a repo name.
    case projectRepoID(Grafeas_V1beta1_Source_ProjectRepoId)
    /// A server-assigned, globally unique identifier.
    case uid(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Grafeas_V1beta1_Source_RepoId.OneOf_ID, rhs: Grafeas_V1beta1_Source_RepoId.OneOf_ID) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.projectRepoID, .projectRepoID): return {
        guard case .projectRepoID(let l) = lhs, case .projectRepoID(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.uid, .uid): return {
        guard case .uid(let l) = lhs, case .uid(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Selects a repo using a Google Cloud Platform project ID (e.g.,
/// winged-cargo-31) and a repo name within that project.
public struct Grafeas_V1beta1_Source_ProjectRepoId {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The ID of the project.
  public var projectID: String = String()

  /// The name of the repo. Leave empty for the default repo.
  public var repoName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "grafeas.v1beta1.source"

extension Grafeas_V1beta1_Source_SourceContext: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SourceContext"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "cloud_repo"),
    2: .same(proto: "gerrit"),
    3: .same(proto: "git"),
    4: .same(proto: "labels"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Grafeas_V1beta1_Source_CloudRepoSourceContext?
        if let current = self.context {
          try decoder.handleConflictingOneOf()
          if case .cloudRepo(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.context = .cloudRepo(v)}
      }()
      case 2: try {
        var v: Grafeas_V1beta1_Source_GerritSourceContext?
        if let current = self.context {
          try decoder.handleConflictingOneOf()
          if case .gerrit(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.context = .gerrit(v)}
      }()
      case 3: try {
        var v: Grafeas_V1beta1_Source_GitSourceContext?
        if let current = self.context {
          try decoder.handleConflictingOneOf()
          if case .git(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.context = .git(v)}
      }()
      case 4: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.labels) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.context {
    case .cloudRepo?: try {
      guard case .cloudRepo(let v)? = self.context else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .gerrit?: try {
      guard case .gerrit(let v)? = self.context else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .git?: try {
      guard case .git(let v)? = self.context else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    if !self.labels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.labels, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Source_SourceContext, rhs: Grafeas_V1beta1_Source_SourceContext) -> Bool {
    if lhs.context != rhs.context {return false}
    if lhs.labels != rhs.labels {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Source_AliasContext: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AliasContext"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "kind"),
    2: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.kind) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.kind != .unspecified {
      try visitor.visitSingularEnumField(value: self.kind, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Source_AliasContext, rhs: Grafeas_V1beta1_Source_AliasContext) -> Bool {
    if lhs.kind != rhs.kind {return false}
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Source_AliasContext.Kind: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "KIND_UNSPECIFIED"),
    1: .same(proto: "FIXED"),
    2: .same(proto: "MOVABLE"),
    4: .same(proto: "OTHER"),
  ]
}

extension Grafeas_V1beta1_Source_CloudRepoSourceContext: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CloudRepoSourceContext"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "repo_id"),
    2: .standard(proto: "revision_id"),
    3: .standard(proto: "alias_context"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._repoID) }()
      case 2: try {
        if self.revision != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.revision = .revisionID(v)}
      }()
      case 3: try {
        var v: Grafeas_V1beta1_Source_AliasContext?
        if let current = self.revision {
          try decoder.handleConflictingOneOf()
          if case .aliasContext(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.revision = .aliasContext(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._repoID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.revision {
    case .revisionID?: try {
      guard case .revisionID(let v)? = self.revision else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }()
    case .aliasContext?: try {
      guard case .aliasContext(let v)? = self.revision else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Source_CloudRepoSourceContext, rhs: Grafeas_V1beta1_Source_CloudRepoSourceContext) -> Bool {
    if lhs._repoID != rhs._repoID {return false}
    if lhs.revision != rhs.revision {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Source_GerritSourceContext: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GerritSourceContext"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "host_uri"),
    2: .standard(proto: "gerrit_project"),
    3: .standard(proto: "revision_id"),
    4: .standard(proto: "alias_context"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.hostUri) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.gerritProject) }()
      case 3: try {
        if self.revision != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.revision = .revisionID(v)}
      }()
      case 4: try {
        var v: Grafeas_V1beta1_Source_AliasContext?
        if let current = self.revision {
          try decoder.handleConflictingOneOf()
          if case .aliasContext(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.revision = .aliasContext(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.hostUri.isEmpty {
      try visitor.visitSingularStringField(value: self.hostUri, fieldNumber: 1)
    }
    if !self.gerritProject.isEmpty {
      try visitor.visitSingularStringField(value: self.gerritProject, fieldNumber: 2)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.revision {
    case .revisionID?: try {
      guard case .revisionID(let v)? = self.revision else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    }()
    case .aliasContext?: try {
      guard case .aliasContext(let v)? = self.revision else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Source_GerritSourceContext, rhs: Grafeas_V1beta1_Source_GerritSourceContext) -> Bool {
    if lhs.hostUri != rhs.hostUri {return false}
    if lhs.gerritProject != rhs.gerritProject {return false}
    if lhs.revision != rhs.revision {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Source_GitSourceContext: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GitSourceContext"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "url"),
    2: .standard(proto: "revision_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.url) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.revisionID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.url.isEmpty {
      try visitor.visitSingularStringField(value: self.url, fieldNumber: 1)
    }
    if !self.revisionID.isEmpty {
      try visitor.visitSingularStringField(value: self.revisionID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Source_GitSourceContext, rhs: Grafeas_V1beta1_Source_GitSourceContext) -> Bool {
    if lhs.url != rhs.url {return false}
    if lhs.revisionID != rhs.revisionID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Source_RepoId: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RepoId"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "project_repo_id"),
    2: .same(proto: "uid"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Grafeas_V1beta1_Source_ProjectRepoId?
        if let current = self.id {
          try decoder.handleConflictingOneOf()
          if case .projectRepoID(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.id = .projectRepoID(v)}
      }()
      case 2: try {
        if self.id != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.id = .uid(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.id {
    case .projectRepoID?: try {
      guard case .projectRepoID(let v)? = self.id else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .uid?: try {
      guard case .uid(let v)? = self.id else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Source_RepoId, rhs: Grafeas_V1beta1_Source_RepoId) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Source_ProjectRepoId: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ProjectRepoId"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "project_id"),
    2: .standard(proto: "repo_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.repoName) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 1)
    }
    if !self.repoName.isEmpty {
      try visitor.visitSingularStringField(value: self.repoName, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Source_ProjectRepoId, rhs: Grafeas_V1beta1_Source_ProjectRepoId) -> Bool {
    if lhs.projectID != rhs.projectID {return false}
    if lhs.repoName != rhs.repoName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
