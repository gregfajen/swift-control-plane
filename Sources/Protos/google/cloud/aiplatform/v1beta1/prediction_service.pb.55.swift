// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/aiplatform/v1beta1/prediction_service.proto
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

/// Request message for [PredictionService.Predict][google.cloud.aiplatform.v1beta1.PredictionService.Predict].
public struct Google_Cloud_Aiplatform_V1beta1_PredictRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the Endpoint requested to serve the prediction.
  /// Format:
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}`
  public var endpoint: String = String()

  /// Required. The instances that are the input to the prediction call.
  /// A DeployedModel may have an upper limit on the number of instances it
  /// supports per request, and when it is exceeded the prediction call errors
  /// in case of AutoML Models, or, in case of customer created Models, the
  /// behaviour is as documented by that Model.
  /// The schema of any single instance may be specified via Endpoint's
  /// DeployedModels' [Model's][google.cloud.aiplatform.v1beta1.DeployedModel.model]
  /// [PredictSchemata's][google.cloud.aiplatform.v1beta1.Model.predict_schemata]
  /// [instance_schema_uri][google.cloud.aiplatform.v1beta1.PredictSchemata.instance_schema_uri].
  public var instances: [SwiftProtobuf.Google_Protobuf_Value] = []

  /// The parameters that govern the prediction. The schema of the parameters may
  /// be specified via Endpoint's DeployedModels' [Model's ][google.cloud.aiplatform.v1beta1.DeployedModel.model]
  /// [PredictSchemata's][google.cloud.aiplatform.v1beta1.Model.predict_schemata]
  /// [parameters_schema_uri][google.cloud.aiplatform.v1beta1.PredictSchemata.parameters_schema_uri].
  public var parameters: SwiftProtobuf.Google_Protobuf_Value {
    get {return _parameters ?? SwiftProtobuf.Google_Protobuf_Value()}
    set {_parameters = newValue}
  }
  /// Returns true if `parameters` has been explicitly set.
  public var hasParameters: Bool {return self._parameters != nil}
  /// Clears the value of `parameters`. Subsequent reads from it will return its default value.
  public mutating func clearParameters() {self._parameters = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _parameters: SwiftProtobuf.Google_Protobuf_Value? = nil
}

/// Response message for [PredictionService.Predict][google.cloud.aiplatform.v1beta1.PredictionService.Predict].
public struct Google_Cloud_Aiplatform_V1beta1_PredictResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The predictions that are the output of the predictions call.
  /// The schema of any single prediction may be specified via Endpoint's
  /// DeployedModels' [Model's ][google.cloud.aiplatform.v1beta1.DeployedModel.model]
  /// [PredictSchemata's][google.cloud.aiplatform.v1beta1.Model.predict_schemata]
  /// [prediction_schema_uri][google.cloud.aiplatform.v1beta1.PredictSchemata.prediction_schema_uri].
  public var predictions: [SwiftProtobuf.Google_Protobuf_Value] = []

  /// ID of the Endpoint's DeployedModel that served this prediction.
  public var deployedModelID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for [PredictionService.Explain][google.cloud.aiplatform.v1beta1.PredictionService.Explain].
public struct Google_Cloud_Aiplatform_V1beta1_ExplainRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the Endpoint requested to serve the explanation.
  /// Format:
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}`
  public var endpoint: String = String()

  /// Required. The instances that are the input to the explanation call.
  /// A DeployedModel may have an upper limit on the number of instances it
  /// supports per request, and when it is exceeded the explanation call errors
  /// in case of AutoML Models, or, in case of customer created Models, the
  /// behaviour is as documented by that Model.
  /// The schema of any single instance may be specified via Endpoint's
  /// DeployedModels' [Model's][google.cloud.aiplatform.v1beta1.DeployedModel.model]
  /// [PredictSchemata's][google.cloud.aiplatform.v1beta1.Model.predict_schemata]
  /// [instance_schema_uri][google.cloud.aiplatform.v1beta1.PredictSchemata.instance_schema_uri].
  public var instances: [SwiftProtobuf.Google_Protobuf_Value] = []

  /// The parameters that govern the prediction. The schema of the parameters may
  /// be specified via Endpoint's DeployedModels' [Model's ][google.cloud.aiplatform.v1beta1.DeployedModel.model]
  /// [PredictSchemata's][google.cloud.aiplatform.v1beta1.Model.predict_schemata]
  /// [parameters_schema_uri][google.cloud.aiplatform.v1beta1.PredictSchemata.parameters_schema_uri].
  public var parameters: SwiftProtobuf.Google_Protobuf_Value {
    get {return _parameters ?? SwiftProtobuf.Google_Protobuf_Value()}
    set {_parameters = newValue}
  }
  /// Returns true if `parameters` has been explicitly set.
  public var hasParameters: Bool {return self._parameters != nil}
  /// Clears the value of `parameters`. Subsequent reads from it will return its default value.
  public mutating func clearParameters() {self._parameters = nil}

  /// If specified, this ExplainRequest will be served by the chosen
  /// DeployedModel, overriding [Endpoint.traffic_split][google.cloud.aiplatform.v1beta1.Endpoint.traffic_split].
  public var deployedModelID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _parameters: SwiftProtobuf.Google_Protobuf_Value? = nil
}

