// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/securitycenter/v1beta1/asset.proto
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

/// Security Command Center representation of a Google Cloud
/// resource.
///
/// The Asset is a Security Command Center resource that captures information
/// about a single Google Cloud resource. All modifications to an Asset are only
/// within the context of Security Command Center and don't affect the referenced
/// Google Cloud resource.
public struct Google_Cloud_Securitycenter_V1beta1_Asset {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The relative resource name of this asset. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/{organization_id}/assets/{asset_id}".
  public var name: String = String()

  /// Security Command Center managed properties. These properties are managed by
  /// Security Command Center and cannot be modified by the user.
  public var securityCenterProperties: Google_Cloud_Securitycenter_V1beta1_Asset.SecurityCenterProperties {
    get {return _securityCenterProperties ?? Google_Cloud_Securitycenter_V1beta1_Asset.SecurityCenterProperties()}
    set {_securityCenterProperties = newValue}
  }
  /// Returns true if `securityCenterProperties` has been explicitly set.
  public var hasSecurityCenterProperties: Bool {return self._securityCenterProperties != nil}
  /// Clears the value of `securityCenterProperties`. Subsequent reads from it will return its default value.
  public mutating func clearSecurityCenterProperties() {self._securityCenterProperties = nil}

  /// Resource managed properties. These properties are managed and defined by
  /// the Google Cloud resource and cannot be modified by the user.
  public var resourceProperties: Dictionary<String,SwiftProtobuf.Google_Protobuf_Value> = [:]

  /// User specified security marks. These marks are entirely managed by the user
  /// and come from the SecurityMarks resource that belongs to the asset.
  public var securityMarks: Google_Cloud_Securitycenter_V1beta1_SecurityMarks {
    get {return _securityMarks ?? Google_Cloud_Securitycenter_V1beta1_SecurityMarks()}
    set {_securityMarks = newValue}
  }
  /// Returns true if `securityMarks` has been explicitly set.
  public var hasSecurityMarks: Bool {return self._securityMarks != nil}
  /// Clears the value of `securityMarks`. Subsequent reads from it will return its default value.
  public mutating func clearSecurityMarks() {self._securityMarks = nil}

  /// The time at which the asset was created in Security Command Center.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// The time at which the asset was last updated, added, or deleted in Security
  /// Command Center.
  public var updateTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updateTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updateTime = newValue}
  }
  /// Returns true if `updateTime` has been explicitly set.
  public var hasUpdateTime: Bool {return self._updateTime != nil}
  /// Clears the value of `updateTime`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateTime() {self._updateTime = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Security Command Center managed properties. These properties are managed by
  /// Security Command Center and cannot be modified by the user.
  public struct SecurityCenterProperties {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Immutable. The full resource name of the Google Cloud resource this asset
    /// represents. This field is immutable after create time. See:
    /// https://cloud.google.com/apis/design/resource_names#full_resource_name
    public var resourceName: String = String()

    /// The type of the Google Cloud resource. Examples include: APPLICATION,
    /// PROJECT, and ORGANIZATION. This is a case insensitive field defined by
    /// Security Command Center and/or the producer of the resource and is
    /// immutable after create time.
    public var resourceType: String = String()

    /// The full resource name of the immediate parent of the resource. See:
    /// https://cloud.google.com/apis/design/resource_names#full_resource_name
    public var resourceParent: String = String()

    /// The full resource name of the project the resource belongs to. See:
    /// https://cloud.google.com/apis/design/resource_names#full_resource_name
    public var resourceProject: String = String()

    /// Owners of the Google Cloud resource.
    public var resourceOwners: [String] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _securityCenterProperties: Google_Cloud_Securitycenter_V1beta1_Asset.SecurityCenterProperties? = nil
  fileprivate var _securityMarks: Google_Cloud_Securitycenter_V1beta1_SecurityMarks? = nil
  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _updateTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.securitycenter.v1beta1"

extension Google_Cloud_Securitycenter_V1beta1_Asset: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Asset"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "security_center_properties"),
    7: .standard(proto: "resource_properties"),
    8: .standard(proto: "security_marks"),
    9: .standard(proto: "create_time"),
    10: .standard(proto: "update_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._securityCenterProperties) }()
      case 7: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.Google_Protobuf_Value>.self, value: &self.resourceProperties) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._securityMarks) }()
      case 9: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 10: try { try decoder.decodeSingularMessageField(value: &self._updateTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._securityCenterProperties {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.resourceProperties.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.Google_Protobuf_Value>.self, value: self.resourceProperties, fieldNumber: 7)
    }
    if let v = self._securityMarks {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }
    if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }
    if let v = self._updateTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Securitycenter_V1beta1_Asset, rhs: Google_Cloud_Securitycenter_V1beta1_Asset) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._securityCenterProperties != rhs._securityCenterProperties {return false}
    if lhs.resourceProperties != rhs.resourceProperties {return false}
    if lhs._securityMarks != rhs._securityMarks {return false}
    if lhs._createTime != rhs._createTime {return false}
    if lhs._updateTime != rhs._updateTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Securitycenter_V1beta1_Asset.SecurityCenterProperties: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Securitycenter_V1beta1_Asset.protoMessageName + ".SecurityCenterProperties"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "resource_name"),
    2: .standard(proto: "resource_type"),
    3: .standard(proto: "resource_parent"),
    4: .standard(proto: "resource_project"),
    5: .standard(proto: "resource_owners"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.resourceName) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.resourceType) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.resourceParent) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.resourceProject) }()
      case 5: try { try decoder.decodeRepeatedStringField(value: &self.resourceOwners) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.resourceName.isEmpty {
      try visitor.visitSingularStringField(value: self.resourceName, fieldNumber: 1)
    }
    if !self.resourceType.isEmpty {
      try visitor.visitSingularStringField(value: self.resourceType, fieldNumber: 2)
    }
    if !self.resourceParent.isEmpty {
      try visitor.visitSingularStringField(value: self.resourceParent, fieldNumber: 3)
    }
    if !self.resourceProject.isEmpty {
      try visitor.visitSingularStringField(value: self.resourceProject, fieldNumber: 4)
    }
    if !self.resourceOwners.isEmpty {
      try visitor.visitRepeatedStringField(value: self.resourceOwners, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Securitycenter_V1beta1_Asset.SecurityCenterProperties, rhs: Google_Cloud_Securitycenter_V1beta1_Asset.SecurityCenterProperties) -> Bool {
    if lhs.resourceName != rhs.resourceName {return false}
    if lhs.resourceType != rhs.resourceType {return false}
    if lhs.resourceParent != rhs.resourceParent {return false}
    if lhs.resourceProject != rhs.resourceProject {return false}
    if lhs.resourceOwners != rhs.resourceOwners {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
