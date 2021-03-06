// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/automl/v1/model_evaluation.proto
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

/// Evaluation results of a model.
public struct Google_Cloud_Automl_V1_ModelEvaluation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. Problem type specific evaluation metrics.
  public var metrics: Google_Cloud_Automl_V1_ModelEvaluation.OneOf_Metrics? = nil

  /// Model evaluation metrics for image, text, video and tables
  /// classification.
  /// Tables problem is considered a classification when the target column
  /// is CATEGORY DataType.
  public var classificationEvaluationMetrics: Google_Cloud_Automl_V1_ClassificationEvaluationMetrics {
    get {
      if case .classificationEvaluationMetrics(let v)? = metrics {return v}
      return Google_Cloud_Automl_V1_ClassificationEvaluationMetrics()
    }
    set {metrics = .classificationEvaluationMetrics(newValue)}
  }

  /// Model evaluation metrics for translation.
  public var translationEvaluationMetrics: Google_Cloud_Automl_V1_TranslationEvaluationMetrics {
    get {
      if case .translationEvaluationMetrics(let v)? = metrics {return v}
      return Google_Cloud_Automl_V1_TranslationEvaluationMetrics()
    }
    set {metrics = .translationEvaluationMetrics(newValue)}
  }

  /// Model evaluation metrics for image object detection.
  public var imageObjectDetectionEvaluationMetrics: Google_Cloud_Automl_V1_ImageObjectDetectionEvaluationMetrics {
    get {
      if case .imageObjectDetectionEvaluationMetrics(let v)? = metrics {return v}
      return Google_Cloud_Automl_V1_ImageObjectDetectionEvaluationMetrics()
    }
    set {metrics = .imageObjectDetectionEvaluationMetrics(newValue)}
  }

  /// Evaluation metrics for text sentiment models.
  public var textSentimentEvaluationMetrics: Google_Cloud_Automl_V1_TextSentimentEvaluationMetrics {
    get {
      if case .textSentimentEvaluationMetrics(let v)? = metrics {return v}
      return Google_Cloud_Automl_V1_TextSentimentEvaluationMetrics()
    }
    set {metrics = .textSentimentEvaluationMetrics(newValue)}
  }

  /// Evaluation metrics for text extraction models.
  public var textExtractionEvaluationMetrics: Google_Cloud_Automl_V1_TextExtractionEvaluationMetrics {
    get {
      if case .textExtractionEvaluationMetrics(let v)? = metrics {return v}
      return Google_Cloud_Automl_V1_TextExtractionEvaluationMetrics()
    }
    set {metrics = .textExtractionEvaluationMetrics(newValue)}
  }

  /// Output only. Resource name of the model evaluation.
  /// Format:
  ///
  /// `projects/{project_id}/locations/{location_id}/models/{model_id}/modelEvaluations/{model_evaluation_id}`
  public var name: String = String()

  /// Output only. The ID of the annotation spec that the model evaluation applies to. The
  /// The ID is empty for the overall model evaluation.
  /// For Tables annotation specs in the dataset do not exist and this ID is
  /// always not set, but for CLASSIFICATION
  ///
  /// [prediction_type-s][google.cloud.automl.v1.TablesModelMetadata.prediction_type]
  /// the
  /// [display_name][google.cloud.automl.v1.ModelEvaluation.display_name]
  /// field is used.
  public var annotationSpecID: String = String()

  /// Output only. The value of
  /// [display_name][google.cloud.automl.v1.AnnotationSpec.display_name]
  /// at the moment when the model was trained. Because this field returns a
  /// value at model training time, for different models trained from the same
  /// dataset, the values may differ, since display names could had been changed
  /// between the two model's trainings. For Tables CLASSIFICATION
  ///
  /// [prediction_type-s][google.cloud.automl.v1.TablesModelMetadata.prediction_type]
  /// distinct values of the target column at the moment of the model evaluation
  /// are populated here.
  /// The display_name is empty for the overall model evaluation.
  public var displayName: String = String()

  /// Output only. Timestamp when this model evaluation was created.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// Output only. The number of examples used for model evaluation, i.e. for
  /// which ground truth from time of model creation is compared against the
  /// predicted annotations created by the model.
  /// For overall ModelEvaluation (i.e. with annotation_spec_id not set) this is
  /// the total number of all examples used for evaluation.
  /// Otherwise, this is the count of examples that according to the ground
  /// truth were annotated by the
  ///
  /// [annotation_spec_id][google.cloud.automl.v1.ModelEvaluation.annotation_spec_id].
  public var evaluatedExampleCount: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Output only. Problem type specific evaluation metrics.
  public enum OneOf_Metrics: Equatable {
    /// Model evaluation metrics for image, text, video and tables
    /// classification.
    /// Tables problem is considered a classification when the target column
    /// is CATEGORY DataType.
    case classificationEvaluationMetrics(Google_Cloud_Automl_V1_ClassificationEvaluationMetrics)
    /// Model evaluation metrics for translation.
    case translationEvaluationMetrics(Google_Cloud_Automl_V1_TranslationEvaluationMetrics)
    /// Model evaluation metrics for image object detection.
    case imageObjectDetectionEvaluationMetrics(Google_Cloud_Automl_V1_ImageObjectDetectionEvaluationMetrics)
    /// Evaluation metrics for text sentiment models.
    case textSentimentEvaluationMetrics(Google_Cloud_Automl_V1_TextSentimentEvaluationMetrics)
    /// Evaluation metrics for text extraction models.
    case textExtractionEvaluationMetrics(Google_Cloud_Automl_V1_TextExtractionEvaluationMetrics)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Automl_V1_ModelEvaluation.OneOf_Metrics, rhs: Google_Cloud_Automl_V1_ModelEvaluation.OneOf_Metrics) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.classificationEvaluationMetrics, .classificationEvaluationMetrics): return {
        guard case .classificationEvaluationMetrics(let l) = lhs, case .classificationEvaluationMetrics(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.translationEvaluationMetrics, .translationEvaluationMetrics): return {
        guard case .translationEvaluationMetrics(let l) = lhs, case .translationEvaluationMetrics(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.imageObjectDetectionEvaluationMetrics, .imageObjectDetectionEvaluationMetrics): return {
        guard case .imageObjectDetectionEvaluationMetrics(let l) = lhs, case .imageObjectDetectionEvaluationMetrics(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.textSentimentEvaluationMetrics, .textSentimentEvaluationMetrics): return {
        guard case .textSentimentEvaluationMetrics(let l) = lhs, case .textSentimentEvaluationMetrics(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.textExtractionEvaluationMetrics, .textExtractionEvaluationMetrics): return {
        guard case .textExtractionEvaluationMetrics(let l) = lhs, case .textExtractionEvaluationMetrics(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.automl.v1"

extension Google_Cloud_Automl_V1_ModelEvaluation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ModelEvaluation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    8: .standard(proto: "classification_evaluation_metrics"),
    9: .standard(proto: "translation_evaluation_metrics"),
    12: .standard(proto: "image_object_detection_evaluation_metrics"),
    11: .standard(proto: "text_sentiment_evaluation_metrics"),
    13: .standard(proto: "text_extraction_evaluation_metrics"),
    1: .same(proto: "name"),
    2: .standard(proto: "annotation_spec_id"),
    15: .standard(proto: "display_name"),
    5: .standard(proto: "create_time"),
    6: .standard(proto: "evaluated_example_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.annotationSpecID) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 6: try { try decoder.decodeSingularInt32Field(value: &self.evaluatedExampleCount) }()
      case 8: try {
        var v: Google_Cloud_Automl_V1_ClassificationEvaluationMetrics?
        if let current = self.metrics {
          try decoder.handleConflictingOneOf()
          if case .classificationEvaluationMetrics(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.metrics = .classificationEvaluationMetrics(v)}
      }()
      case 9: try {
        var v: Google_Cloud_Automl_V1_TranslationEvaluationMetrics?
        if let current = self.metrics {
          try decoder.handleConflictingOneOf()
          if case .translationEvaluationMetrics(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.metrics = .translationEvaluationMetrics(v)}
      }()
      case 11: try {
        var v: Google_Cloud_Automl_V1_TextSentimentEvaluationMetrics?
        if let current = self.metrics {
          try decoder.handleConflictingOneOf()
          if case .textSentimentEvaluationMetrics(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.metrics = .textSentimentEvaluationMetrics(v)}
      }()
      case 12: try {
        var v: Google_Cloud_Automl_V1_ImageObjectDetectionEvaluationMetrics?
        if let current = self.metrics {
          try decoder.handleConflictingOneOf()
          if case .imageObjectDetectionEvaluationMetrics(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.metrics = .imageObjectDetectionEvaluationMetrics(v)}
      }()
      case 13: try {
        var v: Google_Cloud_Automl_V1_TextExtractionEvaluationMetrics?
        if let current = self.metrics {
          try decoder.handleConflictingOneOf()
          if case .textExtractionEvaluationMetrics(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.metrics = .textExtractionEvaluationMetrics(v)}
      }()
      case 15: try { try decoder.decodeSingularStringField(value: &self.displayName) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.annotationSpecID.isEmpty {
      try visitor.visitSingularStringField(value: self.annotationSpecID, fieldNumber: 2)
    }
    if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if self.evaluatedExampleCount != 0 {
      try visitor.visitSingularInt32Field(value: self.evaluatedExampleCount, fieldNumber: 6)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.metrics {
    case .classificationEvaluationMetrics?: try {
      guard case .classificationEvaluationMetrics(let v)? = self.metrics else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }()
    case .translationEvaluationMetrics?: try {
      guard case .translationEvaluationMetrics(let v)? = self.metrics else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }()
    case .textSentimentEvaluationMetrics?: try {
      guard case .textSentimentEvaluationMetrics(let v)? = self.metrics else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
    }()
    case .imageObjectDetectionEvaluationMetrics?: try {
      guard case .imageObjectDetectionEvaluationMetrics(let v)? = self.metrics else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 12)
    }()
    case .textExtractionEvaluationMetrics?: try {
      guard case .textExtractionEvaluationMetrics(let v)? = self.metrics else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 13)
    }()
    case nil: break
    }
    if !self.displayName.isEmpty {
      try visitor.visitSingularStringField(value: self.displayName, fieldNumber: 15)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1_ModelEvaluation, rhs: Google_Cloud_Automl_V1_ModelEvaluation) -> Bool {
    if lhs.metrics != rhs.metrics {return false}
    if lhs.name != rhs.name {return false}
    if lhs.annotationSpecID != rhs.annotationSpecID {return false}
    if lhs.displayName != rhs.displayName {return false}
    if lhs._createTime != rhs._createTime {return false}
    if lhs.evaluatedExampleCount != rhs.evaluatedExampleCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
