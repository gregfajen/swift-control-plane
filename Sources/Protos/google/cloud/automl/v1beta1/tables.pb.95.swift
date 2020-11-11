// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/automl/v1beta1/tables.proto
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

/// Metadata for a dataset used for AutoML Tables.
public struct Google_Cloud_Automl_V1beta1_TablesDatasetMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The table_spec_id of the primary table of this dataset.
  public var primaryTableSpecID: String = String()

  /// column_spec_id of the primary table's column that should be used as the
  /// training & prediction target.
  /// This column must be non-nullable and have one of following data types
  /// (otherwise model creation will error):
  ///
  /// * CATEGORY
  ///
  /// * FLOAT64
  ///
  /// If the type is CATEGORY , only up to
  /// 100 unique values may exist in that column across all rows.
  ///
  /// NOTE: Updates of this field will instantly affect any other users
  /// concurrently working with the dataset.
  public var targetColumnSpecID: String = String()

  /// column_spec_id of the primary table's column that should be used as the
  /// weight column, i.e. the higher the value the more important the row will be
  /// during model training.
  /// Required type: FLOAT64.
  /// Allowed values: 0 to 10000, inclusive on both ends; 0 means the row is
  ///                 ignored for training.
  /// If not set all rows are assumed to have equal weight of 1.
  /// NOTE: Updates of this field will instantly affect any other users
  /// concurrently working with the dataset.
  public var weightColumnSpecID: String = String()

  /// column_spec_id of the primary table column which specifies a possible ML
  /// use of the row, i.e. the column will be used to split the rows into TRAIN,
  /// VALIDATE and TEST sets.
  /// Required type: STRING.
  /// This column, if set, must either have all of `TRAIN`, `VALIDATE`, `TEST`
  /// among its values, or only have `TEST`, `UNASSIGNED` values. In the latter
  /// case the rows with `UNASSIGNED` value will be assigned by AutoML. Note
  /// that if a given ml use distribution makes it impossible to create a "good"
  /// model, that call will error describing the issue.
  /// If both this column_spec_id and primary table's time_column_spec_id are not
  /// set, then all rows are treated as `UNASSIGNED`.
  /// NOTE: Updates of this field will instantly affect any other users
  /// concurrently working with the dataset.
  public var mlUseColumnSpecID: String = String()

  /// Output only. Correlations between
  ///
  /// [TablesDatasetMetadata.target_column_spec_id][google.cloud.automl.v1beta1.TablesDatasetMetadata.target_column_spec_id],
  /// and other columns of the
  ///
  /// [TablesDatasetMetadataprimary_table][google.cloud.automl.v1beta1.TablesDatasetMetadata.primary_table_spec_id].
  /// Only set if the target column is set. Mapping from other column spec id to
  /// its CorrelationStats with the target column.
  /// This field may be stale, see the stats_update_time field for
  /// for the timestamp at which these stats were last updated.
  public var targetColumnCorrelations: Dictionary<String,Google_Cloud_Automl_V1beta1_CorrelationStats> = [:]

  /// Output only. The most recent timestamp when target_column_correlations
  /// field and all descendant ColumnSpec.data_stats and
  /// ColumnSpec.top_correlated_columns fields were last (re-)generated. Any
  /// changes that happened to the dataset afterwards are not reflected in these
  /// fields values. The regeneration happens in the background on a best effort
  /// basis.
  public var statsUpdateTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _statsUpdateTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_statsUpdateTime = newValue}
  }
  /// Returns true if `statsUpdateTime` has been explicitly set.
  public var hasStatsUpdateTime: Bool {return self._statsUpdateTime != nil}
  /// Clears the value of `statsUpdateTime`. Subsequent reads from it will return its default value.
  public mutating func clearStatsUpdateTime() {self._statsUpdateTime = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _statsUpdateTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// Model metadata specific to AutoML Tables.
public struct Google_Cloud_Automl_V1beta1_TablesModelMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Additional optimization objective configuration. Required for
  /// `MAXIMIZE_PRECISION_AT_RECALL` and `MAXIMIZE_RECALL_AT_PRECISION`,
  /// otherwise unused.
  public var additionalOptimizationObjectiveConfig: Google_Cloud_Automl_V1beta1_TablesModelMetadata.OneOf_AdditionalOptimizationObjectiveConfig? = nil

  /// Required when optimization_objective is "MAXIMIZE_PRECISION_AT_RECALL".
  /// Must be between 0 and 1, inclusive.
  public var optimizationObjectiveRecallValue: Float {
    get {
      if case .optimizationObjectiveRecallValue(let v)? = additionalOptimizationObjectiveConfig {return v}
      return 0
    }
    set {additionalOptimizationObjectiveConfig = .optimizationObjectiveRecallValue(newValue)}
  }

  /// Required when optimization_objective is "MAXIMIZE_RECALL_AT_PRECISION".
  /// Must be between 0 and 1, inclusive.
  public var optimizationObjectivePrecisionValue: Float {
    get {
      if case .optimizationObjectivePrecisionValue(let v)? = additionalOptimizationObjectiveConfig {return v}
      return 0
    }
    set {additionalOptimizationObjectiveConfig = .optimizationObjectivePrecisionValue(newValue)}
  }

  /// Column spec of the dataset's primary table's column the model is
  /// predicting. Snapshotted when model creation started.
  /// Only 3 fields are used:
  /// name - May be set on CreateModel, if it's not then the ColumnSpec
  ///        corresponding to the current target_column_spec_id of the dataset
  ///        the model is trained from is used.
  ///        If neither is set, CreateModel will error.
  /// display_name - Output only.
  /// data_type - Output only.
  public var targetColumnSpec: Google_Cloud_Automl_V1beta1_ColumnSpec {
    get {return _targetColumnSpec ?? Google_Cloud_Automl_V1beta1_ColumnSpec()}
    set {_targetColumnSpec = newValue}
  }
  /// Returns true if `targetColumnSpec` has been explicitly set.
  public var hasTargetColumnSpec: Bool {return self._targetColumnSpec != nil}
  /// Clears the value of `targetColumnSpec`. Subsequent reads from it will return its default value.
  public mutating func clearTargetColumnSpec() {self._targetColumnSpec = nil}

  /// Column specs of the dataset's primary table's columns, on which
  /// the model is trained and which are used as the input for predictions.
  /// The
  ///
  /// [target_column][google.cloud.automl.v1beta1.TablesModelMetadata.target_column_spec]
  /// as well as, according to dataset's state upon model creation,
  ///
  /// [weight_column][google.cloud.automl.v1beta1.TablesDatasetMetadata.weight_column_spec_id],
  /// and
  ///
  /// [ml_use_column][google.cloud.automl.v1beta1.TablesDatasetMetadata.ml_use_column_spec_id]
  /// must never be included here.
  ///
  /// Only 3 fields are used:
  ///
  /// * name - May be set on CreateModel, if set only the columns specified are
  ///   used, otherwise all primary table's columns (except the ones listed
  ///   above) are used for the training and prediction input.
  ///
  /// * display_name - Output only.
  ///
  /// * data_type - Output only.
  public var inputFeatureColumnSpecs: [Google_Cloud_Automl_V1beta1_ColumnSpec] = []

  /// Objective function the model is optimizing towards. The training process
  /// creates a model that maximizes/minimizes the value of the objective
  /// function over the validation set.
  ///
  /// The supported optimization objectives depend on the prediction type.
  /// If the field is not set, a default objective function is used.
  ///
  /// CLASSIFICATION_BINARY:
  ///   "MAXIMIZE_AU_ROC" (default) - Maximize the area under the receiver
  ///                                 operating characteristic (ROC) curve.
  ///   "MINIMIZE_LOG_LOSS" - Minimize log loss.
  ///   "MAXIMIZE_AU_PRC" - Maximize the area under the precision-recall curve.
  ///   "MAXIMIZE_PRECISION_AT_RECALL" - Maximize precision for a specified
  ///                                   recall value.
  ///   "MAXIMIZE_RECALL_AT_PRECISION" - Maximize recall for a specified
  ///                                    precision value.
  ///
  /// CLASSIFICATION_MULTI_CLASS :
  ///   "MINIMIZE_LOG_LOSS" (default) - Minimize log loss.
  ///
  ///
  /// REGRESSION:
  ///   "MINIMIZE_RMSE" (default) - Minimize root-mean-squared error (RMSE).
  ///   "MINIMIZE_MAE" - Minimize mean-absolute error (MAE).
  ///   "MINIMIZE_RMSLE" - Minimize root-mean-squared log error (RMSLE).
  public var optimizationObjective: String = String()

  /// Output only. Auxiliary information for each of the
  /// input_feature_column_specs with respect to this particular model.
  public var tablesModelColumnInfo: [Google_Cloud_Automl_V1beta1_TablesModelColumnInfo] = []

  /// Required. The train budget of creating this model, expressed in milli node
  /// hours i.e. 1,000 value in this field means 1 node hour.
  ///
  /// The training cost of the model will not exceed this budget. The final cost
  /// will be attempted to be close to the budget, though may end up being (even)
  /// noticeably smaller - at the backend's discretion. This especially may
  /// happen when further model training ceases to provide any improvements.
  ///
  /// If the budget is set to a value known to be insufficient to train a
  /// model for the given dataset, the training won't be attempted and
  /// will error.
  ///
  /// The train budget must be between 1,000 and 72,000 milli node hours,
  /// inclusive.
  public var trainBudgetMilliNodeHours: Int64 = 0

  /// Output only. The actual training cost of the model, expressed in milli
  /// node hours, i.e. 1,000 value in this field means 1 node hour. Guaranteed
  /// to not exceed the train budget.
  public var trainCostMilliNodeHours: Int64 = 0

  /// Use the entire training budget. This disables the early stopping feature.
  /// By default, the early stopping feature is enabled, which means that AutoML
  /// Tables might stop training before the entire training budget has been used.
  public var disableEarlyStopping: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Additional optimization objective configuration. Required for
  /// `MAXIMIZE_PRECISION_AT_RECALL` and `MAXIMIZE_RECALL_AT_PRECISION`,
  /// otherwise unused.
  public enum OneOf_AdditionalOptimizationObjectiveConfig: Equatable {
    /// Required when optimization_objective is "MAXIMIZE_PRECISION_AT_RECALL".
    /// Must be between 0 and 1, inclusive.
    case optimizationObjectiveRecallValue(Float)
    /// Required when optimization_objective is "MAXIMIZE_RECALL_AT_PRECISION".
    /// Must be between 0 and 1, inclusive.
    case optimizationObjectivePrecisionValue(Float)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Automl_V1beta1_TablesModelMetadata.OneOf_AdditionalOptimizationObjectiveConfig, rhs: Google_Cloud_Automl_V1beta1_TablesModelMetadata.OneOf_AdditionalOptimizationObjectiveConfig) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.optimizationObjectiveRecallValue, .optimizationObjectiveRecallValue): return {
        guard case .optimizationObjectiveRecallValue(let l) = lhs, case .optimizationObjectiveRecallValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.optimizationObjectivePrecisionValue, .optimizationObjectivePrecisionValue): return {
        guard case .optimizationObjectivePrecisionValue(let l) = lhs, case .optimizationObjectivePrecisionValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _targetColumnSpec: Google_Cloud_Automl_V1beta1_ColumnSpec? = nil
}

