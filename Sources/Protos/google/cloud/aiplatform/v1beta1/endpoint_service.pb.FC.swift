// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/aiplatform/v1beta1/endpoint_service.proto
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

/// Request message for [EndpointService.CreateEndpoint][google.cloud.aiplatform.v1beta1.EndpointService.CreateEndpoint].
public struct Google_Cloud_Aiplatform_V1beta1_CreateEndpointRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The resource name of the Location to create the Endpoint in.
  /// Format: `projects/{project}/locations/{location}`
  public var parent: String = String()

  /// Required. The Endpoint to create.
  public var endpoint: Google_Cloud_Aiplatform_V1beta1_Endpoint {
    get {return _endpoint ?? Google_Cloud_Aiplatform_V1beta1_Endpoint()}
    set {_endpoint = newValue}
  }
  /// Returns true if `endpoint` has been explicitly set.
  public var hasEndpoint: Bool {return self._endpoint != nil}
  /// Clears the value of `endpoint`. Subsequent reads from it will return its default value.
  public mutating func clearEndpoint() {self._endpoint = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _endpoint: Google_Cloud_Aiplatform_V1beta1_Endpoint? = nil
}

/// Runtime operation information for [EndpointService.CreateEndpoint][google.cloud.aiplatform.v1beta1.EndpointService.CreateEndpoint].
public struct Google_Cloud_Aiplatform_V1beta1_CreateEndpointOperationMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The operation generic information.
  public var genericMetadata: Google_Cloud_Aiplatform_V1beta1_GenericOperationMetadata {
    get {return _genericMetadata ?? Google_Cloud_Aiplatform_V1beta1_GenericOperationMetadata()}
    set {_genericMetadata = newValue}
  }
  /// Returns true if `genericMetadata` has been explicitly set.
  public var hasGenericMetadata: Bool {return self._genericMetadata != nil}
  /// Clears the value of `genericMetadata`. Subsequent reads from it will return its default value.
  public mutating func clearGenericMetadata() {self._genericMetadata = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _genericMetadata: Google_Cloud_Aiplatform_V1beta1_GenericOperationMetadata? = nil
}

