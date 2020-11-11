// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/binaryauthorization/v1beta1/service.proto
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

/// Request message for [BinauthzManagementService.GetPolicy][].
public struct Google_Cloud_Binaryauthorization_V1beta1_GetPolicyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The resource name of the [policy][google.cloud.binaryauthorization.v1beta1.Policy] to retrieve,
  /// in the format `projects/*/policy`.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for [BinauthzManagementService.UpdatePolicy][].
public struct Google_Cloud_Binaryauthorization_V1beta1_UpdatePolicyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. A new or updated [policy][google.cloud.binaryauthorization.v1beta1.Policy] value. The service will
  /// overwrite the [policy name][google.cloud.binaryauthorization.v1beta1.Policy.name] field with the resource name in
  /// the request URL, in the format `projects/*/policy`.
  public var policy: Google_Cloud_Binaryauthorization_V1beta1_Policy {
    get {return _policy ?? Google_Cloud_Binaryauthorization_V1beta1_Policy()}
    set {_policy = newValue}
  }
  /// Returns true if `policy` has been explicitly set.
  public var hasPolicy: Bool {return self._policy != nil}
  /// Clears the value of `policy`. Subsequent reads from it will return its default value.
  public mutating func clearPolicy() {self._policy = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _policy: Google_Cloud_Binaryauthorization_V1beta1_Policy? = nil
}

/// Request message for [BinauthzManagementService.CreateAttestor][].
public struct Google_Cloud_Binaryauthorization_V1beta1_CreateAttestorRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The parent of this [attestor][google.cloud.binaryauthorization.v1beta1.Attestor].
  public var parent: String = String()

  /// Required. The [attestors][google.cloud.binaryauthorization.v1beta1.Attestor] ID.
  public var attestorID: String = String()

  /// Required. The initial [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] value. The service will
  /// overwrite the [attestor name][google.cloud.binaryauthorization.v1beta1.Attestor.name] field with the resource name,
  /// in the format `projects/*/attestors/*`.
  public var attestor: Google_Cloud_Binaryauthorization_V1beta1_Attestor {
    get {return _attestor ?? Google_Cloud_Binaryauthorization_V1beta1_Attestor()}
    set {_attestor = newValue}
  }
  /// Returns true if `attestor` has been explicitly set.
  public var hasAttestor: Bool {return self._attestor != nil}
  /// Clears the value of `attestor`. Subsequent reads from it will return its default value.
  public mutating func clearAttestor() {self._attestor = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _attestor: Google_Cloud_Binaryauthorization_V1beta1_Attestor? = nil
}

/// Request message for [BinauthzManagementService.GetAttestor][].
public struct Google_Cloud_Binaryauthorization_V1beta1_GetAttestorRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] to retrieve, in the format
  /// `projects/*/attestors/*`.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for [BinauthzManagementService.UpdateAttestor][].
public struct Google_Cloud_Binaryauthorization_V1beta1_UpdateAttestorRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The updated [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] value. The service will
  /// overwrite the [attestor name][google.cloud.binaryauthorization.v1beta1.Attestor.name] field with the resource name
  /// in the request URL, in the format `projects/*/attestors/*`.
  public var attestor: Google_Cloud_Binaryauthorization_V1beta1_Attestor {
    get {return _attestor ?? Google_Cloud_Binaryauthorization_V1beta1_Attestor()}
    set {_attestor = newValue}
  }
  /// Returns true if `attestor` has been explicitly set.
  public var hasAttestor: Bool {return self._attestor != nil}
  /// Clears the value of `attestor`. Subsequent reads from it will return its default value.
  public mutating func clearAttestor() {self._attestor = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _attestor: Google_Cloud_Binaryauthorization_V1beta1_Attestor? = nil
}

