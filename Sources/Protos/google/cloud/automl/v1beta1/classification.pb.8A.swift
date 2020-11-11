// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/automl/v1beta1/classification.proto
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

/// Type of the classification problem.
public enum Google_Cloud_Automl_V1beta1_ClassificationType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// An un-set value of this enum.
  case unspecified // = 0

  /// At most one label is allowed per example.
  case multiclass // = 1

  /// Multiple labels are allowed for one example.
  case multilabel // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .multiclass
    case 2: self = .multilabel
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .multiclass: return 1
    case .multilabel: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Cloud_Automl_V1beta1_ClassificationType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Automl_V1beta1_ClassificationType] = [
    .unspecified,
    .multiclass,
    .multilabel,
  ]
}

#endif  // swift(>=4.2)

/// Contains annotation details specific to classification.
public struct Google_Cloud_Automl_V1beta1_ClassificationAnnotation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. A confidence estimate between 0.0 and 1.0. A higher value
  /// means greater confidence that the annotation is positive. If a user
  /// approves an annotation as negative or positive, the score value remains
  /// unchanged. If a user creates an annotation, the score is 0 for negative or
  /// 1 for positive.
  public var score: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Contains annotation details specific to video classification.
public struct Google_Cloud_Automl_V1beta1_VideoClassificationAnnotation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. Expresses the type of video classification. Possible values:
  ///
  /// *  `segment` - Classification done on a specified by user
  ///        time segment of a video. AnnotationSpec is answered to be present
  ///        in that time segment, if it is present in any part of it. The video
  ///        ML model evaluations are done only for this type of classification.
  ///
  /// *  `shot`- Shot-level classification.
  ///        AutoML Video Intelligence determines the boundaries
  ///        for each camera shot in the entire segment of the video that user
  ///        specified in the request configuration. AutoML Video Intelligence
  ///        then returns labels and their confidence scores for each detected
  ///        shot, along with the start and end time of the shot.
  ///        WARNING: Model evaluation is not done for this classification type,
  ///        the quality of it depends on training data, but there are no
  ///        metrics provided to describe that quality.
  ///
  /// *  `1s_interval` - AutoML Video Intelligence returns labels and their
  ///        confidence scores for each second of the entire segment of the video
  ///        that user specified in the request configuration.
  ///        WARNING: Model evaluation is not done for this classification type,
  ///        the quality of it depends on training data, but there are no
  ///        metrics provided to describe that quality.
  public var type: String = String()

  /// Output only . The classification details of this annotation.
  public var classificationAnnotation: Google_Cloud_Automl_V1beta1_ClassificationAnnotation {
    get {return _classificationAnnotation ?? Google_Cloud_Automl_V1beta1_ClassificationAnnotation()}
    set {_classificationAnnotation = newValue}
  }
  /// Returns true if `classificationAnnotation` has been explicitly set.
  public var hasClassificationAnnotation: Bool {return self._classificationAnnotation != nil}
  /// Clears the value of `classificationAnnotation`. Subsequent reads from it will return its default value.
  public mutating func clearClassificationAnnotation() {self._classificationAnnotation = nil}

  /// Output only . The time segment of the video to which the
  /// annotation applies.
  public var timeSegment: Google_Cloud_Automl_V1beta1_TimeSegment {
    get {return _timeSegment ?? Google_Cloud_Automl_V1beta1_TimeSegment()}
    set {_timeSegment = newValue}
  }
  /// Returns true if `timeSegment` has been explicitly set.
  public var hasTimeSegment: Bool {return self._timeSegment != nil}
  /// Clears the value of `timeSegment`. Subsequent reads from it will return its default value.
  public mutating func clearTimeSegment() {self._timeSegment = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _classificationAnnotation: Google_Cloud_Automl_V1beta1_ClassificationAnnotation? = nil
  fileprivate var _timeSegment: Google_Cloud_Automl_V1beta1_TimeSegment? = nil
}

