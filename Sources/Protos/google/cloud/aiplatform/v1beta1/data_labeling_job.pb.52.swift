// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/aiplatform/v1beta1/data_labeling_job.proto
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

/// DataLabelingJob is used to trigger a human labeling job on unlabeled data
/// from the following Dataset:
public struct Google_Cloud_Aiplatform_V1beta1_DataLabelingJob {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. Resource name of the DataLabelingJob.
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// Required. The user-defined name of the DataLabelingJob.
  /// The name can be up to 128 characters long and can be consist of any UTF-8
  /// characters.
  /// Display name of a DataLabelingJob.
  public var displayName: String {
    get {return _storage._displayName}
    set {_uniqueStorage()._displayName = newValue}
  }

  /// Required. Dataset resource names. Right now we only support labeling from a single
  /// Dataset.
  /// Format:
  /// `projects/{project}/locations/{location}/datasets/{dataset}`
  public var datasets: [String] {
    get {return _storage._datasets}
    set {_uniqueStorage()._datasets = newValue}
  }

  /// Labels to assign to annotations generated by this DataLabelingJob.
  ///
  /// Label keys and values can be no longer than 64 characters
  /// (Unicode codepoints), can only contain lowercase letters, numeric
  /// characters, underscores and dashes. International characters are allowed.
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// System reserved label keys are prefixed with "aiplatform.googleapis.com/"
  /// and are immutable.
  public var annotationLabels: Dictionary<String,String> {
    get {return _storage._annotationLabels}
    set {_uniqueStorage()._annotationLabels = newValue}
  }

  /// Required. Number of labelers to work on each DataItem.
  public var labelerCount: Int32 {
    get {return _storage._labelerCount}
    set {_uniqueStorage()._labelerCount = newValue}
  }

  /// Required. The Google Cloud Storage location of the instruction pdf. This pdf is
  /// shared with labelers, and provides detailed description on how to label
  /// DataItems in Datasets.
  public var instructionUri: String {
    get {return _storage._instructionUri}
    set {_uniqueStorage()._instructionUri = newValue}
  }

  /// Required. Points to a YAML file stored on Google Cloud Storage describing the
  /// config for a specific type of DataLabelingJob.
  /// The schema files that can be used here are found in the
  /// https://storage.googleapis.com/google-cloud-aiplatform bucket in the
  /// /schema/datalabelingjob/inputs/ folder.
  public var inputsSchemaUri: String {
    get {return _storage._inputsSchemaUri}
    set {_uniqueStorage()._inputsSchemaUri = newValue}
  }

  /// Required. Input config parameters for the DataLabelingJob.
  public var inputs: SwiftProtobuf.Google_Protobuf_Value {
    get {return _storage._inputs ?? SwiftProtobuf.Google_Protobuf_Value()}
    set {_uniqueStorage()._inputs = newValue}
  }
  /// Returns true if `inputs` has been explicitly set.
  public var hasInputs: Bool {return _storage._inputs != nil}
  /// Clears the value of `inputs`. Subsequent reads from it will return its default value.
  public mutating func clearInputs() {_uniqueStorage()._inputs = nil}

  /// Output only. The detailed state of the job.
  public var state: Google_Cloud_Aiplatform_V1beta1_JobState {
    get {return _storage._state}
    set {_uniqueStorage()._state = newValue}
  }

  /// Output only. Current labeling job progress percentage scaled in interval [0, 100],
  /// indicating the percentage of DataItems that has been finished.
  public var labelingProgress: Int32 {
    get {return _storage._labelingProgress}
    set {_uniqueStorage()._labelingProgress = newValue}
  }

  /// Output only. Estimated cost(in US dollars) that the DataLabelingJob has incurred to
  /// date.
  public var currentSpend: Google_Type_Money {
    get {return _storage._currentSpend ?? Google_Type_Money()}
    set {_uniqueStorage()._currentSpend = newValue}
  }
  /// Returns true if `currentSpend` has been explicitly set.
  public var hasCurrentSpend: Bool {return _storage._currentSpend != nil}
  /// Clears the value of `currentSpend`. Subsequent reads from it will return its default value.
  public mutating func clearCurrentSpend() {_uniqueStorage()._currentSpend = nil}

