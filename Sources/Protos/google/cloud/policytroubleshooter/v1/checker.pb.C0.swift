// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/policytroubleshooter/v1/checker.proto
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

/// Request for [TroubleshootIamPolicy][google.cloud.policytroubleshooter.v1.IamChecker.TroubleshootIamPolicy].
public struct Google_Cloud_Policytroubleshooter_V1_TroubleshootIamPolicyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The information to use for checking whether a member has a permission for a
  /// resource.
  public var accessTuple: Google_Cloud_Policytroubleshooter_V1_AccessTuple {
    get {return _accessTuple ?? Google_Cloud_Policytroubleshooter_V1_AccessTuple()}
    set {_accessTuple = newValue}
  }
  /// Returns true if `accessTuple` has been explicitly set.
  public var hasAccessTuple: Bool {return self._accessTuple != nil}
  /// Clears the value of `accessTuple`. Subsequent reads from it will return its default value.
  public mutating func clearAccessTuple() {self._accessTuple = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _accessTuple: Google_Cloud_Policytroubleshooter_V1_AccessTuple? = nil
}

/// Response for [TroubleshootIamPolicy][google.cloud.policytroubleshooter.v1.IamChecker.TroubleshootIamPolicy].
public struct Google_Cloud_Policytroubleshooter_V1_TroubleshootIamPolicyResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Indicates whether the member has the specified permission for the specified
  /// resource, based on evaluating all of the applicable IAM policies.
  public var access: Google_Cloud_Policytroubleshooter_V1_AccessState = .unspecified

  /// List of IAM policies that were evaluated to check the member's permissions,
  /// with annotations to indicate how each policy contributed to the final
  /// result.
  ///
  /// The list of policies can include the policy for the resource itself. It can
  /// also include policies that are inherited from higher levels of the resource
  /// hierarchy, including the organization, the folder, and the project.
  ///
  /// To learn more about the resource hierarchy, see
  /// https://cloud.google.com/iam/help/resource-hierarchy.
  public var explainedPolicies: [Google_Cloud_Policytroubleshooter_V1_ExplainedPolicy] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.policytroubleshooter.v1"

extension Google_Cloud_Policytroubleshooter_V1_TroubleshootIamPolicyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TroubleshootIamPolicyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "access_tuple"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._accessTuple) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._accessTuple {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Policytroubleshooter_V1_TroubleshootIamPolicyRequest, rhs: Google_Cloud_Policytroubleshooter_V1_TroubleshootIamPolicyRequest) -> Bool {
    if lhs._accessTuple != rhs._accessTuple {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Policytroubleshooter_V1_TroubleshootIamPolicyResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TroubleshootIamPolicyResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "access"),
    2: .standard(proto: "explained_policies"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.access) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.explainedPolicies) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.access != .unspecified {
      try visitor.visitSingularEnumField(value: self.access, fieldNumber: 1)
    }
    if !self.explainedPolicies.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.explainedPolicies, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Policytroubleshooter_V1_TroubleshootIamPolicyResponse, rhs: Google_Cloud_Policytroubleshooter_V1_TroubleshootIamPolicyResponse) -> Bool {
    if lhs.access != rhs.access {return false}
    if lhs.explainedPolicies != rhs.explainedPolicies {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
