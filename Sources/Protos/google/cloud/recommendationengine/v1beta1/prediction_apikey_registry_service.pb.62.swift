// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/recommendationengine/v1beta1/prediction_apikey_registry_service.proto
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

/// Registered Api Key.
public struct Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistration {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The API key.
  public var apiKey: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for the `CreatePredictionApiKeyRegistration` method.
public struct Google_Cloud_Recommendationengine_V1beta1_CreatePredictionApiKeyRegistrationRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The parent resource path.
  /// "projects/*/locations/global/catalogs/default_catalog/eventStores/default_event_store".
  public var parent: String = String()

  /// Required. The prediction API key registration.
  public var predictionApiKeyRegistration: Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistration {
    get {return _predictionApiKeyRegistration ?? Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistration()}
    set {_predictionApiKeyRegistration = newValue}
  }
  /// Returns true if `predictionApiKeyRegistration` has been explicitly set.
  public var hasPredictionApiKeyRegistration: Bool {return self._predictionApiKeyRegistration != nil}
  /// Clears the value of `predictionApiKeyRegistration`. Subsequent reads from it will return its default value.
  public mutating func clearPredictionApiKeyRegistration() {self._predictionApiKeyRegistration = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _predictionApiKeyRegistration: Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistration? = nil
}

/// Request message for the `ListPredictionApiKeyRegistrations`.
public struct Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The parent placement resource name such as
  /// "projects/1234/locations/global/catalogs/default_catalog/eventStores/default_event_store"
  public var parent: String = String()

  /// Optional. Maximum number of results to return per page. If unset, the
  /// service will choose a reasonable default.
  public var pageSize: Int32 = 0

  /// Optional. The previous `ListPredictionApiKeyRegistration.nextPageToken`.
  public var pageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Response message for the `ListPredictionApiKeyRegistrations`.
public struct Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The list of registered API keys.
  public var predictionApiKeyRegistrations: [Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistration] = []

  /// If empty, the list is complete. If nonempty, pass the token to the next
  /// request's `ListPredictionApiKeysRegistrationsRequest.pageToken`.
  public var nextPageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for `DeletePredictionApiKeyRegistration` method.
public struct Google_Cloud_Recommendationengine_V1beta1_DeletePredictionApiKeyRegistrationRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The API key to unregister including full resource path.
  /// "projects/*/locations/global/catalogs/default_catalog/eventStores/default_event_store/predictionApiKeyRegistrations/<YOUR_API_KEY>"
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.recommendationengine.v1beta1"

extension Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistration: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PredictionApiKeyRegistration"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "api_key"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.apiKey) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.apiKey.isEmpty {
      try visitor.visitSingularStringField(value: self.apiKey, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistration, rhs: Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistration) -> Bool {
    if lhs.apiKey != rhs.apiKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Recommendationengine_V1beta1_CreatePredictionApiKeyRegistrationRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreatePredictionApiKeyRegistrationRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "prediction_api_key_registration"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._predictionApiKeyRegistration) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if let v = self._predictionApiKeyRegistration {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Recommendationengine_V1beta1_CreatePredictionApiKeyRegistrationRequest, rhs: Google_Cloud_Recommendationengine_V1beta1_CreatePredictionApiKeyRegistrationRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs._predictionApiKeyRegistration != rhs._predictionApiKeyRegistration {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListPredictionApiKeyRegistrationsRequest"
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

  public static func ==(lhs: Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsRequest, rhs: Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListPredictionApiKeyRegistrationsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "prediction_api_key_registrations"),
    2: .standard(proto: "next_page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.predictionApiKeyRegistrations) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.predictionApiKeyRegistrations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.predictionApiKeyRegistrations, fieldNumber: 1)
    }
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsResponse, rhs: Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsResponse) -> Bool {
    if lhs.predictionApiKeyRegistrations != rhs.predictionApiKeyRegistrations {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Recommendationengine_V1beta1_DeletePredictionApiKeyRegistrationRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeletePredictionApiKeyRegistrationRequest"
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

  public static func ==(lhs: Google_Cloud_Recommendationengine_V1beta1_DeletePredictionApiKeyRegistrationRequest, rhs: Google_Cloud_Recommendationengine_V1beta1_DeletePredictionApiKeyRegistrationRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}