/// Contains annotation details specific to Tables.
public struct Google_Cloud_Automl_V1beta1_TablesAnnotation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. A confidence estimate between 0.0 and 1.0, inclusive. A higher
  /// value means greater confidence in the returned value.
  /// For
  ///
  /// [target_column_spec][google.cloud.automl.v1beta1.TablesModelMetadata.target_column_spec]
  /// of FLOAT64 data type the score is not populated.
  public var score: Float = 0

  /// Output only. Only populated when
  ///
  /// [target_column_spec][google.cloud.automl.v1beta1.TablesModelMetadata.target_column_spec]
  /// has FLOAT64 data type. An interval in which the exactly correct target
  /// value has 95% chance to be in.
  public var predictionInterval: Google_Cloud_Automl_V1beta1_DoubleRange {
    get {return _predictionInterval ?? Google_Cloud_Automl_V1beta1_DoubleRange()}
    set {_predictionInterval = newValue}
  }
  /// Returns true if `predictionInterval` has been explicitly set.
  public var hasPredictionInterval: Bool {return self._predictionInterval != nil}
  /// Clears the value of `predictionInterval`. Subsequent reads from it will return its default value.
  public mutating func clearPredictionInterval() {self._predictionInterval = nil}

  /// The predicted value of the row's
  ///
  /// [target_column][google.cloud.automl.v1beta1.TablesModelMetadata.target_column_spec].
  /// The value depends on the column's DataType:
  ///
  /// * CATEGORY - the predicted (with the above confidence `score`) CATEGORY
  ///   value.
  ///
  /// * FLOAT64 - the predicted (with above `prediction_interval`) FLOAT64 value.
  public var value: SwiftProtobuf.Google_Protobuf_Value {
    get {return _value ?? SwiftProtobuf.Google_Protobuf_Value()}
    set {_value = newValue}
  }
  /// Returns true if `value` has been explicitly set.
  public var hasValue: Bool {return self._value != nil}
  /// Clears the value of `value`. Subsequent reads from it will return its default value.
  public mutating func clearValue() {self._value = nil}

  /// Output only. Auxiliary information for each of the model's
  ///
  /// [input_feature_column_specs][google.cloud.automl.v1beta1.TablesModelMetadata.input_feature_column_specs]
  /// with respect to this particular prediction.
  /// If no other fields than
  ///
  /// [column_spec_name][google.cloud.automl.v1beta1.TablesModelColumnInfo.column_spec_name]
  /// and
  ///
  /// [column_display_name][google.cloud.automl.v1beta1.TablesModelColumnInfo.column_display_name]
  /// would be populated, then this whole field is not.
  public var tablesModelColumnInfo: [Google_Cloud_Automl_V1beta1_TablesModelColumnInfo] = []

  /// Output only. Stores the prediction score for the baseline example, which
  /// is defined as the example with all values set to their baseline values.
  /// This is used as part of the Sampled Shapley explanation of the model's
  /// prediction. This field is populated only when feature importance is
  /// requested. For regression models, this holds the baseline prediction for
  /// the baseline example. For classification models, this holds the baseline
  /// prediction for the baseline example for the argmax class.
  public var baselineScore: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _predictionInterval: Google_Cloud_Automl_V1beta1_DoubleRange? = nil
  fileprivate var _value: SwiftProtobuf.Google_Protobuf_Value? = nil
}