/// Request message for [BinauthzManagementService.ListAttestors][].
public struct Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The resource name of the project associated with the
  /// [attestors][google.cloud.binaryauthorization.v1beta1.Attestor], in the format `projects/*`.
  public var parent: String = String()

  /// Requested page size. The server may return fewer results than requested. If
  /// unspecified, the server will pick an appropriate default.
  public var pageSize: Int32 = 0

  /// A token identifying a page of results the server should return. Typically,
  /// this is the value of [ListAttestorsResponse.next_page_token][google.cloud.binaryauthorization.v1beta1.ListAttestorsResponse.next_page_token] returned
  /// from the previous call to the `ListAttestors` method.
  public var pageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Response message for [BinauthzManagementService.ListAttestors][].
public struct Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The list of [attestors][google.cloud.binaryauthorization.v1beta1.Attestor].
  public var attestors: [Google_Cloud_Binaryauthorization_V1beta1_Attestor] = []

  /// A token to retrieve the next page of results. Pass this value in the
  /// [ListAttestorsRequest.page_token][google.cloud.binaryauthorization.v1beta1.ListAttestorsRequest.page_token] field in the subsequent call to the
  /// `ListAttestors` method to retrieve the next page of results.
  public var nextPageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for [BinauthzManagementService.DeleteAttestor][].
public struct Google_Cloud_Binaryauthorization_V1beta1_DeleteAttestorRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the [attestors][google.cloud.binaryauthorization.v1beta1.Attestor] to delete, in the format
  /// `projects/*/attestors/*`.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.binaryauthorization.v1beta1"

extension Google_Cloud_Binaryauthorization_V1beta1_GetPolicyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetPolicyRequest"
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

  public static func ==(lhs: Google_Cloud_Binaryauthorization_V1beta1_GetPolicyRequest, rhs: Google_Cloud_Binaryauthorization_V1beta1_GetPolicyRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Binaryauthorization_V1beta1_UpdatePolicyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdatePolicyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "policy"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._policy) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._policy {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Binaryauthorization_V1beta1_UpdatePolicyRequest, rhs: Google_Cloud_Binaryauthorization_V1beta1_UpdatePolicyRequest) -> Bool {
    if lhs._policy != rhs._policy {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Binaryauthorization_V1beta1_CreateAttestorRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateAttestorRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "attestor_id"),
    3: .same(proto: "attestor"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.attestorID) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._attestor) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if !self.attestorID.isEmpty {
      try visitor.visitSingularStringField(value: self.attestorID, fieldNumber: 2)
    }
    if let v = self._attestor {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Binaryauthorization_V1beta1_CreateAttestorRequest, rhs: Google_Cloud_Binaryauthorization_V1beta1_CreateAttestorRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.attestorID != rhs.attestorID {return false}
    if lhs._attestor != rhs._attestor {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Binaryauthorization_V1beta1_GetAttestorRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetAttestorRequest"
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

  public static func ==(lhs: Google_Cloud_Binaryauthorization_V1beta1_GetAttestorRequest, rhs: Google_Cloud_Binaryauthorization_V1beta1_GetAttestorRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Binaryauthorization_V1beta1_UpdateAttestorRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateAttestorRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "attestor"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._attestor) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._attestor {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Binaryauthorization_V1beta1_UpdateAttestorRequest, rhs: Google_Cloud_Binaryauthorization_V1beta1_UpdateAttestorRequest) -> Bool {
    if lhs._attestor != rhs._attestor {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListAttestorsRequest"
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

  public static func ==(lhs: Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsRequest, rhs: Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListAttestorsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "attestors"),
    2: .standard(proto: "next_page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.attestors) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.attestors.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.attestors, fieldNumber: 1)
    }
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsResponse, rhs: Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsResponse) -> Bool {
    if lhs.attestors != rhs.attestors {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Binaryauthorization_V1beta1_DeleteAttestorRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteAttestorRequest"
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

  public static func ==(lhs: Google_Cloud_Binaryauthorization_V1beta1_DeleteAttestorRequest, rhs: Google_Cloud_Binaryauthorization_V1beta1_DeleteAttestorRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}