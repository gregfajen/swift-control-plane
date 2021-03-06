// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/automl/v1/detection.proto
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

/// Annotation details for image object detection.
public struct Google_Cloud_Automl_V1_ImageObjectDetectionAnnotation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The rectangle representing the object location.
  public var boundingBox: Google_Cloud_Automl_V1_BoundingPoly {
    get {return _boundingBox ?? Google_Cloud_Automl_V1_BoundingPoly()}
    set {_boundingBox = newValue}
  }
  /// Returns true if `boundingBox` has been explicitly set.
  public var hasBoundingBox: Bool {return self._boundingBox != nil}
  /// Clears the value of `boundingBox`. Subsequent reads from it will return its default value.
  public mutating func clearBoundingBox() {self._boundingBox = nil}

  /// Output only. The confidence that this annotation is positive for the parent example,
  /// value in [0, 1], higher means higher positivity confidence.
  public var score: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _boundingBox: Google_Cloud_Automl_V1_BoundingPoly? = nil
}

/// Bounding box matching model metrics for a single intersection-over-union
/// threshold and multiple label match confidence thresholds.
public struct Google_Cloud_Automl_V1_BoundingBoxMetricsEntry {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The intersection-over-union threshold value used to compute
  /// this metrics entry.
  public var iouThreshold: Float = 0

  /// Output only. The mean average precision, most often close to au_prc.
  public var meanAveragePrecision: Float = 0

  /// Output only. Metrics for each label-match confidence_threshold from
  /// 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99. Precision-recall curve is
  /// derived from them.
  public var confidenceMetricsEntries: [Google_Cloud_Automl_V1_BoundingBoxMetricsEntry.ConfidenceMetricsEntry] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Metrics for a single confidence threshold.
  public struct ConfidenceMetricsEntry {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Output only. The confidence threshold value used to compute the metrics.
    public var confidenceThreshold: Float = 0

    /// Output only. Recall under the given confidence threshold.
    public var recall: Float = 0

    /// Output only. Precision under the given confidence threshold.
    public var precision: Float = 0

    /// Output only. The harmonic mean of recall and precision.
    public var f1Score: Float = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

/// Model evaluation metrics for image object detection problems.
/// Evaluates prediction quality of labeled bounding boxes.
public struct Google_Cloud_Automl_V1_ImageObjectDetectionEvaluationMetrics {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The total number of bounding boxes (i.e. summed over all
  /// images) the ground truth used to create this evaluation had.
  public var evaluatedBoundingBoxCount: Int32 = 0

  /// Output only. The bounding boxes match metrics for each
  /// Intersection-over-union threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99
  /// and each label confidence threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99
  /// pair.
  public var boundingBoxMetricsEntries: [Google_Cloud_Automl_V1_BoundingBoxMetricsEntry] = []

  /// Output only. The single metric for bounding boxes evaluation:
  /// the mean_average_precision averaged over all bounding_box_metrics_entries.
  public var boundingBoxMeanAveragePrecision: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.automl.v1"

extension Google_Cloud_Automl_V1_ImageObjectDetectionAnnotation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ImageObjectDetectionAnnotation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "bounding_box"),
    2: .same(proto: "score"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._boundingBox) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.score) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._boundingBox {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.score != 0 {
      try visitor.visitSingularFloatField(value: self.score, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1_ImageObjectDetectionAnnotation, rhs: Google_Cloud_Automl_V1_ImageObjectDetectionAnnotation) -> Bool {
    if lhs._boundingBox != rhs._boundingBox {return false}
    if lhs.score != rhs.score {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1_BoundingBoxMetricsEntry: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BoundingBoxMetricsEntry"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "iou_threshold"),
    2: .standard(proto: "mean_average_precision"),
    3: .standard(proto: "confidence_metrics_entries"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFloatField(value: &self.iouThreshold) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.meanAveragePrecision) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.confidenceMetricsEntries) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.iouThreshold != 0 {
      try visitor.visitSingularFloatField(value: self.iouThreshold, fieldNumber: 1)
    }
    if self.meanAveragePrecision != 0 {
      try visitor.visitSingularFloatField(value: self.meanAveragePrecision, fieldNumber: 2)
    }
    if !self.confidenceMetricsEntries.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.confidenceMetricsEntries, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1_BoundingBoxMetricsEntry, rhs: Google_Cloud_Automl_V1_BoundingBoxMetricsEntry) -> Bool {
    if lhs.iouThreshold != rhs.iouThreshold {return false}
    if lhs.meanAveragePrecision != rhs.meanAveragePrecision {return false}
    if lhs.confidenceMetricsEntries != rhs.confidenceMetricsEntries {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1_BoundingBoxMetricsEntry.ConfidenceMetricsEntry: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Automl_V1_BoundingBoxMetricsEntry.protoMessageName + ".ConfidenceMetricsEntry"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "confidence_threshold"),
    2: .same(proto: "recall"),
    3: .same(proto: "precision"),
    4: .standard(proto: "f1_score"),
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
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1_BoundingBoxMetricsEntry.ConfidenceMetricsEntry, rhs: Google_Cloud_Automl_V1_BoundingBoxMetricsEntry.ConfidenceMetricsEntry) -> Bool {
    if lhs.confidenceThreshold != rhs.confidenceThreshold {return false}
    if lhs.recall != rhs.recall {return false}
    if lhs.precision != rhs.precision {return false}
    if lhs.f1Score != rhs.f1Score {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1_ImageObjectDetectionEvaluationMetrics: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ImageObjectDetectionEvaluationMetrics"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "evaluated_bounding_box_count"),
    2: .standard(proto: "bounding_box_metrics_entries"),
    3: .standard(proto: "bounding_box_mean_average_precision"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.evaluatedBoundingBoxCount) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.boundingBoxMetricsEntries) }()
      case 3: try { try decoder.decodeSingularFloatField(value: &self.boundingBoxMeanAveragePrecision) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.evaluatedBoundingBoxCount != 0 {
      try visitor.visitSingularInt32Field(value: self.evaluatedBoundingBoxCount, fieldNumber: 1)
    }
    if !self.boundingBoxMetricsEntries.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.boundingBoxMetricsEntries, fieldNumber: 2)
    }
    if self.boundingBoxMeanAveragePrecision != 0 {
      try visitor.visitSingularFloatField(value: self.boundingBoxMeanAveragePrecision, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1_ImageObjectDetectionEvaluationMetrics, rhs: Google_Cloud_Automl_V1_ImageObjectDetectionEvaluationMetrics) -> Bool {
    if lhs.evaluatedBoundingBoxCount != rhs.evaluatedBoundingBoxCount {return false}
    if lhs.boundingBoxMetricsEntries != rhs.boundingBoxMetricsEntries {return false}
    if lhs.boundingBoxMeanAveragePrecision != rhs.boundingBoxMeanAveragePrecision {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
