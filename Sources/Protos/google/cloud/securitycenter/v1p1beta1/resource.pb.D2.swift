// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/securitycenter/v1p1beta1/resource.proto
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

/// Information related to the Google Cloud resource.
public struct Google_Cloud_Securitycenter_V1p1beta1_Resource {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The full resource name of the resource. See:
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  public var name: String = String()

  /// The full resource name of project that the resource belongs to.
  public var project: String = String()

  /// The human readable name of project that the resource belongs to.
  public var projectDisplayName: String = String()

  /// The full resource name of resource's parent.
  public var parent: String = String()

  /// The human readable name of resource's parent.
  public var parentDisplayName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.securitycenter.v1p1beta1"

extension Google_Cloud_Securitycenter_V1p1beta1_Resource: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Resource"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "project"),
    3: .standard(proto: "project_display_name"),
    4: .same(proto: "parent"),
    5: .standard(proto: "parent_display_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.project) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.projectDisplayName) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.parentDisplayName) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.project.isEmpty {
      try visitor.visitSingularStringField(value: self.project, fieldNumber: 2)
    }
    if !self.projectDisplayName.isEmpty {
      try visitor.visitSingularStringField(value: self.projectDisplayName, fieldNumber: 3)
    }
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 4)
    }
    if !self.parentDisplayName.isEmpty {
      try visitor.visitSingularStringField(value: self.parentDisplayName, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Securitycenter_V1p1beta1_Resource, rhs: Google_Cloud_Securitycenter_V1p1beta1_Resource) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.project != rhs.project {return false}
    if lhs.projectDisplayName != rhs.projectDisplayName {return false}
    if lhs.parent != rhs.parent {return false}
    if lhs.parentDisplayName != rhs.parentDisplayName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
