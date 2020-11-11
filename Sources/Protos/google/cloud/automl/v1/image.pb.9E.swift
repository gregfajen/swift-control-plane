// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/automl/v1/image.proto
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

/// Dataset metadata that is specific to image classification.
public struct Google_Cloud_Automl_V1_ImageClassificationDatasetMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Type of the classification problem.
  public var classificationType: Google_Cloud_Automl_V1_ClassificationType = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Dataset metadata specific to image object detection.
public struct Google_Cloud_Automl_V1_ImageObjectDetectionDatasetMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Model metadata for image classification.
public struct Google_Cloud_Automl_V1_ImageClassificationModelMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional. The ID of the `base` model. If it is specified, the new model
  /// will be created based on the `base` model. Otherwise, the new model will be
  /// created from scratch. The `base` model must be in the same
  /// `project` and `location` as the new model to create, and have the same
  /// `model_type`.
  public var baseModelID: String = String()

  /// The train budget of creating this model, expressed in milli node
  /// hours i.e. 1,000 value in this field means 1 node hour. The actual
  /// `train_cost` will be equal or less than this value. If further model
  /// training ceases to provide any improvements, it will stop without using
  /// full budget and the stop_reason will be `MODEL_CONVERGED`.
  /// Note, node_hour  = actual_hour * number_of_nodes_invovled.
  /// For model type `cloud`(default), the train budget must be between 8,000
  /// and 800,000 milli node hours, inclusive. The default value is 192, 000
  /// which represents one day in wall time. For model type
  /// `mobile-low-latency-1`, `mobile-versatile-1`, `mobile-high-accuracy-1`,
  /// `mobile-core-ml-low-latency-1`, `mobile-core-ml-versatile-1`,
  /// `mobile-core-ml-high-accuracy-1`, the train budget must be between 1,000
  /// and 100,000 milli node hours, inclusive. The default value is 24, 000 which
  /// represents one day in wall time.
  public var trainBudgetMilliNodeHours: Int64 = 0

  /// Output only. The actual train cost of creating this model, expressed in
  /// milli node hours, i.e. 1,000 value in this field means 1 node hour.
  /// Guaranteed to not exceed the train budget.
  public var trainCostMilliNodeHours: Int64 = 0

  /// Output only. The reason that this create model operation stopped,
  /// e.g. `BUDGET_REACHED`, `MODEL_CONVERGED`.
  public var stopReason: String = String()

  /// Optional. Type of the model. The available values are:
  /// *   `cloud` - Model to be used via prediction calls to AutoML API.
  ///               This is the default value.
  /// *   `mobile-low-latency-1` - A model that, in addition to providing
  ///               prediction via AutoML API, can also be exported (see
  ///               [AutoMl.ExportModel][google.cloud.automl.v1.AutoMl.ExportModel]) and used on a mobile or edge device
  ///               with TensorFlow afterwards. Expected to have low latency, but
  ///               may have lower prediction quality than other models.
  /// *   `mobile-versatile-1` - A model that, in addition to providing
  ///               prediction via AutoML API, can also be exported (see
  ///               [AutoMl.ExportModel][google.cloud.automl.v1.AutoMl.ExportModel]) and used on a mobile or edge device
  ///               with TensorFlow afterwards.
  /// *   `mobile-high-accuracy-1` - A model that, in addition to providing
  ///               prediction via AutoML API, can also be exported (see
  ///               [AutoMl.ExportModel][google.cloud.automl.v1.AutoMl.ExportModel]) and used on a mobile or edge device
  ///               with TensorFlow afterwards.  Expected to have a higher
  ///               latency, but should also have a higher prediction quality
  ///               than other models.
  /// *   `mobile-core-ml-low-latency-1` - A model that, in addition to providing
  ///               prediction via AutoML API, can also be exported (see
  ///               [AutoMl.ExportModel][google.cloud.automl.v1.AutoMl.ExportModel]) and used on a mobile device with Core
  ///               ML afterwards. Expected to have low latency, but may have
  ///               lower prediction quality than other models.
  /// *   `mobile-core-ml-versatile-1` - A model that, in addition to providing
  ///               prediction via AutoML API, can also be exported (see
  ///               [AutoMl.ExportModel][google.cloud.automl.v1.AutoMl.ExportModel]) and used on a mobile device with Core
  ///               ML afterwards.
  /// *   `mobile-core-ml-high-accuracy-1` - A model that, in addition to
  ///               providing prediction via AutoML API, can also be exported
  ///               (see [AutoMl.ExportModel][google.cloud.automl.v1.AutoMl.ExportModel]) and used on a mobile device with
  ///               Core ML afterwards.  Expected to have a higher latency, but
  ///               should also have a higher prediction quality than other
  ///               models.
  public var modelType: String = String()

  /// Output only. An approximate number of online prediction QPS that can
  /// be supported by this model per each node on which it is deployed.
  public var nodeQps: Double = 0

  /// Output only. The number of nodes this model is deployed on. A node is an
  /// abstraction of a machine resource, which can handle online prediction QPS
  /// as given in the node_qps field.
  public var nodeCount: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Model metadata specific to image object detection.
