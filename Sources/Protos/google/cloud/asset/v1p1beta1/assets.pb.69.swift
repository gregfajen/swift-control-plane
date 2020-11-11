// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/asset/v1p1beta1/assets.proto
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

/// The standard metadata of a cloud resource.
public struct Google_Cloud_Asset_V1p1beta1_StandardResourceMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The full resource name. For example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
  /// See [Resource
  /// Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information.
  public var name: String = String()

  /// The type of this resource.
  /// For example: "compute.googleapis.com/Disk".
  public var assetType: String = String()

  /// The project that this resource belongs to, in the form of
  /// `projects/{project_number}`.
  public var project: String = String()

  /// The display name of this resource.
  public var displayName: String = String()

  /// One or more paragraphs of text description of this resource. Maximum length
  /// could be up to 1M bytes.
  public var description_p: String = String()

  /// Additional searchable attributes of this resource.
  /// Informational only. The exact set of attributes is subject to change.
  /// For example: project id, DNS name etc.
  public var additionalAttributes: [String] = []

  /// Location can be "global", regional like "us-east1", or zonal like
  /// "us-west1-b".
  public var location: String = String()

  /// Labels associated with this resource. See [Labelling and grouping GCP
  /// resources](https://cloud.google.com/blog/products/gcp/labelling-and-grouping-your-google-cloud-platform-resources)
  /// for more information.
  public var labels: Dictionary<String,String> = [:]

  /// Network tags associated with this resource. Like labels, network tags are a
  /// type of annotations used to group GCP resources. See [Labelling GCP
  /// resources](lhttps://cloud.google.com/blog/products/gcp/labelling-and-grouping-your-google-cloud-platform-resources)
  /// for more information.
  public var networkTags: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The result for a IAM Policy search.