/// Response message for [PredictionService.Explain][google.cloud.aiplatform.v1beta1.PredictionService.Explain].
public struct Google_Cloud_Aiplatform_V1beta1_ExplainResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The explanations of the Model's [PredictResponse.predictions][google.cloud.aiplatform.v1beta1.PredictResponse.predictions].
  ///
  /// It has the same number of elements as [instances][google.cloud.aiplatform.v1beta1.ExplainRequest.instances]
  /// to be explained.
  public var explanations: [Google_Cloud_Aiplatform_V1beta1_Explanation] = []

  /// ID of the Endpoint's DeployedModel that served this explanation.
  public var deployedModelID: String = String()

  /// The predictions that are the output of the predictions call.
  /// Same as [PredictResponse.predictions][google.cloud.aiplatform.v1beta1.PredictResponse.predictions].
  public var predictions: [SwiftProtobuf.Google_Protobuf_Value] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.aiplatform.v1beta1"

extension Google_Cloud_Aiplatform_V1beta1_PredictRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PredictRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "endpoint"),
    2: .same(proto: "instances"),
    3: .same(proto: "parameters"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.endpoint) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.instances) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._parameters) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.endpoint.isEmpty {
      try visitor.visitSingularStringField(value: self.endpoint, fieldNumber: 1)
    }
    if !self.instances.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.instances, fieldNumber: 2)
    }
    if let v = self._parameters {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_PredictRequest, rhs: Google_Cloud_Aiplatform_V1beta1_PredictRequest) -> Bool {
    if lhs.endpoint != rhs.endpoint {return false}
    if lhs.instances != rhs.instances {return false}
    if lhs._parameters != rhs._parameters {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_PredictResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PredictResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "predictions"),
    2: .standard(proto: "deployed_model_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.predictions) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.deployedModelID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.predictions.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.predictions, fieldNumber: 1)
    }
    if !self.deployedModelID.isEmpty {
      try visitor.visitSingularStringField(value: self.deployedModelID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_PredictResponse, rhs: Google_Cloud_Aiplatform_V1beta1_PredictResponse) -> Bool {
    if lhs.predictions != rhs.predictions {return false}
    if lhs.deployedModelID != rhs.deployedModelID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_ExplainRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ExplainRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "endpoint"),
    2: .same(proto: "instances"),
    4: .same(proto: "parameters"),
    3: .standard(proto: "deployed_model_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.endpoint) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.instances) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.deployedModelID) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._parameters) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.endpoint.isEmpty {
      try visitor.visitSingularStringField(value: self.endpoint, fieldNumber: 1)
    }
    if !self.instances.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.instances, fieldNumber: 2)
    }
    if !self.deployedModelID.isEmpty {
      try visitor.visitSingularStringField(value: self.deployedModelID, fieldNumber: 3)
    }
    if let v = self._parameters {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_ExplainRequest, rhs: Google_Cloud_Aiplatform_V1beta1_ExplainRequest) -> Bool {
    if lhs.endpoint != rhs.endpoint {return false}
    if lhs.instances != rhs.instances {return false}
    if lhs._parameters != rhs._parameters {return false}
    if lhs.deployedModelID != rhs.deployedModelID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_ExplainResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ExplainResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "explanations"),
    2: .standard(proto: "deployed_model_id"),
    3: .same(proto: "predictions"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.explanations) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.deployedModelID) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.predictions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.explanations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.explanations, fieldNumber: 1)
    }
    if !self.deployedModelID.isEmpty {
      try visitor.visitSingularStringField(value: self.deployedModelID, fieldNumber: 2)
    }
    if !self.predictions.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.predictions, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_ExplainResponse, rhs: Google_Cloud_Aiplatform_V1beta1_ExplainResponse) -> Bool {
    if lhs.explanations != rhs.explanations {return false}
    if lhs.deployedModelID != rhs.deployedModelID {return false}
    if lhs.predictions != rhs.predictions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
