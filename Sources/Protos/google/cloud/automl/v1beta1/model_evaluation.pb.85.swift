// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/automl/v1beta1/model_evaluation.proto
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
public struct Google_Cloud_Automl_V1beta1_ModelEvaluation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. Problem type specific evaluation metrics.
  public var metrics: OneOf_Metrics? {
    get {return _storage._metrics}
    set {_uniqueStorage()._metrics = newValue}
  }

  /// Model evaluation metrics for image, text, video and tables
  /// classification.
  /// Tables problem is considered a classification when the target column
  /// is CATEGORY DataType.
  public var classificationEvaluationMetrics: Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics {
    get {
      if case .classificationEvaluationMetrics(let v)? = _storage._metrics {return v}
      return Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics()
    }
    set {_uniqueStorage()._metrics = .classificationEvaluationMetrics(newValue)}
  }

  /// Model evaluation metrics for Tables regression.
  /// Tables problem is considered a regression when the target column
  /// has FLOAT64 DataType.
  public var regressionEvaluationMetrics: Google_Cloud_Automl_V1beta1_RegressionEvaluationMetrics {
    get {
      if case .regressionEvaluationMetrics(let v)? = _storage._metrics {return v}
      return Google_Cloud_Automl_V1beta1_RegressionEvaluationMetrics()
    }
    set {_uniqueStorage()._metrics = .regressionEvaluationMetrics(newValue)}
  }

  /// Model evaluation metrics for translation.
  public var translationEvaluationMetrics: Google_Cloud_Automl_V1beta1_TranslationEvaluationMetrics {
    get {
      if case .translationEvaluationMetrics(let v)? = _storage._metrics {return v}
      return Google_Cloud_Automl_V1beta1_TranslationEvaluationMetrics()
    }
    set {_uniqueStorage()._metrics = .translationEvaluationMetrics(newValue)}
  }

  /// Model evaluation metrics for image object detection.
  public var imageObjectDetectionEvaluationMetrics: Google_Cloud_Automl_V1beta1_ImageObjectDetectionEvaluationMetrics {
    get {
      if case .imageObjectDetectionEvaluationMetrics(let v)? = _storage._metrics {return v}
      return Google_Cloud_Automl_V1beta1_ImageObjectDetectionEvaluationMetrics()
    }
    set {_uniqueStorage()._metrics = .imageObjectDetectionEvaluationMetrics(newValue)}
  }

  /// Model evaluation metrics for video object tracking.
  public var videoObjectTrackingEvaluationMetrics: Google_Cloud_Automl_V1beta1_VideoObjectTrackingEvaluationMetrics {
    get {
      if case .videoObjectTrackingEvaluationMetrics(let v)? = _storage._metrics {return v}
      return Google_Cloud_Automl_V1beta1_VideoObjectTrackingEvaluationMetrics()
    }
    set {_uniqueStorage()._metrics = .videoObjectTrackingEvaluationMetrics(newValue)}
  }

  /// Evaluation metrics for text sentiment models.
  public var textSentimentEvaluationMetrics: Google_Cloud_Automl_V1beta1_TextSentimentEvaluationMetrics {
    get {
      if case .textSentimentEvaluationMetrics(let v)? = _storage._metrics {return v}
      return Google_Cloud_Automl_V1beta1_TextSentimentEvaluationMetrics()
    }
    set {_uniqueStorage()._metrics = .textSentimentEvaluationMetrics(newValue)}
  }

  /// Evaluation metrics for text extraction models.
  public var textExtractionEvaluationMetrics: Google_Cloud_Automl_V1beta1_TextExtractionEvaluationMetrics {
    get {
      if case .textExtractionEvaluationMetrics(let v)? = _storage._metrics {return v}
      return Google_Cloud_Automl_V1beta1_TextExtractionEvaluationMetrics()
    }
    set {_uniqueStorage()._metrics = .textExtractionEvaluationMetrics(newValue)}
  }

  /// Output only. Resource name of the model evaluation.
  /// Format:
  ///
  /// `projects/{project_id}/locations/{location_id}/models/{model_id}/modelEvaluations/{model_evaluation_id}`
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// Output only. The ID of the annotation spec that the model evaluation applies to. The
  /// The ID is empty for the overall model evaluation.
  /// For Tables annotation specs in the dataset do not exist and this ID is
  /// always not set, but for CLASSIFICATION
  ///
  /// [prediction_type-s][google.cloud.automl.v1beta1.TablesModelMetadata.prediction_type]
  /// the
  /// [display_name][google.cloud.automl.v1beta1.ModelEvaluation.display_name]
  /// field is used.
  public var annotationSpecID: String {
    get {return _storage._annotationSpecID}
    set {_uniqueStorage()._annotationSpecID = newValue}
  }

  /// Output only. The value of
  /// [display_name][google.cloud.automl.v1beta1.AnnotationSpec.display_name] at
  /// the moment when the model was trained. Because this field returns a value
  /// at model training time, for different models trained from the same dataset,
  /// the values may differ, since display names could had been changed between
  /// the two model's trainings.
  /// For Tables CLASSIFICATION
  ///
  /// [prediction_type-s][google.cloud.automl.v1beta1.TablesModelMetadata.prediction_type]
  /// distinct values of the target column at the moment of the model evaluation
  /// are populated here.
  /// The display_name is empty for the overall model evaluation.
  public var displayName: String {
    get {return _storage._displayName}
    set {_uniqueStorage()._displayName = newValue}
  }

  /// Output only. Timestamp when this model evaluation was created.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return _storage._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {_uniqueStorage()._createTime = nil}

  /// Output only. The number of examples used for model evaluation, i.e. for
  /// which ground truth from time of model creation is compared against the
  /// predicted annotations created by the model.
  /// For overall ModelEvaluation (i.e. with annotation_spec_id not set) this is
  /// the total number of all examples used for evaluation.
  /// Otherwise, this is the count of examples that according to the ground
  /// truth were annotated by the
  ///
  /// [annotation_spec_id][google.cloud.automl.v1beta1.ModelEvaluation.annotation_spec_id].
  public var evaluatedExampleCount: Int32 {
    get {return _storage._evaluatedExampleCount}
    set {_uniqueStorage()._evaluatedExampleCount = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Output only. Problem type specific evaluation metrics.
  public enum OneOf_Metrics: Equatable {
    /// Model evaluation metrics for image, text, video and tables
    /// classification.
    /// Tables problem is considered a classification when the target column
    /// is CATEGORY DataType.
    case classificationEvaluationMetrics(Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics)
    /// Model evaluation metrics for Tables regression.
    /// Tables problem is considered a regression when the target column
    /// has FLOAT64 DataType.
    case regressionEvaluationMetrics(Google_Cloud_Automl_V1beta1_RegressionEvaluationMetrics)
    /// Model evaluation metrics for translation.
    case translationEvaluationMetrics(Google_Cloud_Automl_V1beta1_TranslationEvaluationMetrics)
    /// Model evaluation metrics for image object detection.
    case imageObjectDetectionEvaluationMetrics(Google_Cloud_Automl_V1beta1_ImageObjectDetectionEvaluationMetrics)
    /// Model evaluation metrics for video object tracking.
    case videoObjectTrackingEvaluationMetrics(Google_Cloud_Automl_V1beta1_VideoObjectTrackingEvaluationMetrics)
    /// Evaluation metrics for text sentiment models.
    case textSentimentEvaluationMetrics(Google_Cloud_Automl_V1beta1_TextSentimentEvaluationMetrics)
    /// Evaluation metrics for text extraction models.
    case textExtractionEvaluationMetrics(Google_Cloud_Automl_V1beta1_TextExtractionEvaluationMetrics)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Automl_V1beta1_ModelEvaluation.OneOf_Metrics, rhs: Google_Cloud_Automl_V1beta1_ModelEvaluation.OneOf_Metrics) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.classificationEvaluationMetrics, .classificationEvaluationMetrics): return {
        guard case .classificationEvaluationMetrics(let l) = lhs, case .classificationEvaluationMetrics(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.regressionEvaluationMetrics, .regressionEvaluationMetrics): return {
        guard case .regressionEvaluationMetrics(let l) = lhs, case .regressionEvaluationMetrics(let r) = rhs else { preconditionFailure() }
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
      case (.videoObjectTrackingEvaluationMetrics, .videoObjectTrackingEvaluationMetrics): return {
        guard case .videoObjectTrackingEvaluationMetrics(let l) = lhs, case .videoObjectTrackingEvaluationMetrics(let r) = rhs else { preconditionFailure() }
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

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.automl.v1beta1"

extension Google_Cloud_Automl_V1beta1_ModelEvaluation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ModelEvaluation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    8: .standard(proto: "classification_evaluation_metrics"),
    24: .standard(proto: "regression_evaluation_metrics"),
    9: .standard(proto: "translation_evaluation_metrics"),
    12: .standard(proto: "image_object_detection_evaluation_metrics"),
    14: .standard(proto: "video_object_tracking_evaluation_metrics"),
    11: .standard(proto: "text_sentiment_evaluation_metrics"),
    13: .standard(proto: "text_extraction_evaluation_metrics"),
    1: .same(proto: "name"),
    2: .standard(proto: "annotation_spec_id"),
    15: .standard(proto: "display_name"),
    5: .standard(proto: "create_time"),
    6: .standard(proto: "evaluated_example_count"),
  ]

  fileprivate class _StorageClass {
    var _metrics: Google_Cloud_Automl_V1beta1_ModelEvaluation.OneOf_Metrics?
    var _name: String = String()
    var _annotationSpecID: String = String()
    var _displayName: String = String()
    var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _evaluatedExampleCount: Int32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _metrics = source._metrics
      _name = source._name
      _annotationSpecID = source._annotationSpecID
      _displayName = source._displayName
      _createTime = source._createTime
      _evaluatedExampleCount = source._evaluatedExampleCount
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularStringField(value: &_storage._name) }()
        case 2: try { try decoder.decodeSingularStringField(value: &_storage._annotationSpecID) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._createTime) }()
        case 6: try { try decoder.decodeSingularInt32Field(value: &_storage._evaluatedExampleCount) }()
        case 8: try {
          var v: Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics?
          if let current = _storage._metrics {
            try decoder.handleConflictingOneOf()
            if case .classificationEvaluationMetrics(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._metrics = .classificationEvaluationMetrics(v)}
        }()
        case 9: try {
          var v: Google_Cloud_Automl_V1beta1_TranslationEvaluationMetrics?
          if let current = _storage._metrics {
            try decoder.handleConflictingOneOf()
            if case .translationEvaluationMetrics(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._metrics = .translationEvaluationMetrics(v)}
        }()
        case 11: try {
          var v: Google_Cloud_Automl_V1beta1_TextSentimentEvaluationMetrics?
          if let current = _storage._metrics {
            try decoder.handleConflictingOneOf()
            if case .textSentimentEvaluationMetrics(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._metrics = .textSentimentEvaluationMetrics(v)}
        }()
        case 12: try {
          var v: Google_Cloud_Automl_V1beta1_ImageObjectDetectionEvaluationMetrics?
          if let current = _storage._metrics {
            try decoder.handleConflictingOneOf()
            if case .imageObjectDetectionEvaluationMetrics(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._metrics = .imageObjectDetectionEvaluationMetrics(v)}
        }()
        case 13: try {
          var v: Google_Cloud_Automl_V1beta1_TextExtractionEvaluationMetrics?
          if let current = _storage._metrics {
            try decoder.handleConflictingOneOf()
            if case .textExtractionEvaluationMetrics(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._metrics = .textExtractionEvaluationMetrics(v)}
        }()
        case 14: try {
          var v: Google_Cloud_Automl_V1beta1_VideoObjectTrackingEvaluationMetrics?
          if let current = _storage._metrics {
            try decoder.handleConflictingOneOf()
            if case .videoObjectTrackingEvaluationMetrics(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._metrics = .videoObjectTrackingEvaluationMetrics(v)}
        }()
        case 15: try { try decoder.decodeSingularStringField(value: &_storage._displayName) }()
        case 24: try {
          var v: Google_Cloud_Automl_V1beta1_RegressionEvaluationMetrics?
          if let current = _storage._metrics {
            try decoder.handleConflictingOneOf()
            if case .regressionEvaluationMetrics(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._metrics = .regressionEvaluationMetrics(v)}
        }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 1)
      }
      if !_storage._annotationSpecID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._annotationSpecID, fieldNumber: 2)
      }
      if let v = _storage._createTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if _storage._evaluatedExampleCount != 0 {
        try visitor.visitSingularInt32Field(value: _storage._evaluatedExampleCount, fieldNumber: 6)
      }
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch _storage._metrics {
      case .classificationEvaluationMetrics?: try {
        guard case .classificationEvaluationMetrics(let v)? = _storage._metrics else { preconditionFailure() }
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      }()
      case .translationEvaluationMetrics?: try {
        guard case .translationEvaluationMetrics(let v)? = _storage._metrics else { preconditionFailure() }
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      }()
      case .textSentimentEvaluationMetrics?: try {
        guard case .textSentimentEvaluationMetrics(let v)? = _storage._metrics else { preconditionFailure() }
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      }()
      case .imageObjectDetectionEvaluationMetrics?: try {
        guard case .imageObjectDetectionEvaluationMetrics(let v)? = _storage._metrics else { preconditionFailure() }
        try visitor.visitSingularMessageField(value: v, fieldNumber: 12)
      }()
      case .textExtractionEvaluationMetrics?: try {
        guard case .textExtractionEvaluationMetrics(let v)? = _storage._metrics else { preconditionFailure() }
        try visitor.visitSingularMessageField(value: v, fieldNumber: 13)
      }()
      case .videoObjectTrackingEvaluationMetrics?: try {
        guard case .videoObjectTrackingEvaluationMetrics(let v)? = _storage._metrics else { preconditionFailure() }
        try visitor.visitSingularMessageField(value: v, fieldNumber: 14)
      }()
      default: break
      }
      if !_storage._displayName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._displayName, fieldNumber: 15)
      }
      if case .regressionEvaluationMetrics(let v)? = _storage._metrics {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 24)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_ModelEvaluation, rhs: Google_Cloud_Automl_V1beta1_ModelEvaluation) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._metrics != rhs_storage._metrics {return false}
        if _storage._name != rhs_storage._name {return false}
        if _storage._annotationSpecID != rhs_storage._annotationSpecID {return false}
        if _storage._displayName != rhs_storage._displayName {return false}
        if _storage._createTime != rhs_storage._createTime {return false}
        if _storage._evaluatedExampleCount != rhs_storage._evaluatedExampleCount {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