/// Model evaluation metrics for classification problems.
/// Note: For Video Classification this metrics only describe quality of the
/// Video Classification predictions of "segment_classification" type.
public struct Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The Area Under Precision-Recall Curve metric. Micro-averaged
  /// for the overall evaluation.
  public var auPrc: Float = 0

  /// Output only. The Area Under Precision-Recall Curve metric based on priors.
  /// Micro-averaged for the overall evaluation.
  /// Deprecated.
  public var baseAuPrc: Float = 0

  /// Output only. The Area Under Receiver Operating Characteristic curve metric.
  /// Micro-averaged for the overall evaluation.
  public var auRoc: Float = 0

  /// Output only. The Log Loss metric.
  public var logLoss: Float = 0

  /// Output only. Metrics for each confidence_threshold in
  /// 0.00,0.05,0.10,...,0.95,0.96,0.97,0.98,0.99 and
  /// position_threshold = INT32_MAX_VALUE.
  /// ROC and precision-recall curves, and other aggregated metrics are derived
  /// from them. The confidence metrics entries may also be supplied for
  /// additional values of position_threshold, but from these no aggregated
  /// metrics are computed.
  public var confidenceMetricsEntry: [Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfidenceMetricsEntry] = []

  /// Output only. Confusion matrix of the evaluation.
  /// Only set for MULTICLASS classification problems where number
  /// of labels is no more than 10.
  /// Only set for model level evaluation, not for evaluation per label.
  public var confusionMatrix: Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfusionMatrix {
    get {return _confusionMatrix ?? Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfusionMatrix()}
    set {_confusionMatrix = newValue}
  }
  /// Returns true if `confusionMatrix` has been explicitly set.
  public var hasConfusionMatrix: Bool {return self._confusionMatrix != nil}
  /// Clears the value of `confusionMatrix`. Subsequent reads from it will return its default value.
  public mutating func clearConfusionMatrix() {self._confusionMatrix = nil}

  /// Output only. The annotation spec ids used for this evaluation.
  public var annotationSpecID: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Metrics for a single confidence threshold.
  public struct ConfidenceMetricsEntry {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Output only. Metrics are computed with an assumption that the model
    /// never returns predictions with score lower than this value.
    public var confidenceThreshold: Float = 0

    /// Output only. Metrics are computed with an assumption that the model
    /// always returns at most this many predictions (ordered by their score,
    /// descendingly), but they all still need to meet the confidence_threshold.
    public var positionThreshold: Int32 = 0

    /// Output only. Recall (True Positive Rate) for the given confidence
    /// threshold.
    public var recall: Float = 0

    /// Output only. Precision for the given confidence threshold.
    public var precision: Float = 0

    /// Output only. False Positive Rate for the given confidence threshold.
    public var falsePositiveRate: Float = 0

    /// Output only. The harmonic mean of recall and precision.
    public var f1Score: Float = 0

    /// Output only. The Recall (True Positive Rate) when only considering the
    /// label that has the highest prediction score and not below the confidence
    /// threshold for each example.
    public var recallAt1: Float = 0

    /// Output only. The precision when only considering the label that has the
    /// highest prediction score and not below the confidence threshold for each
    /// example.
    public var precisionAt1: Float = 0

    /// Output only. The False Positive Rate when only considering the label that
    /// has the highest prediction score and not below the confidence threshold
    /// for each example.
    public var falsePositiveRateAt1: Float = 0

    /// Output only. The harmonic mean of [recall_at1][google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfidenceMetricsEntry.recall_at1] and [precision_at1][google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfidenceMetricsEntry.precision_at1].
    public var f1ScoreAt1: Float = 0

    /// Output only. The number of model created labels that match a ground truth
    /// label.
    public var truePositiveCount: Int64 = 0

    /// Output only. The number of model created labels that do not match a
    /// ground truth label.
    public var falsePositiveCount: Int64 = 0

    /// Output only. The number of ground truth labels that are not matched
    /// by a model created label.
    public var falseNegativeCount: Int64 = 0

    /// Output only. The number of labels that were not created by the model,
    /// but if they would, they would not match a ground truth label.
    public var trueNegativeCount: Int64 = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// Confusion matrix of the model running the classification.
  public struct ConfusionMatrix {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Output only. IDs of the annotation specs used in the confusion matrix.
    /// For Tables CLASSIFICATION
    ///
    /// [prediction_type][google.cloud.automl.v1beta1.TablesModelMetadata.prediction_type]
    /// only list of [annotation_spec_display_name-s][] is populated.
    public var annotationSpecID: [String] = []

    /// Output only. Display name of the annotation specs used in the confusion
    /// matrix, as they were at the moment of the evaluation. For Tables
    /// CLASSIFICATION
    ///
    /// [prediction_type-s][google.cloud.automl.v1beta1.TablesModelMetadata.prediction_type],
    /// distinct values of the target column at the moment of the model
    /// evaluation are populated here.
    public var displayName: [String] = []

    /// Output only. Rows in the confusion matrix. The number of rows is equal to
    /// the size of `annotation_spec_id`.
    /// `row[i].example_count[j]` is the number of examples that have ground
    /// truth of the `annotation_spec_id[i]` and are predicted as
    /// `annotation_spec_id[j]` by the model being evaluated.
    public var row: [Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfusionMatrix.Row] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    /// Output only. A row in the confusion matrix.
    public struct Row {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      /// Output only. Value of the specific cell in the confusion matrix.
      /// The number of values each row has (i.e. the length of the row) is equal
      /// to the length of the `annotation_spec_id` field or, if that one is not
      /// populated, length of the [display_name][google.cloud.automl.v1beta1.ClassificationEvaluationMetrics.ConfusionMatrix.display_name] field.
      public var exampleCount: [Int32] = []

      public var unknownFields = SwiftProtobuf.UnknownStorage()

      public init() {}
    }

    public init() {}
  }

  public init() {}

  fileprivate var _confusionMatrix: Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfusionMatrix? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.automl.v1beta1"

extension Google_Cloud_Automl_V1beta1_ClassificationType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CLASSIFICATION_TYPE_UNSPECIFIED"),
    1: .same(proto: "MULTICLASS"),
    2: .same(proto: "MULTILABEL"),
  ]
}