/// Request message for [EndpointService.GetEndpoint][google.cloud.aiplatform.v1beta1.EndpointService.GetEndpoint]
public struct Google_Cloud_Aiplatform_V1beta1_GetEndpointRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the Endpoint resource.
  /// Format:
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}`
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for [EndpointService.ListEndpoints][google.cloud.aiplatform.v1beta1.EndpointService.ListEndpoints].
public struct Google_Cloud_Aiplatform_V1beta1_ListEndpointsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The resource name of the Location from which to list the Endpoints.
  /// Format: `projects/{project}/locations/{location}`
  public var parent: String = String()

  /// Optional. An expression for filtering the results of the request. For field names
  /// both snake_case and camelCase are supported.
  ///
  ///   * `endpoint` supports = and !=. `endpoint` represents the Endpoint ID,
  ///     ie. the last segment of the Endpoint's [resource name][google.cloud.aiplatform.v1beta1.Endpoint.name].
  ///   * `display_name` supports =, != and regex()
  ///             (uses [re2](https://github.com/google/re2/wiki/Syntax) syntax)
  ///   * `labels` supports general map functions that is:
  ///             `labels.key=value` - key:value equality
  ///             `labels.key:* or labels:key - key existence
  ///              A key including a space must be quoted. `labels."a key"`.
  ///
  /// Some examples:
  ///   * `endpoint=1`
  ///   * `displayName="myDisplayName"`
  ///   * `regex(display_name, "^A") -> The display name starts with an A.
  ///   * `labels.myKey="myValue"`
  public var filter: String = String()

  /// Optional. The standard list page size.
  public var pageSize: Int32 = 0

  /// Optional. The standard list page token.
  /// Typically obtained via
  /// [ListEndpointsResponse.next_page_token][google.cloud.aiplatform.v1beta1.ListEndpointsResponse.next_page_token] of the previous
  /// [EndpointService.ListEndpoints][google.cloud.aiplatform.v1beta1.EndpointService.ListEndpoints] call.
  public var pageToken: String = String()

  /// Optional. Mask specifying which fields to read.
  public var readMask: SwiftProtobuf.Google_Protobuf_FieldMask {
    get {return _readMask ?? SwiftProtobuf.Google_Protobuf_FieldMask()}
    set {_readMask = newValue}
  }
  /// Returns true if `readMask` has been explicitly set.
  public var hasReadMask: Bool {return self._readMask != nil}
  /// Clears the value of `readMask`. Subsequent reads from it will return its default value.
  public mutating func clearReadMask() {self._readMask = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _readMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

/// Response message for [EndpointService.ListEndpoints][google.cloud.aiplatform.v1beta1.EndpointService.ListEndpoints].
public struct Google_Cloud_Aiplatform_V1beta1_ListEndpointsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// List of Endpoints in the requested page.
  public var endpoints: [Google_Cloud_Aiplatform_V1beta1_Endpoint] = []

  /// A token to retrieve next page of results.
  /// Pass to [ListEndpointsRequest.page_token][google.cloud.aiplatform.v1beta1.ListEndpointsRequest.page_token] to obtain that page.
  public var nextPageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for [EndpointService.UpdateEndpoint][google.cloud.aiplatform.v1beta1.EndpointService.UpdateEndpoint].
public struct Google_Cloud_Aiplatform_V1beta1_UpdateEndpointRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The Endpoint which replaces the resource on the server.
  public var endpoint: Google_Cloud_Aiplatform_V1beta1_Endpoint {
    get {return _endpoint ?? Google_Cloud_Aiplatform_V1beta1_Endpoint()}
    set {_endpoint = newValue}
  }
  /// Returns true if `endpoint` has been explicitly set.
  public var hasEndpoint: Bool {return self._endpoint != nil}
  /// Clears the value of `endpoint`. Subsequent reads from it will return its default value.
  public mutating func clearEndpoint() {self._endpoint = nil}

  /// Required. The update mask applies to the resource.
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

  fileprivate var _endpoint: Google_Cloud_Aiplatform_V1beta1_Endpoint? = nil
  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

/// Request message for [EndpointService.DeleteEndpoint][google.cloud.aiplatform.v1beta1.EndpointService.DeleteEndpoint].
public struct Google_Cloud_Aiplatform_V1beta1_DeleteEndpointRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the Endpoint resource to be deleted.
  /// Format:
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}`
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for [EndpointService.DeployModel][google.cloud.aiplatform.v1beta1.EndpointService.DeployModel].
public struct Google_Cloud_Aiplatform_V1beta1_DeployModelRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the Endpoint resource into which to deploy a Model.
  /// Format:
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}`
  public var endpoint: String = String()

  /// Required. The DeployedModel to be created within the Endpoint. Note that
  /// [Endpoint.traffic_split][google.cloud.aiplatform.v1beta1.Endpoint.traffic_split] must be updated for the DeployedModel to start
  /// receiving traffic, either as part of this call, or via
  /// [EndpointService.UpdateEndpoint][google.cloud.aiplatform.v1beta1.EndpointService.UpdateEndpoint].
  public var deployedModel: Google_Cloud_Aiplatform_V1beta1_DeployedModel {
    get {return _deployedModel ?? Google_Cloud_Aiplatform_V1beta1_DeployedModel()}
    set {_deployedModel = newValue}
  }
  /// Returns true if `deployedModel` has been explicitly set.
  public var hasDeployedModel: Bool {return self._deployedModel != nil}
  /// Clears the value of `deployedModel`. Subsequent reads from it will return its default value.
  public mutating func clearDeployedModel() {self._deployedModel = nil}

  /// A map from a DeployedModel's ID to the percentage of this Endpoint's
  /// traffic that should be forwarded to that DeployedModel.
  ///
  /// If this field is non-empty, then the Endpoint's
  /// [traffic_split][google.cloud.aiplatform.v1beta1.Endpoint.traffic_split] will be overwritten with it.
  /// To refer to the ID of the just being deployed Model, a "0" should be used,
  /// and the actual ID of the new DeployedModel will be filled in its place by
  /// this method. The traffic percentage values must add up to 100.
  ///
  /// If this field is empty, then the Endpoint's
  /// [traffic_split][google.cloud.aiplatform.v1beta1.Endpoint.traffic_split] is not updated.
  public var trafficSplit: Dictionary<String,Int32> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _deployedModel: Google_Cloud_Aiplatform_V1beta1_DeployedModel? = nil
}