public struct Google_Cloud_Automl_V1_ImageObjectDetectionModelMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional. Type of the model. The available values are:
  /// *   `cloud-high-accuracy-1` - (default) A model to be used via prediction
  ///               calls to AutoML API. Expected to have a higher latency, but
  ///               should also have a higher prediction quality than other
  ///               models.
  /// *   `cloud-low-latency-1` -  A model to be used via prediction
  ///               calls to AutoML API. Expected to have low latency, but may
  ///               have lower prediction quality than other models.
  /// *   `mobile-low-latency-1` - A model that, in addition to providing
  ///               prediction via AutoML API, can also be exported (see
  ///               [AutoMl.ExportModel][google.cloud.automl.v1.AutoMl.ExportModel]) and used on a mobile or edge device
  ///               with TensorFlow afterwards. Expected to have low latency, but
  ///               may have lower prediction quality than other models.
  /// *   `mobile-versatile-1` - A model that, in addition to providing
  ///               prediction via AutoML API, can also be exported (see
  ///               [AutoMl.ExportModel][google.cloud.automl.v1.AutoMl.ExportModel]) and used on a mobile or edge device
  ///               with TensorFlow afterwards.
  /// *   `mobile-high-accuracy-1` - A model that, in addition to providing
  ///               prediction via AutoML API, can also be exported (see
  ///               [AutoMl.ExportModel][google.cloud.automl.v1.AutoMl.ExportModel]) and used on a mobile or edge device
  ///               with TensorFlow afterwards.  Expected to have a higher
  ///               latency, but should also have a higher prediction quality
  ///               than other models.
  public var modelType: String = String()

  /// Output only. The number of nodes this model is deployed on. A node is an
  /// abstraction of a machine resource, which can handle online prediction QPS
  /// as given in the qps_per_node field.
  public var nodeCount: Int64 = 0

  /// Output only. An approximate number of online prediction QPS that can
  /// be supported by this model per each node on which it is deployed.
  public var nodeQps: Double = 0

  /// Output only. The reason that this create model operation stopped,
  /// e.g. `BUDGET_REACHED`, `MODEL_CONVERGED`.
  public var stopReason: String = String()

  /// The train budget of creating this model, expressed in milli node
  /// hours i.e. 1,000 value in this field means 1 node hour. The actual
  /// `train_cost` will be equal or less than this value. If further model
  /// training ceases to provide any improvements, it will stop without using
  /// full budget and the stop_reason will be `MODEL_CONVERGED`.
  /// Note, node_hour  = actual_hour * number_of_nodes_invovled.
  /// For model type `cloud-high-accuracy-1`(default) and `cloud-low-latency-1`,
  /// the train budget must be between 20,000 and 900,000 milli node hours,
  /// inclusive. The default value is 216, 000 which represents one day in
  /// wall time.
  /// For model type `mobile-low-latency-1`, `mobile-versatile-1`,
  /// `mobile-high-accuracy-1`, `mobile-core-ml-low-latency-1`,
  /// `mobile-core-ml-versatile-1`, `mobile-core-ml-high-accuracy-1`, the train
  /// budget must be between 1,000 and 100,000 milli node hours, inclusive.
  /// The default value is 24, 000 which represents one day in wall time.
  public var trainBudgetMilliNodeHours: Int64 = 0

  /// Output only. The actual train cost of creating this model, expressed in
  /// milli node hours, i.e. 1,000 value in this field means 1 node hour.
  /// Guaranteed to not exceed the train budget.
  public var trainCostMilliNodeHours: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Model deployment metadata specific to Image Classification.