extension Google_Cloud_Automl_V1beta1_ClassificationAnnotation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClassificationAnnotation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "score"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFloatField(value: &self.score) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.score != 0 {
      try visitor.visitSingularFloatField(value: self.score, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_ClassificationAnnotation, rhs: Google_Cloud_Automl_V1beta1_ClassificationAnnotation) -> Bool {
    if lhs.score != rhs.score {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1beta1_VideoClassificationAnnotation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".VideoClassificationAnnotation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .standard(proto: "classification_annotation"),
    3: .standard(proto: "time_segment"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.type) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._classificationAnnotation) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._timeSegment) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 1)
    }
    if let v = self._classificationAnnotation {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._timeSegment {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_VideoClassificationAnnotation, rhs: Google_Cloud_Automl_V1beta1_VideoClassificationAnnotation) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs._classificationAnnotation != rhs._classificationAnnotation {return false}
    if lhs._timeSegment != rhs._timeSegment {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClassificationEvaluationMetrics"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "au_prc"),
    2: .standard(proto: "base_au_prc"),
    6: .standard(proto: "au_roc"),
    7: .standard(proto: "log_loss"),
    3: .standard(proto: "confidence_metrics_entry"),
    4: .standard(proto: "confusion_matrix"),
    5: .standard(proto: "annotation_spec_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFloatField(value: &self.auPrc) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.baseAuPrc) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.confidenceMetricsEntry) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._confusionMatrix) }()
      case 5: try { try decoder.decodeRepeatedStringField(value: &self.annotationSpecID) }()
      case 6: try { try decoder.decodeSingularFloatField(value: &self.auRoc) }()
      case 7: try { try decoder.decodeSingularFloatField(value: &self.logLoss) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.auPrc != 0 {
      try visitor.visitSingularFloatField(value: self.auPrc, fieldNumber: 1)
    }
    if self.baseAuPrc != 0 {
      try visitor.visitSingularFloatField(value: self.baseAuPrc, fieldNumber: 2)
    }
    if !self.confidenceMetricsEntry.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.confidenceMetricsEntry, fieldNumber: 3)
    }
    if let v = self._confusionMatrix {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if !self.annotationSpecID.isEmpty {
      try visitor.visitRepeatedStringField(value: self.annotationSpecID, fieldNumber: 5)
    }
    if self.auRoc != 0 {
      try visitor.visitSingularFloatField(value: self.auRoc, fieldNumber: 6)
    }
    if self.logLoss != 0 {
      try visitor.visitSingularFloatField(value: self.logLoss, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics, rhs: Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics) -> Bool {
    if lhs.auPrc != rhs.auPrc {return false}
    if lhs.baseAuPrc != rhs.baseAuPrc {return false}
    if lhs.auRoc != rhs.auRoc {return false}
    if lhs.logLoss != rhs.logLoss {return false}
    if lhs.confidenceMetricsEntry != rhs.confidenceMetricsEntry {return false}
    if lhs._confusionMatrix != rhs._confusionMatrix {return false}
    if lhs.annotationSpecID != rhs.annotationSpecID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfidenceMetricsEntry: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.protoMessageName + ".ConfidenceMetricsEntry"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "confidence_threshold"),
    14: .standard(proto: "position_threshold"),
    2: .same(proto: "recall"),
    3: .same(proto: "precision"),
    8: .standard(proto: "false_positive_rate"),
    4: .standard(proto: "f1_score"),
    5: .standard(proto: "recall_at1"),
    6: .standard(proto: "precision_at1"),
    9: .standard(proto: "false_positive_rate_at1"),
    7: .standard(proto: "f1_score_at1"),
    10: .standard(proto: "true_positive_count"),
    11: .standard(proto: "false_positive_count"),
    12: .standard(proto: "false_negative_count"),
    13: .standard(proto: "true_negative_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFloatField(value: &self.confidenceThreshold) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.recall) }()
      case 3: try { try decoder.decodeSingularFloatField(value: &self.precision) }()
      case 4: try { try decoder.decodeSingularFloatField(value: &self.f1Score) }()
      case 5: try { try decoder.decodeSingularFloatField(value: &self.recallAt1) }()
      case 6: try { try decoder.decodeSingularFloatField(value: &self.precisionAt1) }()
      case 7: try { try decoder.decodeSingularFloatField(value: &self.f1ScoreAt1) }()
      case 8: try { try decoder.decodeSingularFloatField(value: &self.falsePositiveRate) }()
      case 9: try { try decoder.decodeSingularFloatField(value: &self.falsePositiveRateAt1) }()
      case 10: try { try decoder.decodeSingularInt64Field(value: &self.truePositiveCount) }()
      case 11: try { try decoder.decodeSingularInt64Field(value: &self.falsePositiveCount) }()
      case 12: try { try decoder.decodeSingularInt64Field(value: &self.falseNegativeCount) }()
      case 13: try { try decoder.decodeSingularInt64Field(value: &self.trueNegativeCount) }()
      case 14: try { try decoder.decodeSingularInt32Field(value: &self.positionThreshold) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.confidenceThreshold != 0 {
      try visitor.visitSingularFloatField(value: self.confidenceThreshold, fieldNumber: 1)
    }
    if self.recall != 0 {
      try visitor.visitSingularFloatField(value: self.recall, fieldNumber: 2)
    }
    if self.precision != 0 {
      try visitor.visitSingularFloatField(value: self.precision, fieldNumber: 3)
    }
    if self.f1Score != 0 {
      try visitor.visitSingularFloatField(value: self.f1Score, fieldNumber: 4)
    }
    if self.recallAt1 != 0 {
      try visitor.visitSingularFloatField(value: self.recallAt1, fieldNumber: 5)
    }
    if self.precisionAt1 != 0 {
      try visitor.visitSingularFloatField(value: self.precisionAt1, fieldNumber: 6)
    }
    if self.f1ScoreAt1 != 0 {
      try visitor.visitSingularFloatField(value: self.f1ScoreAt1, fieldNumber: 7)
    }
    if self.falsePositiveRate != 0 {
      try visitor.visitSingularFloatField(value: self.falsePositiveRate, fieldNumber: 8)
    }
    if self.falsePositiveRateAt1 != 0 {
      try visitor.visitSingularFloatField(value: self.falsePositiveRateAt1, fieldNumber: 9)
    }
    if self.truePositiveCount != 0 {
      try visitor.visitSingularInt64Field(value: self.truePositiveCount, fieldNumber: 10)
    }
    if self.falsePositiveCount != 0 {
      try visitor.visitSingularInt64Field(value: self.falsePositiveCount, fieldNumber: 11)
    }
    if self.falseNegativeCount != 0 {
      try visitor.visitSingularInt64Field(value: self.falseNegativeCount, fieldNumber: 12)
    }
    if self.trueNegativeCount != 0 {
      try visitor.visitSingularInt64Field(value: self.trueNegativeCount, fieldNumber: 13)
    }
    if self.positionThreshold != 0 {
      try visitor.visitSingularInt32Field(value: self.positionThreshold, fieldNumber: 14)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfidenceMetricsEntry, rhs: Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfidenceMetricsEntry) -> Bool {
    if lhs.confidenceThreshold != rhs.confidenceThreshold {return false}
    if lhs.positionThreshold != rhs.positionThreshold {return false}
    if lhs.recall != rhs.recall {return false}
    if lhs.precision != rhs.precision {return false}
    if lhs.falsePositiveRate != rhs.falsePositiveRate {return false}
    if lhs.f1Score != rhs.f1Score {return false}
    if lhs.recallAt1 != rhs.recallAt1 {return false}
    if lhs.precisionAt1 != rhs.precisionAt1 {return false}
    if lhs.falsePositiveRateAt1 != rhs.falsePositiveRateAt1 {return false}
    if lhs.f1ScoreAt1 != rhs.f1ScoreAt1 {return false}
    if lhs.truePositiveCount != rhs.truePositiveCount {return false}
    if lhs.falsePositiveCount != rhs.falsePositiveCount {return false}
    if lhs.falseNegativeCount != rhs.falseNegativeCount {return false}
    if lhs.trueNegativeCount != rhs.trueNegativeCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfusionMatrix: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.protoMessageName + ".ConfusionMatrix"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "annotation_spec_id"),
    3: .standard(proto: "display_name"),
    2: .same(proto: "row"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.annotationSpecID) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.row) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.displayName) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.annotationSpecID.isEmpty {
      try visitor.visitRepeatedStringField(value: self.annotationSpecID, fieldNumber: 1)
    }
    if !self.row.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.row, fieldNumber: 2)
    }
    if !self.displayName.isEmpty {
      try visitor.visitRepeatedStringField(value: self.displayName, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfusionMatrix, rhs: Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfusionMatrix) -> Bool {
    if lhs.annotationSpecID != rhs.annotationSpecID {return false}
    if lhs.displayName != rhs.displayName {return false}
    if lhs.row != rhs.row {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfusionMatrix.Row: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfusionMatrix.protoMessageName + ".Row"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "example_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedInt32Field(value: &self.exampleCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.exampleCount.isEmpty {
      try visitor.visitPackedInt32Field(value: self.exampleCount, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfusionMatrix.Row, rhs: Google_Cloud_Automl_V1beta1_ClassificationEvaluationMetrics.ConfusionMatrix.Row) -> Bool {
    if lhs.exampleCount != rhs.exampleCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
