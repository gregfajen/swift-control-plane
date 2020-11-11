// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/asset/v1beta1/assets.proto
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

/// Temporal asset. In addition to the asset, the temporal asset includes the
/// status of the asset and valid from and to time of it.
public struct Google_Cloud_Asset_V1beta1_TemporalAsset {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The time window when the asset data and state was observed.
  public var window: Google_Cloud_Asset_V1beta1_TimeWindow {
    get {return _window ?? Google_Cloud_Asset_V1beta1_TimeWindow()}
    set {_window = newValue}
  }
  /// Returns true if `window` has been explicitly set.
  public var hasWindow: Bool {return self._window != nil}
  /// Clears the value of `window`. Subsequent reads from it will return its default value.
  public mutating func clearWindow() {self._window = nil}

  /// If the asset is deleted or not.
  public var deleted: Bool = false

  /// Asset.
  public var asset: Google_Cloud_Asset_V1beta1_Asset {
    get {return _asset ?? Google_Cloud_Asset_V1beta1_Asset()}
    set {_asset = newValue}
  }
  /// Returns true if `asset` has been explicitly set.
  public var hasAsset: Bool {return self._asset != nil}
  /// Clears the value of `asset`. Subsequent reads from it will return its default value.
  public mutating func clearAsset() {self._asset = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _window: Google_Cloud_Asset_V1beta1_TimeWindow? = nil
  fileprivate var _asset: Google_Cloud_Asset_V1beta1_Asset? = nil
}

/// A time window of (start_time, end_time].
public struct Google_Cloud_Asset_V1beta1_TimeWindow {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Start time of the time window (exclusive).
  public var startTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _startTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_startTime = newValue}
  }
  /// Returns true if `startTime` has been explicitly set.
  public var hasStartTime: Bool {return self._startTime != nil}
  /// Clears the value of `startTime`. Subsequent reads from it will return its default value.
  public mutating func clearStartTime() {self._startTime = nil}

  /// End time of the time window (inclusive).
  /// Current timestamp if not specified.
  public var endTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _endTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_endTime = newValue}
  }
  /// Returns true if `endTime` has been explicitly set.
  public var hasEndTime: Bool {return self._endTime != nil}
  /// Clears the value of `endTime`. Subsequent reads from it will return its default value.
  public mutating func clearEndTime() {self._endTime = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _startTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _endTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// Cloud asset. This includes all Google Cloud Platform resources,
/// Cloud IAM policies, and other non-GCP assets.
public struct Google_Cloud_Asset_V1beta1_Asset {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The full name of the asset. For example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
  /// See [Resource
  /// Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information.
  public var name: String = String()

  /// Type of the asset. Example: "google.compute.Disk".
  public var assetType: String = String()

  /// Representation of the resource.
  public var resource: Google_Cloud_Asset_V1beta1_Resource {
    get {return _resource ?? Google_Cloud_Asset_V1beta1_Resource()}
    set {_resource = newValue}
  }
  /// Returns true if `resource` has been explicitly set.
  public var hasResource: Bool {return self._resource != nil}
  /// Clears the value of `resource`. Subsequent reads from it will return its default value.
  public mutating func clearResource() {self._resource = nil}

  /// Representation of the actual Cloud IAM policy set on a cloud resource. For
  /// each resource, there must be at most one Cloud IAM policy set on it.
  public var iamPolicy: Google_Iam_V1_Policy {
    get {return _iamPolicy ?? Google_Iam_V1_Policy()}
    set {_iamPolicy = newValue}
  }
  /// Returns true if `iamPolicy` has been explicitly set.
  public var hasIamPolicy: Bool {return self._iamPolicy != nil}
  /// Clears the value of `iamPolicy`. Subsequent reads from it will return its default value.
  public mutating func clearIamPolicy() {self._iamPolicy = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _resource: Google_Cloud_Asset_V1beta1_Resource? = nil
  fileprivate var _iamPolicy: Google_Iam_V1_Policy? = nil
}

/// Representation of a cloud resource.
public struct Google_Cloud_Asset_V1beta1_Resource {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The API version. Example: "v1".
  public var version: String = String()

  /// The URL of the discovery document containing the resource's JSON schema.
  /// For example:
  /// `"https://www.googleapis.com/discovery/v1/apis/compute/v1/rest"`.
  /// It will be left unspecified for resources without a discovery-based API,
  /// such as Cloud Bigtable.
  public var discoveryDocumentUri: String = String()

  /// The JSON schema name listed in the discovery document.
  /// Example: "Project". It will be left unspecified for resources (such as
  /// Cloud Bigtable) without a discovery-based API.
  public var discoveryName: String = String()

  /// The REST URL for accessing the resource. An HTTP GET operation using this
  /// URL returns the resource itself.
  /// Example:
  /// `https://cloudresourcemanager.googleapis.com/v1/projects/my-project-123`.
  /// It will be left unspecified for resources without a REST API.
  public var resourceURL: String = String()

  /// The full name of the immediate parent of this resource. See
  /// [Resource
  /// Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information.
  ///
  /// For GCP assets, it is the parent resource defined in the [Cloud IAM policy
  /// hierarchy](https://cloud.google.com/iam/docs/overview#policy_hierarchy).
  /// For example:
  /// `"//cloudresourcemanager.googleapis.com/projects/my_project_123"`.
  ///
  /// For third-party assets, it is up to the users to define.
  public var parent: String = String()

  /// The content of the resource, in which some sensitive fields are scrubbed
  /// away and may not be present.
  public var data: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _data ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_data = newValue}
  }
  /// Returns true if `data` has been explicitly set.
  public var hasData: Bool {return self._data != nil}
  /// Clears the value of `data`. Subsequent reads from it will return its default value.
  public mutating func clearData() {self._data = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _data: SwiftProtobuf.Google_Protobuf_Struct? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.asset.v1beta1"

extension Google_Cloud_Asset_V1beta1_TemporalAsset: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TemporalAsset"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "window"),
    2: .same(proto: "deleted"),
    3: .same(proto: "asset"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._window) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.deleted) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._asset) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._window {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.deleted != false {
      try visitor.visitSingularBoolField(value: self.deleted, fieldNumber: 2)
    }
    if let v = self._asset {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Asset_V1beta1_TemporalAsset, rhs: Google_Cloud_Asset_V1beta1_TemporalAsset) -> Bool {
    if lhs._window != rhs._window {return false}
    if lhs.deleted != rhs.deleted {return false}
    if lhs._asset != rhs._asset {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Asset_V1beta1_TimeWindow: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TimeWindow"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "start_time"),
    2: .standard(proto: "end_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._startTime) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._endTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._startTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._endTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Asset_V1beta1_TimeWindow, rhs: Google_Cloud_Asset_V1beta1_TimeWindow) -> Bool {
    if lhs._startTime != rhs._startTime {return false}
    if lhs._endTime != rhs._endTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Asset_V1beta1_Asset: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Asset"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "asset_type"),
    3: .same(proto: "resource"),
    4: .standard(proto: "iam_policy"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.assetType) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._resource) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._iamPolicy) }()
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
    if let v = self._resource {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._iamPolicy {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Asset_V1beta1_Asset, rhs: Google_Cloud_Asset_V1beta1_Asset) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.assetType != rhs.assetType {return false}
    if lhs._resource != rhs._resource {return false}
    if lhs._iamPolicy != rhs._iamPolicy {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Asset_V1beta1_Resource: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Resource"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "version"),
    2: .standard(proto: "discovery_document_uri"),
    3: .standard(proto: "discovery_name"),
    4: .standard(proto: "resource_url"),
    5: .same(proto: "parent"),
    6: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.version) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.discoveryDocumentUri) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.discoveryName) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.resourceURL) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._data) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.version.isEmpty {
      try visitor.visitSingularStringField(value: self.version, fieldNumber: 1)
    }
    if !self.discoveryDocumentUri.isEmpty {
      try visitor.visitSingularStringField(value: self.discoveryDocumentUri, fieldNumber: 2)
    }
    if !self.discoveryName.isEmpty {
      try visitor.visitSingularStringField(value: self.discoveryName, fieldNumber: 3)
    }
    if !self.resourceURL.isEmpty {
      try visitor.visitSingularStringField(value: self.resourceURL, fieldNumber: 4)
    }
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 5)
    }
    if let v = self._data {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Asset_V1beta1_Resource, rhs: Google_Cloud_Asset_V1beta1_Resource) -> Bool {
    if lhs.version != rhs.version {return false}
    if lhs.discoveryDocumentUri != rhs.discoveryDocumentUri {return false}
    if lhs.discoveryName != rhs.discoveryName {return false}
    if lhs.resourceURL != rhs.resourceURL {return false}
    if lhs.parent != rhs.parent {return false}
    if lhs._data != rhs._data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