/// An information specific to given column and Tables Model, in context
/// of the Model and the predictions created by it.
public struct Google_Cloud_Automl_V1beta1_TablesModelColumnInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The name of the ColumnSpec describing the column. Not
  /// populated when this proto is outputted to BigQuery.
  public var columnSpecName: String = String()

  /// Output only. The display name of the column (same as the display_name of
  /// its ColumnSpec).
  public var columnDisplayName: String = String()

  /// Output only. When given as part of a Model (always populated):
  /// Measurement of how much model predictions correctness on the TEST data
  /// depend on values in this column. A value between 0 and 1, higher means
  /// higher influence. These values are normalized - for all input feature
  /// columns of a given model they add to 1.
  ///
  /// When given back by Predict (populated iff
  /// [feature_importance
  /// param][google.cloud.automl.v1beta1.PredictRequest.params] is set) or Batch
  /// Predict (populated iff
  /// [feature_importance][google.cloud.automl.v1beta1.PredictRequest.params]
  /// param is set):
  /// Measurement of how impactful for the prediction returned for the given row
  /// the value in this column was. Specifically, the feature importance
  /// specifies the marginal contribution that the feature made to the prediction
  /// score compared to the baseline score. These values are computed using the
  /// Sampled Shapley method.
  public var featureImportance: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.automl.v1beta1"