  /// Output only. Timestamp when this DataLabelingJob was created.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return _storage._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {_uniqueStorage()._createTime = nil}

  /// Output only. Timestamp when this DataLabelingJob was updated most recently.
  public var updateTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._updateTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._updateTime = newValue}
  }
  /// Returns true if `updateTime` has been explicitly set.
  public var hasUpdateTime: Bool {return _storage._updateTime != nil}
  /// Clears the value of `updateTime`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateTime() {_uniqueStorage()._updateTime = nil}

  /// Output only. DataLabelingJob errors. It is only populated when job's state is
  /// `JOB_STATE_FAILED` or `JOB_STATE_CANCELLED`.
  public var error: Google_Rpc_Status {
    get {return _storage._error ?? Google_Rpc_Status()}
    set {_uniqueStorage()._error = newValue}
  }
  /// Returns true if `error` has been explicitly set.
  public var hasError: Bool {return _storage._error != nil}
  /// Clears the value of `error`. Subsequent reads from it will return its default value.
  public mutating func clearError() {_uniqueStorage()._error = nil}

  /// The labels with user-defined metadata to organize your DataLabelingJobs.
  ///
  /// Label keys and values can be no longer than 64 characters
  /// (Unicode codepoints), can only contain lowercase letters, numeric
  /// characters, underscores and dashes. International characters are allowed.
  ///
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// System reserved label keys are prefixed with "aiplatform.googleapis.com/"
  /// and are immutable. Following system labels exist for each DataLabelingJob:
  ///
  /// * "aiplatform.googleapis.com/schema": output only, its value is the
  ///   [inputs_schema][google.cloud.aiplatform.v1beta1.DataLabelingJob.inputs_schema_uri]'s title.
  public var labels: Dictionary<String,String> {
    get {return _storage._labels}
    set {_uniqueStorage()._labels = newValue}
  }

  /// The SpecialistPools' resource names associated with this job.
  public var specialistPools: [String] {
    get {return _storage._specialistPools}
    set {_uniqueStorage()._specialistPools = newValue}
  }

  /// Paramaters that configure active learning pipeline. Active learning will
  /// label the data incrementally via several iterations. For every iteration,
  /// it will select a batch of data based on the sampling strategy.
  public var activeLearningConfig: Google_Cloud_Aiplatform_V1beta1_ActiveLearningConfig {
    get {return _storage._activeLearningConfig ?? Google_Cloud_Aiplatform_V1beta1_ActiveLearningConfig()}
    set {_uniqueStorage()._activeLearningConfig = newValue}
  }
  /// Returns true if `activeLearningConfig` has been explicitly set.
  public var hasActiveLearningConfig: Bool {return _storage._activeLearningConfig != nil}
  /// Clears the value of `activeLearningConfig`. Subsequent reads from it will return its default value.
  public mutating func clearActiveLearningConfig() {_uniqueStorage()._activeLearningConfig = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Paramaters that configure active learning pipeline. Active learning will
///  label the data incrementally by several iterations. For every iteration, it
///  will select a batch of data based on the sampling strategy.
public struct Google_Cloud_Aiplatform_V1beta1_ActiveLearningConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Max human labeling DataItems. The rest part will be labeled by
  /// machine.
  public var humanLabelingBudget: Google_Cloud_Aiplatform_V1beta1_ActiveLearningConfig.OneOf_HumanLabelingBudget? = nil

  /// Max number of human labeled DataItems.
  public var maxDataItemCount: Int64 {
    get {
      if case .maxDataItemCount(let v)? = humanLabelingBudget {return v}
      return 0
    }
    set {humanLabelingBudget = .maxDataItemCount(newValue)}
  }

  /// Max percent of total DataItems for human labeling.
  public var maxDataItemPercentage: Int32 {
    get {
      if case .maxDataItemPercentage(let v)? = humanLabelingBudget {return v}
      return 0
    }
    set {humanLabelingBudget = .maxDataItemPercentage(newValue)}
  }

  /// Active learning data sampling config. For every active learning labeling
  /// iteration, it will select a batch of data based on the sampling strategy.
  public var sampleConfig: Google_Cloud_Aiplatform_V1beta1_SampleConfig {
    get {return _sampleConfig ?? Google_Cloud_Aiplatform_V1beta1_SampleConfig()}
    set {_sampleConfig = newValue}
  }
  /// Returns true if `sampleConfig` has been explicitly set.
  public var hasSampleConfig: Bool {return self._sampleConfig != nil}
  /// Clears the value of `sampleConfig`. Subsequent reads from it will return its default value.
  public mutating func clearSampleConfig() {self._sampleConfig = nil}

  /// CMLE training config. For every active learning labeling iteration, system
  /// will train a machine learning model on CMLE. The trained model will be used
  /// by data sampling algorithm to select DataItems.
  public var trainingConfig: Google_Cloud_Aiplatform_V1beta1_TrainingConfig {
    get {return _trainingConfig ?? Google_Cloud_Aiplatform_V1beta1_TrainingConfig()}
    set {_trainingConfig = newValue}
  }
  /// Returns true if `trainingConfig` has been explicitly set.
  public var hasTrainingConfig: Bool {return self._trainingConfig != nil}
  /// Clears the value of `trainingConfig`. Subsequent reads from it will return its default value.
  public mutating func clearTrainingConfig() {self._trainingConfig = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Required. Max human labeling DataItems. The rest part will be labeled by
  /// machine.
  public enum OneOf_HumanLabelingBudget: Equatable {
    /// Max number of human labeled DataItems.
    case maxDataItemCount(Int64)
    /// Max percent of total DataItems for human labeling.
    case maxDataItemPercentage(Int32)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_ActiveLearningConfig.OneOf_HumanLabelingBudget, rhs: Google_Cloud_Aiplatform_V1beta1_ActiveLearningConfig.OneOf_HumanLabelingBudget) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.maxDataItemCount, .maxDataItemCount): return {
        guard case .maxDataItemCount(let l) = lhs, case .maxDataItemCount(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.maxDataItemPercentage, .maxDataItemPercentage): return {
        guard case .maxDataItemPercentage(let l) = lhs, case .maxDataItemPercentage(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _sampleConfig: Google_Cloud_Aiplatform_V1beta1_SampleConfig? = nil
  fileprivate var _trainingConfig: Google_Cloud_Aiplatform_V1beta1_TrainingConfig? = nil
}

/// Active learning data sampling config. For every active learning labeling
/// iteration, it will select a batch of data based on the sampling strategy.
public struct Google_Cloud_Aiplatform_V1beta1_SampleConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Decides sample size for the initial batch. initial_batch_sample_percentage
  /// is used by default.
  public var initialBatchSampleSize: Google_Cloud_Aiplatform_V1beta1_SampleConfig.OneOf_InitialBatchSampleSize? = nil

  /// The percentage of data needed to be labeled in the first batch.
  public var initialBatchSamplePercentage: Int32 {
    get {
      if case .initialBatchSamplePercentage(let v)? = initialBatchSampleSize {return v}
      return 0
    }
    set {initialBatchSampleSize = .initialBatchSamplePercentage(newValue)}
  }

  /// Decides sample size for the following batches.
  /// following_batch_sample_percentage is used by default.
  public var followingBatchSampleSize: Google_Cloud_Aiplatform_V1beta1_SampleConfig.OneOf_FollowingBatchSampleSize? = nil

  /// The percentage of data needed to be labeled in each following batch
  /// (except the first batch).
  public var followingBatchSamplePercentage: Int32 {
    get {
      if case .followingBatchSamplePercentage(let v)? = followingBatchSampleSize {return v}
      return 0
    }
    set {followingBatchSampleSize = .followingBatchSamplePercentage(newValue)}
  }

  /// Field to chose sampling strategy. Sampling strategy will decide which data
  /// should be selected for human labeling in every batch.
  public var sampleStrategy: Google_Cloud_Aiplatform_V1beta1_SampleConfig.SampleStrategy = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Decides sample size for the initial batch. initial_batch_sample_percentage
  /// is used by default.
  public enum OneOf_InitialBatchSampleSize: Equatable {
    /// The percentage of data needed to be labeled in the first batch.
    case initialBatchSamplePercentage(Int32)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_SampleConfig.OneOf_InitialBatchSampleSize, rhs: Google_Cloud_Aiplatform_V1beta1_SampleConfig.OneOf_InitialBatchSampleSize) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.initialBatchSamplePercentage, .initialBatchSamplePercentage): return {
        guard case .initialBatchSamplePercentage(let l) = lhs, case .initialBatchSamplePercentage(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  /// Decides sample size for the following batches.
  /// following_batch_sample_percentage is used by default.
  public enum OneOf_FollowingBatchSampleSize: Equatable {
    /// The percentage of data needed to be labeled in each following batch
    /// (except the first batch).
    case followingBatchSamplePercentage(Int32)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_SampleConfig.OneOf_FollowingBatchSampleSize, rhs: Google_Cloud_Aiplatform_V1beta1_SampleConfig.OneOf_FollowingBatchSampleSize) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.followingBatchSamplePercentage, .followingBatchSamplePercentage): return {
        guard case .followingBatchSamplePercentage(let l) = lhs, case .followingBatchSamplePercentage(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  /// Sample strategy decides which subset of DataItems should be selected for
  /// human labeling in every batch.
  public enum SampleStrategy: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Default will be treated as UNCERTAINTY.
    case unspecified // = 0

    /// Sample the most uncertain data to label.
    case uncertainty // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .uncertainty
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .uncertainty: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Cloud_Aiplatform_V1beta1_SampleConfig.SampleStrategy: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Aiplatform_V1beta1_SampleConfig.SampleStrategy] = [
    .unspecified,
    .uncertainty,
  ]
}

#endif  // swift(>=4.2)

/// CMLE training config. For every active learning labeling iteration, system
/// will train a machine learning model on CMLE. The trained model will be used
/// by data sampling algorithm to select DataItems.
public struct Google_Cloud_Aiplatform_V1beta1_TrainingConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The timeout hours for the CMLE training job, expressed in milli hours
  /// i.e. 1,000 value in this field means 1 hour.
  public var timeoutTrainingMilliHours: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.aiplatform.v1beta1"

extension Google_Cloud_Aiplatform_V1beta1_DataLabelingJob: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DataLabelingJob"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "display_name"),
    3: .same(proto: "datasets"),
    12: .standard(proto: "annotation_labels"),
    4: .standard(proto: "labeler_count"),
    5: .standard(proto: "instruction_uri"),
    6: .standard(proto: "inputs_schema_uri"),
    7: .same(proto: "inputs"),
    8: .same(proto: "state"),
    13: .standard(proto: "labeling_progress"),
    14: .standard(proto: "current_spend"),
    9: .standard(proto: "create_time"),
    10: .standard(proto: "update_time"),
    22: .same(proto: "error"),
    11: .same(proto: "labels"),
    16: .standard(proto: "specialist_pools"),
    21: .standard(proto: "active_learning_config"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _displayName: String = String()
    var _datasets: [String] = []
    var _annotationLabels: Dictionary<String,String> = [:]
    var _labelerCount: Int32 = 0
    var _instructionUri: String = String()
    var _inputsSchemaUri: String = String()
    var _inputs: SwiftProtobuf.Google_Protobuf_Value? = nil
    var _state: Google_Cloud_Aiplatform_V1beta1_JobState = .unspecified
    var _labelingProgress: Int32 = 0
    var _currentSpend: Google_Type_Money? = nil
    var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _updateTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _error: Google_Rpc_Status? = nil
    var _labels: Dictionary<String,String> = [:]
    var _specialistPools: [String] = []
    var _activeLearningConfig: Google_Cloud_Aiplatform_V1beta1_ActiveLearningConfig? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _displayName = source._displayName
      _datasets = source._datasets
      _annotationLabels = source._annotationLabels
      _labelerCount = source._labelerCount
      _instructionUri = source._instructionUri
      _inputsSchemaUri = source._inputsSchemaUri
      _inputs = source._inputs
      _state = source._state
      _labelingProgress = source._labelingProgress
      _currentSpend = source._currentSpend
      _createTime = source._createTime
      _updateTime = source._updateTime
      _error = source._error
      _labels = source._labels
      _specialistPools = source._specialistPools
      _activeLearningConfig = source._activeLearningConfig
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
        case 2: try { try decoder.decodeSingularStringField(value: &_storage._displayName) }()
        case 3: try { try decoder.decodeRepeatedStringField(value: &_storage._datasets) }()
        case 4: try { try decoder.decodeSingularInt32Field(value: &_storage._labelerCount) }()
        case 5: try { try decoder.decodeSingularStringField(value: &_storage._instructionUri) }()
        case 6: try { try decoder.decodeSingularStringField(value: &_storage._inputsSchemaUri) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._inputs) }()
        case 8: try { try decoder.decodeSingularEnumField(value: &_storage._state) }()
        case 9: try { try decoder.decodeSingularMessageField(value: &_storage._createTime) }()
        case 10: try { try decoder.decodeSingularMessageField(value: &_storage._updateTime) }()
        case 11: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &_storage._labels) }()
        case 12: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &_storage._annotationLabels) }()
        case 13: try { try decoder.decodeSingularInt32Field(value: &_storage._labelingProgress) }()
        case 14: try { try decoder.decodeSingularMessageField(value: &_storage._currentSpend) }()
        case 16: try { try decoder.decodeRepeatedStringField(value: &_storage._specialistPools) }()
        case 21: try { try decoder.decodeSingularMessageField(value: &_storage._activeLearningConfig) }()
        case 22: try { try decoder.decodeSingularMessageField(value: &_storage._error) }()
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
      if !_storage._displayName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._displayName, fieldNumber: 2)
      }
      if !_storage._datasets.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._datasets, fieldNumber: 3)
      }
      if _storage._labelerCount != 0 {
        try visitor.visitSingularInt32Field(value: _storage._labelerCount, fieldNumber: 4)
      }
      if !_storage._instructionUri.isEmpty {
        try visitor.visitSingularStringField(value: _storage._instructionUri, fieldNumber: 5)
      }
      if !_storage._inputsSchemaUri.isEmpty {
        try visitor.visitSingularStringField(value: _storage._inputsSchemaUri, fieldNumber: 6)
      }
      if let v = _storage._inputs {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
      if _storage._state != .unspecified {
        try visitor.visitSingularEnumField(value: _storage._state, fieldNumber: 8)
      }
      if let v = _storage._createTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      }
      if let v = _storage._updateTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      }
      if !_storage._labels.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: _storage._labels, fieldNumber: 11)
      }
      if !_storage._annotationLabels.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: _storage._annotationLabels, fieldNumber: 12)
      }
      if _storage._labelingProgress != 0 {
        try visitor.visitSingularInt32Field(value: _storage._labelingProgress, fieldNumber: 13)
      }
      if let v = _storage._currentSpend {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 14)
      }
      if !_storage._specialistPools.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._specialistPools, fieldNumber: 16)
      }
      if let v = _storage._activeLearningConfig {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 21)
      }
      if let v = _storage._error {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 22)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_DataLabelingJob, rhs: Google_Cloud_Aiplatform_V1beta1_DataLabelingJob) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._name != rhs_storage._name {return false}
        if _storage._displayName != rhs_storage._displayName {return false}
        if _storage._datasets != rhs_storage._datasets {return false}
        if _storage._annotationLabels != rhs_storage._annotationLabels {return false}
        if _storage._labelerCount != rhs_storage._labelerCount {return false}
        if _storage._instructionUri != rhs_storage._instructionUri {return false}
        if _storage._inputsSchemaUri != rhs_storage._inputsSchemaUri {return false}
        if _storage._inputs != rhs_storage._inputs {return false}
        if _storage._state != rhs_storage._state {return false}
        if _storage._labelingProgress != rhs_storage._labelingProgress {return false}
        if _storage._currentSpend != rhs_storage._currentSpend {return false}
        if _storage._createTime != rhs_storage._createTime {return false}
        if _storage._updateTime != rhs_storage._updateTime {return false}
        if _storage._error != rhs_storage._error {return false}
        if _storage._labels != rhs_storage._labels {return false}
        if _storage._specialistPools != rhs_storage._specialistPools {return false}
        if _storage._activeLearningConfig != rhs_storage._activeLearningConfig {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_ActiveLearningConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ActiveLearningConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "max_data_item_count"),
    2: .standard(proto: "max_data_item_percentage"),
    3: .standard(proto: "sample_config"),
    4: .standard(proto: "training_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        if self.humanLabelingBudget != nil {try decoder.handleConflictingOneOf()}
        var v: Int64?
        try decoder.decodeSingularInt64Field(value: &v)
        if let v = v {self.humanLabelingBudget = .maxDataItemCount(v)}
      }()
      case 2: try {
        if self.humanLabelingBudget != nil {try decoder.handleConflictingOneOf()}
        var v: Int32?
        try decoder.decodeSingularInt32Field(value: &v)
        if let v = v {self.humanLabelingBudget = .maxDataItemPercentage(v)}
      }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._sampleConfig) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._trainingConfig) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.humanLabelingBudget {
    case .maxDataItemCount?: try {
      guard case .maxDataItemCount(let v)? = self.humanLabelingBudget else { preconditionFailure() }
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 1)
    }()
    case .maxDataItemPercentage?: try {
      guard case .maxDataItemPercentage(let v)? = self.humanLabelingBudget else { preconditionFailure() }
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    if let v = self._sampleConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._trainingConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_ActiveLearningConfig, rhs: Google_Cloud_Aiplatform_V1beta1_ActiveLearningConfig) -> Bool {
    if lhs.humanLabelingBudget != rhs.humanLabelingBudget {return false}
    if lhs._sampleConfig != rhs._sampleConfig {return false}
    if lhs._trainingConfig != rhs._trainingConfig {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_SampleConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SampleConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "initial_batch_sample_percentage"),
    3: .standard(proto: "following_batch_sample_percentage"),
    5: .standard(proto: "sample_strategy"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        if self.initialBatchSampleSize != nil {try decoder.handleConflictingOneOf()}
        var v: Int32?
        try decoder.decodeSingularInt32Field(value: &v)
        if let v = v {self.initialBatchSampleSize = .initialBatchSamplePercentage(v)}
      }()
      case 3: try {
        if self.followingBatchSampleSize != nil {try decoder.handleConflictingOneOf()}
        var v: Int32?
        try decoder.decodeSingularInt32Field(value: &v)
        if let v = v {self.followingBatchSampleSize = .followingBatchSamplePercentage(v)}
      }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.sampleStrategy) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if case .initialBatchSamplePercentage(let v)? = self.initialBatchSampleSize {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    if case .followingBatchSamplePercentage(let v)? = self.followingBatchSampleSize {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 3)
    }
    if self.sampleStrategy != .unspecified {
      try visitor.visitSingularEnumField(value: self.sampleStrategy, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_SampleConfig, rhs: Google_Cloud_Aiplatform_V1beta1_SampleConfig) -> Bool {
    if lhs.initialBatchSampleSize != rhs.initialBatchSampleSize {return false}
    if lhs.followingBatchSampleSize != rhs.followingBatchSampleSize {return false}
    if lhs.sampleStrategy != rhs.sampleStrategy {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Aiplatform_V1beta1_SampleConfig.SampleStrategy: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SAMPLE_STRATEGY_UNSPECIFIED"),
    1: .same(proto: "UNCERTAINTY"),
  ]
}

extension Google_Cloud_Aiplatform_V1beta1_TrainingConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TrainingConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "timeout_training_milli_hours"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.timeoutTrainingMilliHours) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.timeoutTrainingMilliHours != 0 {
      try visitor.visitSingularInt64Field(value: self.timeoutTrainingMilliHours, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Aiplatform_V1beta1_TrainingConfig, rhs: Google_Cloud_Aiplatform_V1beta1_TrainingConfig) -> Bool {
    if lhs.timeoutTrainingMilliHours != rhs.timeoutTrainingMilliHours {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