public struct Google_Cloud_Automl_V1_ImageClassificationModelDeploymentMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Input only. The number of nodes to deploy the model on. A node is an
  /// abstraction of a machine resource, which can handle online prediction QPS
  /// as given in the model's
  ///
  /// [node_qps][google.cloud.automl.v1.ImageClassificationModelMetadata.node_qps].
  /// Must be between 1 and 100, inclusive on both ends.
  public var nodeCount: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Model deployment metadata specific to Image Object Detection.
public struct Google_Cloud_Automl_V1_ImageObjectDetectionModelDeploymentMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Input only. The number of nodes to deploy the model on. A node is an
  /// abstraction of a machine resource, which can handle online prediction QPS
  /// as given in the model's
  ///
  /// [qps_per_node][google.cloud.automl.v1.ImageObjectDetectionModelMetadata.qps_per_node].
  /// Must be between 1 and 100, inclusive on both ends.
  public var nodeCount: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.automl.v1"

extension Google_Cloud_Automl_V1_ImageClassificationDatasetMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ImageClassificationDatasetMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "classification_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.classificationType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.classificationType != .unspecified {
      try visitor.visitSingularEnumField(value: self.classificationType, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1_ImageClassificationDatasetMetadata, rhs: Google_Cloud_Automl_V1_ImageClassificationDatasetMetadata) -> Bool {
    if lhs.classificationType != rhs.classificationType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1_ImageObjectDetectionDatasetMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ImageObjectDetectionDatasetMetadata"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1_ImageObjectDetectionDatasetMetadata, rhs: Google_Cloud_Automl_V1_ImageObjectDetectionDatasetMetadata) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1_ImageClassificationModelMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ImageClassificationModelMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "base_model_id"),
    16: .standard(proto: "train_budget_milli_node_hours"),
    17: .standard(proto: "train_cost_milli_node_hours"),
    5: .standard(proto: "stop_reason"),
    7: .standard(proto: "model_type"),
    13: .standard(proto: "node_qps"),
    14: .standard(proto: "node_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.baseModelID) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.stopReason) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.modelType) }()
      case 13: try { try decoder.decodeSingularDoubleField(value: &self.nodeQps) }()
      case 14: try { try decoder.decodeSingularInt64Field(value: &self.nodeCount) }()
      case 16: try { try decoder.decodeSingularInt64Field(value: &self.trainBudgetMilliNodeHours) }()
      case 17: try { try decoder.decodeSingularInt64Field(value: &self.trainCostMilliNodeHours) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.baseModelID.isEmpty {
      try visitor.visitSingularStringField(value: self.baseModelID, fieldNumber: 1)
    }
    if !self.stopReason.isEmpty {
      try visitor.visitSingularStringField(value: self.stopReason, fieldNumber: 5)
    }
    if !self.modelType.isEmpty {
      try visitor.visitSingularStringField(value: self.modelType, fieldNumber: 7)
    }
    if self.nodeQps != 0 {
      try visitor.visitSingularDoubleField(value: self.nodeQps, fieldNumber: 13)
    }
    if self.nodeCount != 0 {
      try visitor.visitSingularInt64Field(value: self.nodeCount, fieldNumber: 14)
    }
    if self.trainBudgetMilliNodeHours != 0 {
      try visitor.visitSingularInt64Field(value: self.trainBudgetMilliNodeHours, fieldNumber: 16)
    }
    if self.trainCostMilliNodeHours != 0 {
      try visitor.visitSingularInt64Field(value: self.trainCostMilliNodeHours, fieldNumber: 17)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1_ImageClassificationModelMetadata, rhs: Google_Cloud_Automl_V1_ImageClassificationModelMetadata) -> Bool {
    if lhs.baseModelID != rhs.baseModelID {return false}
    if lhs.trainBudgetMilliNodeHours != rhs.trainBudgetMilliNodeHours {return false}
    if lhs.trainCostMilliNodeHours != rhs.trainCostMilliNodeHours {return false}
    if lhs.stopReason != rhs.stopReason {return false}
    if lhs.modelType != rhs.modelType {return false}
    if lhs.nodeQps != rhs.nodeQps {return false}
    if lhs.nodeCount != rhs.nodeCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1_ImageObjectDetectionModelMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ImageObjectDetectionModelMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "model_type"),
    3: .standard(proto: "node_count"),
    4: .standard(proto: "node_qps"),
    5: .standard(proto: "stop_reason"),
    6: .standard(proto: "train_budget_milli_node_hours"),
    7: .standard(proto: "train_cost_milli_node_hours"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.modelType) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.nodeCount) }()
      case 4: try { try decoder.decodeSingularDoubleField(value: &self.nodeQps) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.stopReason) }()
      case 6: try { try decoder.decodeSingularInt64Field(value: &self.trainBudgetMilliNodeHours) }()
      case 7: try { try decoder.decodeSingularInt64Field(value: &self.trainCostMilliNodeHours) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.modelType.isEmpty {
      try visitor.visitSingularStringField(value: self.modelType, fieldNumber: 1)
    }
    if self.nodeCount != 0 {
      try visitor.visitSingularInt64Field(value: self.nodeCount, fieldNumber: 3)
    }
    if self.nodeQps != 0 {
      try visitor.visitSingularDoubleField(value: self.nodeQps, fieldNumber: 4)
    }
    if !self.stopReason.isEmpty {
      try visitor.visitSingularStringField(value: self.stopReason, fieldNumber: 5)
    }
    if self.trainBudgetMilliNodeHours != 0 {
      try visitor.visitSingularInt64Field(value: self.trainBudgetMilliNodeHours, fieldNumber: 6)
    }
    if self.trainCostMilliNodeHours != 0 {
      try visitor.visitSingularInt64Field(value: self.trainCostMilliNodeHours, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1_ImageObjectDetectionModelMetadata, rhs: Google_Cloud_Automl_V1_ImageObjectDetectionModelMetadata) -> Bool {
    if lhs.modelType != rhs.modelType {return false}
    if lhs.nodeCount != rhs.nodeCount {return false}
    if lhs.nodeQps != rhs.nodeQps {return false}
    if lhs.stopReason != rhs.stopReason {return false}
    if lhs.trainBudgetMilliNodeHours != rhs.trainBudgetMilliNodeHours {return false}
    if lhs.trainCostMilliNodeHours != rhs.trainCostMilliNodeHours {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1_ImageClassificationModelDeploymentMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ImageClassificationModelDeploymentMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "node_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.nodeCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.nodeCount != 0 {
      try visitor.visitSingularInt64Field(value: self.nodeCount, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1_ImageClassificationModelDeploymentMetadata, rhs: Google_Cloud_Automl_V1_ImageClassificationModelDeploymentMetadata) -> Bool {
    if lhs.nodeCount != rhs.nodeCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1_ImageObjectDetectionModelDeploymentMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ImageObjectDetectionModelDeploymentMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "node_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.nodeCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.nodeCount != 0 {
      try visitor.visitSingularInt64Field(value: self.nodeCount, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1_ImageObjectDetectionModelDeploymentMetadata, rhs: Google_Cloud_Automl_V1_ImageObjectDetectionModelDeploymentMetadata) -> Bool {
    if lhs.nodeCount != rhs.nodeCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