/// Response message for [EndpointService.DeployModel][google.cloud.aiplatform.v1beta1.EndpointService.DeployModel].
public struct Google_Cloud_Aiplatform_V1beta1_DeployModelResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The DeployedModel that had been deployed in the Endpoint.
  public var deployedModel: Google_Cloud_Aiplatform_V1beta1_DeployedModel {
    get {return _deployedModel ?? Google_Cloud_Aiplatform_V1beta1_DeployedModel()}
    set {_deployedModel = newValue}
  }
  /// Returns true if `deployedModel` has been explicitly set.
  public var hasDeployedModel: Bool {return self._deployedModel != nil}
  /// Clears the value of `deployedModel`. Subsequent reads from it will return its default value.
  public mutating func clearDeployedModel() {self._deployedModel = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _deployedModel: Google_Cloud_Aiplatform_V1beta1_DeployedModel? = nil
}

/// Runtime operation information for [EndpointService.DeployModel][google.cloud.aiplatform.v1beta1.EndpointService.DeployModel].
public struct Google_Cloud_Aiplatform_V1beta1_DeployModelOperationMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The operation generic information.
  public var genericMetadata: Google_Cloud_Aiplatform_V1beta1_GenericOperationMetadata {
    get {return _genericMetadata ?? Google_Cloud_Aiplatform_V1beta1_GenericOperationMetadata()}
    set {_genericMetadata = newValue}
  }
  /// Returns true if `genericMetadata` has been explicitly set.
  public var hasGenericMetadata: Bool {return self._genericMetadata != nil}
  /// Clears the value of `genericMetadata`. Subsequent reads from it will return its default value.
  public mutating func clearGenericMetadata() {self._genericMetadata = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _genericMetadata: Google_Cloud_Aiplatform_V1beta1_GenericOperationMetadata? = nil
}

