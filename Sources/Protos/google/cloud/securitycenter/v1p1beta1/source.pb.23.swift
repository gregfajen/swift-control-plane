// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/securitycenter/v1p1beta1/source.proto
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

/// Security Command Center finding source. A finding source
/// is an entity or a mechanism that can produce a finding. A source is like a
/// container of findings that come from the same scanner, logger, monitor, etc.
public struct Google_Cloud_Securitycenter_V1p1beta1_Source {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The relative resource name of this source. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/{organization_id}/sources/{source_id}"
  public var name: String = String()

  /// The source's display name.
  /// A source's display name must be unique amongst its siblings, for example,
  /// two sources with the same parent can't share the same display name.
  /// The display name must have a length between 1 and 64 characters
  /// (inclusive).
  public var displayName: String = String()

  /// The description of the source (max of 1024 characters).
  /// Example:
  /// "Web Security Scanner is a web security scanner for common
  /// vulnerabilities in App Engine applications. It can automatically
  /// scan and detect four common vulnerabilities, including cross-site-scripting
  /// (XSS), Flash injection, mixed content (HTTP in HTTPS), and
  /// outdated/insecure libraries."
  public var description_p: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.securitycenter.v1p1beta1"

extension Google_Cloud_Securitycenter_V1p1beta1_Source: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Source"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "display_name"),
    3: .same(proto: "description"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.displayName) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.displayName.isEmpty {
      try visitor.visitSingularStringField(value: self.displayName, fieldNumber: 2)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Securitycenter_V1p1beta1_Source, rhs: Google_Cloud_Securitycenter_V1p1beta1_Source) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.displayName != rhs.displayName {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