extension Google_Cloud_Automl_V1beta1_TablesDatasetMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TablesDatasetMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "primary_table_spec_id"),
    2: .standard(proto: "target_column_spec_id"),
    3: .standard(proto: "weight_column_spec_id"),
    4: .standard(proto: "ml_use_column_spec_id"),
    6: .standard(proto: "target_column_correlations"),
    7: .standard(proto: "stats_update_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.primaryTableSpecID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.targetColumnSpecID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.weightColumnSpecID) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.mlUseColumnSpecID) }()
      case 6: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Cloud_Automl_V1beta1_CorrelationStats>.self, value: &self.targetColumnCorrelations) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._statsUpdateTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.primaryTableSpecID.isEmpty {
      try visitor.visitSingularStringField(value: self.primaryTableSpecID, fieldNumber: 1)
    }
    if !self.targetColumnSpecID.isEmpty {
      try visitor.visitSingularStringField(value: self.targetColumnSpecID, fieldNumber: 2)
    }
    if !self.weightColumnSpecID.isEmpty {
      try visitor.visitSingularStringField(value: self.weightColumnSpecID, fieldNumber: 3)
    }
    if !self.mlUseColumnSpecID.isEmpty {
      try visitor.visitSingularStringField(value: self.mlUseColumnSpecID, fieldNumber: 4)
    }
    if !self.targetColumnCorrelations.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Cloud_Automl_V1beta1_CorrelationStats>.self, value: self.targetColumnCorrelations, fieldNumber: 6)
    }
    if let v = self._statsUpdateTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_TablesDatasetMetadata, rhs: Google_Cloud_Automl_V1beta1_TablesDatasetMetadata) -> Bool {
    if lhs.primaryTableSpecID != rhs.primaryTableSpecID {return false}
    if lhs.targetColumnSpecID != rhs.targetColumnSpecID {return false}
    if lhs.weightColumnSpecID != rhs.weightColumnSpecID {return false}
    if lhs.mlUseColumnSpecID != rhs.mlUseColumnSpecID {return false}
    if lhs.targetColumnCorrelations != rhs.targetColumnCorrelations {return false}
    if lhs._statsUpdateTime != rhs._statsUpdateTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1beta1_TablesModelMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TablesModelMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    17: .standard(proto: "optimization_objective_recall_value"),
    18: .standard(proto: "optimization_objective_precision_value"),
    2: .standard(proto: "target_column_spec"),
    3: .standard(proto: "input_feature_column_specs"),
    4: .standard(proto: "optimization_objective"),
    5: .standard(proto: "tables_model_column_info"),
    6: .standard(proto: "train_budget_milli_node_hours"),
    7: .standard(proto: "train_cost_milli_node_hours"),
    12: .standard(proto: "disable_early_stopping"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularMessageField(value: &self._targetColumnSpec) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.inputFeatureColumnSpecs) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.optimizationObjective) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.tablesModelColumnInfo) }()
      case 6: try { try decoder.decodeSingularInt64Field(value: &self.trainBudgetMilliNodeHours) }()
      case 7: try { try decoder.decodeSingularInt64Field(value: &self.trainCostMilliNodeHours) }()
      case 12: try { try decoder.decodeSingularBoolField(value: &self.disableEarlyStopping) }()
      case 17: try {
        if self.additionalOptimizationObjectiveConfig != nil {try decoder.handleConflictingOneOf()}
        var v: Float?
        try decoder.decodeSingularFloatField(value: &v)
        if let v = v {self.additionalOptimizationObjectiveConfig = .optimizationObjectiveRecallValue(v)}
      }()
      case 18: try {
        if self.additionalOptimizationObjectiveConfig != nil {try decoder.handleConflictingOneOf()}
        var v: Float?
        try decoder.decodeSingularFloatField(value: &v)
        if let v = v {self.additionalOptimizationObjectiveConfig = .optimizationObjectivePrecisionValue(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._targetColumnSpec {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.inputFeatureColumnSpecs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.inputFeatureColumnSpecs, fieldNumber: 3)
    }
    if !self.optimizationObjective.isEmpty {
      try visitor.visitSingularStringField(value: self.optimizationObjective, fieldNumber: 4)
    }
    if !self.tablesModelColumnInfo.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.tablesModelColumnInfo, fieldNumber: 5)
    }
    if self.trainBudgetMilliNodeHours != 0 {
      try visitor.visitSingularInt64Field(value: self.trainBudgetMilliNodeHours, fieldNumber: 6)
    }
    if self.trainCostMilliNodeHours != 0 {
      try visitor.visitSingularInt64Field(value: self.trainCostMilliNodeHours, fieldNumber: 7)
    }
    if self.disableEarlyStopping != false {
      try visitor.visitSingularBoolField(value: self.disableEarlyStopping, fieldNumber: 12)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.additionalOptimizationObjectiveConfig {
    case .optimizationObjectiveRecallValue?: try {
      guard case .optimizationObjectiveRecallValue(let v)? = self.additionalOptimizationObjectiveConfig else { preconditionFailure() }
      try visitor.visitSingularFloatField(value: v, fieldNumber: 17)
    }()
    case .optimizationObjectivePrecisionValue?: try {
      guard case .optimizationObjectivePrecisionValue(let v)? = self.additionalOptimizationObjectiveConfig else { preconditionFailure() }
      try visitor.visitSingularFloatField(value: v, fieldNumber: 18)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_TablesModelMetadata, rhs: Google_Cloud_Automl_V1beta1_TablesModelMetadata) -> Bool {
    if lhs.additionalOptimizationObjectiveConfig != rhs.additionalOptimizationObjectiveConfig {return false}
    if lhs._targetColumnSpec != rhs._targetColumnSpec {return false}
    if lhs.inputFeatureColumnSpecs != rhs.inputFeatureColumnSpecs {return false}
    if lhs.optimizationObjective != rhs.optimizationObjective {return false}
    if lhs.tablesModelColumnInfo != rhs.tablesModelColumnInfo {return false}
    if lhs.trainBudgetMilliNodeHours != rhs.trainBudgetMilliNodeHours {return false}
    if lhs.trainCostMilliNodeHours != rhs.trainCostMilliNodeHours {return false}
    if lhs.disableEarlyStopping != rhs.disableEarlyStopping {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1beta1_TablesAnnotation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TablesAnnotation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "score"),
    4: .standard(proto: "prediction_interval"),
    2: .same(proto: "value"),
    3: .standard(proto: "tables_model_column_info"),
    5: .standard(proto: "baseline_score"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFloatField(value: &self.score) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._value) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.tablesModelColumnInfo) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._predictionInterval) }()
      case 5: try { try decoder.decodeSingularFloatField(value: &self.baselineScore) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.score != 0 {
      try visitor.visitSingularFloatField(value: self.score, fieldNumber: 1)
    }
    if let v = self._value {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.tablesModelColumnInfo.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.tablesModelColumnInfo, fieldNumber: 3)
    }
    if let v = self._predictionInterval {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if self.baselineScore != 0 {
      try visitor.visitSingularFloatField(value: self.baselineScore, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_TablesAnnotation, rhs: Google_Cloud_Automl_V1beta1_TablesAnnotation) -> Bool {
    if lhs.score != rhs.score {return false}
    if lhs._predictionInterval != rhs._predictionInterval {return false}
    if lhs._value != rhs._value {return false}
    if lhs.tablesModelColumnInfo != rhs.tablesModelColumnInfo {return false}
    if lhs.baselineScore != rhs.baselineScore {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Automl_V1beta1_TablesModelColumnInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TablesModelColumnInfo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "column_spec_name"),
    2: .standard(proto: "column_display_name"),
    3: .standard(proto: "feature_importance"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.columnSpecName) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.columnDisplayName) }()
      case 3: try { try decoder.decodeSingularFloatField(value: &self.featureImportance) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.columnSpecName.isEmpty {
      try visitor.visitSingularStringField(value: self.columnSpecName, fieldNumber: 1)
    }
    if !self.columnDisplayName.isEmpty {
      try visitor.visitSingularStringField(value: self.columnDisplayName, fieldNumber: 2)
    }
    if self.featureImportance != 0 {
      try visitor.visitSingularFloatField(value: self.featureImportance, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Automl_V1beta1_TablesModelColumnInfo, rhs: Google_Cloud_Automl_V1beta1_TablesModelColumnInfo) -> Bool {
    if lhs.columnSpecName != rhs.columnSpecName {return false}
    if lhs.columnDisplayName != rhs.columnDisplayName {return false}
    if lhs.featureImportance != rhs.featureImportance {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