/// Request message for [EndpointService.UndeployModel][google.cloud.aiplatform.v1beta1.EndpointService.UndeployModel].
public struct Google_Cloud_Aiplatform_V1beta1_UndeployModelRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the Endpoint resource from which to undeploy a Model.
  /// Format:
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}`
  public var endpoint: String = String()

  /// Required. The ID of the DeployedModel to be undeployed from the Endpoint.
  public var deployedModelID: String = String()

  /// If this field is provided, then the Endpoint's
  /// [traffic_split][google.cloud.aiplatform.v1beta1.Endpoint.traffic_split] will be overwritten with it. If
  /// last DeployedModel is being undeployed from the Endpoint, the
  /// [Endpoint.traffic_split] will always end up empty when this call returns.
  /// A DeployedModel will be successfully undeployed only if it doesn't have
  /// any traffic assigned to it when this method executes, or if this field
  /// unassigns any traffic to it.
  public var trafficSplit: Dictionary<String,Int32> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Response message for [EndpointService.UndeployModel][google.cloud.aiplatform.v1beta1.EndpointService.UndeployModel].
public struct Google_Cloud_Aiplatform_V1beta1_UndeployModelResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Runtime operation information for [EndpointService.UndeployModel][google.cloud.aiplatform.v1beta1.EndpointService.UndeployModel].
public struct Google_Cloud_Aiplatform_V1beta1_UndeployModelOperationMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The operation generic information.
  public var genericMetadata: Google_Cloud_Aiplatform_V1beta1_GenericOperationMetadata {
    get {return _genericMetadata ?? Google_Cloud_Aiplatform_V1beta1_GenericOperationMetadata()}
    set {_genericMetadata = newValue}
  }
  /// Returns true if `genericMetadata` has been explicitly set.
  public var hasGenericMetadata: Bool {return self._genericMetadata != nil}
  /// Clears the value of `genericMetadata`. Subsequent reads from it will return its default value.
  public mutating func clearGenericMetadata() {self._genericMetadata = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _genericMetadata: Google_Cloud_Aiplatform_V1beta1_GenericOperationMetadata? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.aiplatform.v1beta1"

extension Google_Cloud_Aiplatform_V1beta1_CreateEndpointRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateEndpointRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .same(proto: "endpoint"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._endpoint) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if let v = self._endpoint {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_CreateEndpointRequest, rhs: Google_Cloud_Aiplatform_V1beta1_CreateEndpointRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs._endpoint != rhs._endpoint {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_CreateEndpointOperationMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateEndpointOperationMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "generic_metadata"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._genericMetadata) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._genericMetadata {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_CreateEndpointOperationMetadata, rhs: Google_Cloud_Aiplatform_V1beta1_CreateEndpointOperationMetadata) -> Bool {
    if lhs._genericMetadata != rhs._genericMetadata {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_GetEndpointRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetEndpointRequest"
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

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_GetEndpointRequest, rhs: Google_Cloud_Aiplatform_V1beta1_GetEndpointRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_ListEndpointsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListEndpointsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .same(proto: "filter"),
    3: .standard(proto: "page_size"),
    4: .standard(proto: "page_token"),
    5: .standard(proto: "read_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.filter) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.pageSize) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.pageToken) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._readMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if !self.filter.isEmpty {
      try visitor.visitSingularStringField(value: self.filter, fieldNumber: 2)
    }
    if self.pageSize != 0 {
      try visitor.visitSingularInt32Field(value: self.pageSize, fieldNumber: 3)
    }
    if !self.pageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.pageToken, fieldNumber: 4)
    }
    if let v = self._readMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_ListEndpointsRequest, rhs: Google_Cloud_Aiplatform_V1beta1_ListEndpointsRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.filter != rhs.filter {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs._readMask != rhs._readMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_ListEndpointsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListEndpointsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "endpoints"),
    2: .standard(proto: "next_page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.endpoints) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.endpoints.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.endpoints, fieldNumber: 1)
    }
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_ListEndpointsResponse, rhs: Google_Cloud_Aiplatform_V1beta1_ListEndpointsResponse) -> Bool {
    if lhs.endpoints != rhs.endpoints {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_UpdateEndpointRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateEndpointRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "endpoint"),
    2: .standard(proto: "update_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._endpoint) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._endpoint {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_UpdateEndpointRequest, rhs: Google_Cloud_Aiplatform_V1beta1_UpdateEndpointRequest) -> Bool {
    if lhs._endpoint != rhs._endpoint {return false}
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_DeleteEndpointRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteEndpointRequest"
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

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_DeleteEndpointRequest, rhs: Google_Cloud_Aiplatform_V1beta1_DeleteEndpointRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_DeployModelRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeployModelRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "endpoint"),
    2: .standard(proto: "deployed_model"),
    3: .standard(proto: "traffic_split"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.endpoint) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._deployedModel) }()
      case 3: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufInt32>.self, value: &self.trafficSplit) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.endpoint.isEmpty {
      try visitor.visitSingularStringField(value: self.endpoint, fieldNumber: 1)
    }
    if let v = self._deployedModel {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.trafficSplit.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufInt32>.self, value: self.trafficSplit, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_DeployModelRequest, rhs: Google_Cloud_Aiplatform_V1beta1_DeployModelRequest) -> Bool {
    if lhs.endpoint != rhs.endpoint {return false}
    if lhs._deployedModel != rhs._deployedModel {return false}
    if lhs.trafficSplit != rhs.trafficSplit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_DeployModelResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeployModelResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "deployed_model"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._deployedModel) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._deployedModel {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_DeployModelResponse, rhs: Google_Cloud_Aiplatform_V1beta1_DeployModelResponse) -> Bool {
    if lhs._deployedModel != rhs._deployedModel {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_DeployModelOperationMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeployModelOperationMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "generic_metadata"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._genericMetadata) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._genericMetadata {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_DeployModelOperationMetadata, rhs: Google_Cloud_Aiplatform_V1beta1_DeployModelOperationMetadata) -> Bool {
    if lhs._genericMetadata != rhs._genericMetadata {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_UndeployModelRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UndeployModelRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "endpoint"),
    2: .standard(proto: "deployed_model_id"),
    3: .standard(proto: "traffic_split"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.endpoint) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.deployedModelID) }()
      case 3: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufInt32>.self, value: &self.trafficSplit) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.endpoint.isEmpty {
      try visitor.visitSingularStringField(value: self.endpoint, fieldNumber: 1)
    }
    if !self.deployedModelID.isEmpty {
      try visitor.visitSingularStringField(value: self.deployedModelID, fieldNumber: 2)
    }
    if !self.trafficSplit.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufInt32>.self, value: self.trafficSplit, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_UndeployModelRequest, rhs: Google_Cloud_Aiplatform_V1beta1_UndeployModelRequest) -> Bool {
    if lhs.endpoint != rhs.endpoint {return false}
    if lhs.deployedModelID != rhs.deployedModelID {return false}
    if lhs.trafficSplit != rhs.trafficSplit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_UndeployModelResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UndeployModelResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_UndeployModelResponse, rhs: Google_Cloud_Aiplatform_V1beta1_UndeployModelResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_UndeployModelOperationMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UndeployModelOperationMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "generic_metadata"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._genericMetadata) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._genericMetadata {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_UndeployModelOperationMetadata, rhs: Google_Cloud_Aiplatform_V1beta1_UndeployModelOperationMetadata) -> Bool {
    if lhs._genericMetadata != rhs._genericMetadata {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