public struct Google_Cloud_Asset_V1p1beta1_IamPolicySearchResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The [full resource
  /// name](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// of the resource associated with this IAM policy.
  public var resource: String = String()

  /// The project that the associated GCP resource belongs to, in the form of
  /// `projects/{project_number}`. If an IAM policy is set on a resource (like VM
  /// instance, Cloud Storage bucket), the project field will indicate the
  /// project that contains the resource. If an IAM policy is set on a folder or
  /// orgnization, the project field will be empty.
  public var project: String = String()

  /// The IAM policy directly set on the given resource. Note that the original
  /// IAM policy can contain multiple bindings. This only contains the bindings
  /// that match the given query. For queries that don't contain a constrain on
  /// policies (e.g. an empty query), this contains all the bindings.
  public var policy: Google_Iam_V1_Policy {
    get {return _policy ?? Google_Iam_V1_Policy()}
    set {_policy = newValue}
  }
  /// Returns true if `policy` has been explicitly set.
  public var hasPolicy: Bool {return self._policy != nil}
  /// Clears the value of `policy`. Subsequent reads from it will return its default value.
  public mutating func clearPolicy() {self._policy = nil}

  /// Explanation about the IAM policy search result. It contains additional
  /// information to explain why the search result matches the query.
  public var explanation: Google_Cloud_Asset_V1p1beta1_IamPolicySearchResult.Explanation {
    get {return _explanation ?? Google_Cloud_Asset_V1p1beta1_IamPolicySearchResult.Explanation()}
    set {_explanation = newValue}
  }
  /// Returns true if `explanation` has been explicitly set.
  public var hasExplanation: Bool {return self._explanation != nil}
  /// Clears the value of `explanation`. Subsequent reads from it will return its default value.
  public mutating func clearExplanation() {self._explanation = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Explanation about the IAM policy search result.
  public struct Explanation {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The map from roles to their included permission matching the permission
    /// query (e.g. containing `policy.role.permissions:`). A sample role string:
    /// "roles/compute.instanceAdmin". The roles can also be found in the
    /// returned `policy` bindings. Note that the map is populated only if
    /// requesting with a permission query.
    public var matchedPermissions: Dictionary<String,Google_Cloud_Asset_V1p1beta1_Permissions> = [:]

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _policy: Google_Iam_V1_Policy? = nil
  fileprivate var _explanation: Google_Cloud_Asset_V1p1beta1_IamPolicySearchResult.Explanation? = nil
}

/// IAM permissions
public struct Google_Cloud_Asset_V1p1beta1_Permissions {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A list of permissions. A sample permission string: "compute.disk.get".
  public var permissions: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.asset.v1p1beta1"

extension Google_Cloud_Asset_V1p1beta1_StandardResourceMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StandardResourceMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "asset_type"),
    3: .same(proto: "project"),
    4: .standard(proto: "display_name"),
    5: .same(proto: "description"),
    10: .standard(proto: "additional_attributes"),
    11: .same(proto: "location"),
    12: .same(proto: "labels"),
    13: .standard(proto: "network_tags"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.assetType) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.project) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.displayName) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 10: try { try decoder.decodeRepeatedStringField(value: &self.additionalAttributes) }()
      case 11: try { try decoder.decodeSingularStringField(value: &self.location) }()
      case 12: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.labels) }()
      case 13: try { try decoder.decodeRepeatedStringField(value: &self.networkTags) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.assetType.isEmpty {
      try visitor.visitSingularStringField(value: self.assetType, fieldNumber: 2)
    }
    if !self.project.isEmpty {
      try visitor.visitSingularStringField(value: self.project, fieldNumber: 3)
    }
    if !self.displayName.isEmpty {
      try visitor.visitSingularStringField(value: self.displayName, fieldNumber: 4)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 5)
    }
    if !self.additionalAttributes.isEmpty {
      try visitor.visitRepeatedStringField(value: self.additionalAttributes, fieldNumber: 10)
    }
    if !self.location.isEmpty {
      try visitor.visitSingularStringField(value: self.location, fieldNumber: 11)
    }
    if !self.labels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.labels, fieldNumber: 12)
    }
    if !self.networkTags.isEmpty {
      try visitor.visitRepeatedStringField(value: self.networkTags, fieldNumber: 13)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Asset_V1p1beta1_StandardResourceMetadata, rhs: Google_Cloud_Asset_V1p1beta1_StandardResourceMetadata) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.assetType != rhs.assetType {return false}
    if lhs.project != rhs.project {return false}
    if lhs.displayName != rhs.displayName {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.additionalAttributes != rhs.additionalAttributes {return false}
    if lhs.location != rhs.location {return false}
    if lhs.labels != rhs.labels {return false}
    if lhs.networkTags != rhs.networkTags {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Asset_V1p1beta1_IamPolicySearchResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".IamPolicySearchResult"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "resource"),
    3: .same(proto: "project"),
    4: .same(proto: "policy"),
    5: .same(proto: "explanation"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.resource) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.project) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._policy) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._explanation) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.resource.isEmpty {
      try visitor.visitSingularStringField(value: self.resource, fieldNumber: 1)
    }
    if !self.project.isEmpty {
      try visitor.visitSingularStringField(value: self.project, fieldNumber: 3)
    }
    if let v = self._policy {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._explanation {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Asset_V1p1beta1_IamPolicySearchResult, rhs: Google_Cloud_Asset_V1p1beta1_IamPolicySearchResult) -> Bool {
    if lhs.resource != rhs.resource {return false}
    if lhs.project != rhs.project {return false}
    if lhs._policy != rhs._policy {return false}
    if lhs._explanation != rhs._explanation {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Asset_V1p1beta1_IamPolicySearchResult.Explanation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Asset_V1p1beta1_IamPolicySearchResult.protoMessageName + ".Explanation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "matched_permissions"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Cloud_Asset_V1p1beta1_Permissions>.self, value: &self.matchedPermissions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.matchedPermissions.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Cloud_Asset_V1p1beta1_Permissions>.self, value: self.matchedPermissions, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Asset_V1p1beta1_IamPolicySearchResult.Explanation, rhs: Google_Cloud_Asset_V1p1beta1_IamPolicySearchResult.Explanation) -> Bool {
    if lhs.matchedPermissions != rhs.matchedPermissions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Asset_V1p1beta1_Permissions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Permissions"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "permissions"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.permissions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.permissions.isEmpty {
      try visitor.visitRepeatedStringField(value: self.permissions, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Asset_V1p1beta1_Permissions, rhs: Google_Cloud_Asset_V1p1beta1_Permissions) -> Bool {
    if lhs.permissions != rhs.permissions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
