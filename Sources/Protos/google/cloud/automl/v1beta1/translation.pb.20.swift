// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/automl/v1beta1/translation.proto
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

/// Dataset metadata that is specific to translation.
public struct Google_Cloud_Automl_V1beta1_TranslationDatasetMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The BCP-47 language code of the source language.
  public var sourceLanguageCode: String = String()

  /// Required. The BCP-47 language code of the target language.
  public var targetLanguageCode: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Evaluation metrics for the dataset.
public struct Google_Cloud_Automl_V1beta1_TranslationEvaluationMetrics {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. BLEU score.
  public var bleuScore: Double = 0

  /// Output only. BLEU score for base model.
  public var baseBleuScore: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Model metadata that is specific to translation.
public struct Google_Cloud_Automl_V1beta1_TranslationModelMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The resource name of the model to use as a baseline to train the custom
  /// model. If unset, we use the default base model provided by Google
  /// Translate. Format:
  /// `projects/{project_id}/locations/{location_id}/models/{model_id}`
  public var baseModel: String = String()

  /// Output only. Inferred from the dataset.
  /// The source languge (The BCP-47 language code) that is used for training.
  public var sourceLanguageCode: String = String()

  /// Output only. The target languge (The BCP-47 language code) that is used for
  /// training.
  public var targetLanguageCode: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Annotation details specific to translation.
public struct Google_Cloud_Automl_V1beta1_TranslationAnnotation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only . The translated content.
  public var translatedContent: Google_Cloud_Automl_V1beta1_TextSnippet {
    get {return _translatedContent ?? Google_Cloud_Automl_V1beta1_TextSnippet()}
    set {_translatedContent = newValue}
  }
  /// Returns true if `translatedContent` has been explicitly set.
  public var hasTranslatedContent: Bool {return self._translatedContent != nil}
  /// Clears the value of `translatedContent`. Subsequent reads from it will return its default value.
  public mutating func clearTranslatedContent() {self._translatedContent = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _translatedContent: Google_Cloud_Automl_V1beta1_TextSnippet? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.automl.v1beta1"

extension Google_Cloud_Automl_V1beta1_TranslationDatasetMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TranslationDatasetMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "source_language_code"),
    2: .standard(proto: "target_language_code"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sourceLanguageCode) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.targetLanguageCode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sourceLanguageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.sourceLanguageCode, fieldNumber: 1)
    }
    if !self.targetLanguageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.targetLanguageCode, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_TranslationDatasetMetadata, rhs: Google_Cloud_Automl_V1beta1_TranslationDatasetMetadata) -> Bool {
    if lhs.sourceLanguageCode != rhs.sourceLanguageCode {return false}
    if lhs.targetLanguageCode != rhs.targetLanguageCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1beta1_TranslationEvaluationMetrics: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TranslationEvaluationMetrics"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "bleu_score"),
    2: .standard(proto: "base_bleu_score"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.bleuScore) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.baseBleuScore) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.bleuScore != 0 {
      try visitor.visitSingularDoubleField(value: self.bleuScore, fieldNumber: 1)
    }
    if self.baseBleuScore != 0 {
      try visitor.visitSingularDoubleField(value: self.baseBleuScore, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_TranslationEvaluationMetrics, rhs: Google_Cloud_Automl_V1beta1_TranslationEvaluationMetrics) -> Bool {
    if lhs.bleuScore != rhs.bleuScore {return false}
    if lhs.baseBleuScore != rhs.baseBleuScore {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1beta1_TranslationModelMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TranslationModelMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "base_model"),
    2: .standard(proto: "source_language_code"),
    3: .standard(proto: "target_language_code"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.baseModel) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.sourceLanguageCode) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.targetLanguageCode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.baseModel.isEmpty {
      try visitor.visitSingularStringField(value: self.baseModel, fieldNumber: 1)
    }
    if !self.sourceLanguageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.sourceLanguageCode, fieldNumber: 2)
    }
    if !self.targetLanguageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.targetLanguageCode, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_TranslationModelMetadata, rhs: Google_Cloud_Automl_V1beta1_TranslationModelMetadata) -> Bool {
    if lhs.baseModel != rhs.baseModel {return false}
    if lhs.sourceLanguageCode != rhs.sourceLanguageCode {return false}
    if lhs.targetLanguageCode != rhs.targetLanguageCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1beta1_TranslationAnnotation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TranslationAnnotation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "translated_content"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._translatedContent) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._translatedContent {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_TranslationAnnotation, rhs: Google_Cloud_Automl_V1beta1_TranslationAnnotation) -> Bool {
    if lhs._translatedContent != rhs._translatedContent {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
