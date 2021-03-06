// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/api/servicecontrol/v1/metric_value.proto
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

/// Represents a single metric value.
public struct Google_Api_Servicecontrol_V1_MetricValue {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The labels describing the metric value.
  /// See comments on [google.api.servicecontrol.v1.Operation.labels][google.api.servicecontrol.v1.Operation.labels] for
  /// the overriding relationship.
  /// Note that this map must not contain monitored resource labels.
  public var labels: Dictionary<String,String> = [:]

  /// The start of the time period over which this metric value's measurement
  /// applies. The time period has different semantics for different metric
  /// types (cumulative, delta, and gauge). See the metric definition
  /// documentation in the service configuration for details.
  public var startTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _startTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_startTime = newValue}
  }
  /// Returns true if `startTime` has been explicitly set.
  public var hasStartTime: Bool {return self._startTime != nil}
  /// Clears the value of `startTime`. Subsequent reads from it will return its default value.
  public mutating func clearStartTime() {self._startTime = nil}

  /// The end of the time period over which this metric value's measurement
  /// applies.
  public var endTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _endTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_endTime = newValue}
  }
  /// Returns true if `endTime` has been explicitly set.
  public var hasEndTime: Bool {return self._endTime != nil}
  /// Clears the value of `endTime`. Subsequent reads from it will return its default value.
  public mutating func clearEndTime() {self._endTime = nil}

  /// The value. The type of value used in the request must
  /// agree with the metric definition in the service configuration, otherwise
  /// the MetricValue is rejected.
  public var value: Google_Api_Servicecontrol_V1_MetricValue.OneOf_Value? = nil

  /// A boolean value.
  public var boolValue: Bool {
    get {
      if case .boolValue(let v)? = value {return v}
      return false
    }
    set {value = .boolValue(newValue)}
  }

  /// A signed 64-bit integer value.
  public var int64Value: Int64 {
    get {
      if case .int64Value(let v)? = value {return v}
      return 0
    }
    set {value = .int64Value(newValue)}
  }

  /// A double precision floating point value.
  public var doubleValue: Double {
    get {
      if case .doubleValue(let v)? = value {return v}
      return 0
    }
    set {value = .doubleValue(newValue)}
  }

  /// A text string value.
  public var stringValue: String {
    get {
      if case .stringValue(let v)? = value {return v}
      return String()
    }
    set {value = .stringValue(newValue)}
  }

  /// A distribution value.
  public var distributionValue: Google_Api_Servicecontrol_V1_Distribution {
    get {
      if case .distributionValue(let v)? = value {return v}
      return Google_Api_Servicecontrol_V1_Distribution()
    }
    set {value = .distributionValue(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The value. The type of value used in the request must
  /// agree with the metric definition in the service configuration, otherwise
  /// the MetricValue is rejected.
  public enum OneOf_Value: Equatable {
    /// A boolean value.
    case boolValue(Bool)
    /// A signed 64-bit integer value.
    case int64Value(Int64)
    /// A double precision floating point value.
    case doubleValue(Double)
    /// A text string value.
    case stringValue(String)
    /// A distribution value.
    case distributionValue(Google_Api_Servicecontrol_V1_Distribution)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Api_Servicecontrol_V1_MetricValue.OneOf_Value, rhs: Google_Api_Servicecontrol_V1_MetricValue.OneOf_Value) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.boolValue, .boolValue): return {
        guard case .boolValue(let l) = lhs, case .boolValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.int64Value, .int64Value): return {
        guard case .int64Value(let l) = lhs, case .int64Value(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.doubleValue, .doubleValue): return {
        guard case .doubleValue(let l) = lhs, case .doubleValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.stringValue, .stringValue): return {
        guard case .stringValue(let l) = lhs, case .stringValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.distributionValue, .distributionValue): return {
        guard case .distributionValue(let l) = lhs, case .distributionValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _startTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _endTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// Represents a set of metric values in the same metric.
/// Each metric value in the set should have a unique combination of start time,
/// end time, and label values.
public struct Google_Api_Servicecontrol_V1_MetricValueSet {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The metric name defined in the service configuration.
  public var metricName: String = String()

  /// The values in this metric.
  public var metricValues: [Google_Api_Servicecontrol_V1_MetricValue] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.api.servicecontrol.v1"

extension Google_Api_Servicecontrol_V1_MetricValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MetricValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "labels"),
    2: .standard(proto: "start_time"),
    3: .standard(proto: "end_time"),
    4: .standard(proto: "bool_value"),
    5: .standard(proto: "int64_value"),
    6: .standard(proto: "double_value"),
    7: .standard(proto: "string_value"),
    8: .standard(proto: "distribution_value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.labels) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._startTime) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._endTime) }()
      case 4: try {
        if self.value != nil {try decoder.handleConflictingOneOf()}
        var v: Bool?
        try decoder.decodeSingularBoolField(value: &v)
        if let v = v {self.value = .boolValue(v)}
      }()
      case 5: try {
        if self.value != nil {try decoder.handleConflictingOneOf()}
        var v: Int64?
        try decoder.decodeSingularInt64Field(value: &v)
        if let v = v {self.value = .int64Value(v)}
      }()
      case 6: try {
        if self.value != nil {try decoder.handleConflictingOneOf()}
        var v: Double?
        try decoder.decodeSingularDoubleField(value: &v)
        if let v = v {self.value = .doubleValue(v)}
      }()
      case 7: try {
        if self.value != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.value = .stringValue(v)}
      }()
      case 8: try {
        var v: Google_Api_Servicecontrol_V1_Distribution?
        if let current = self.value {
          try decoder.handleConflictingOneOf()
          if case .distributionValue(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.value = .distributionValue(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.labels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.labels, fieldNumber: 1)
    }
    if let v = self._startTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._endTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.value {
    case .boolValue?: try {
      guard case .boolValue(let v)? = self.value else { preconditionFailure() }
      try visitor.visitSingularBoolField(value: v, fieldNumber: 4)
    }()
    case .int64Value?: try {
      guard case .int64Value(let v)? = self.value else { preconditionFailure() }
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 5)
    }()
    case .doubleValue?: try {
      guard case .doubleValue(let v)? = self.value else { preconditionFailure() }
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 6)
    }()
    case .stringValue?: try {
      guard case .stringValue(let v)? = self.value else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 7)
    }()
    case .distributionValue?: try {
      guard case .distributionValue(let v)? = self.value else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Api_Servicecontrol_V1_MetricValue, rhs: Google_Api_Servicecontrol_V1_MetricValue) -> Bool {
    if lhs.labels != rhs.labels {return false}
    if lhs._startTime != rhs._startTime {return false}
    if lhs._endTime != rhs._endTime {return false}
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Api_Servicecontrol_V1_MetricValueSet: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MetricValueSet"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "metric_name"),
    2: .standard(proto: "metric_values"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.metricName) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.metricValues) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.metricName.isEmpty {
      try visitor.visitSingularStringField(value: self.metricName, fieldNumber: 1)
    }
    if !self.metricValues.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.metricValues, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Api_Servicecontrol_V1_MetricValueSet, rhs: Google_Api_Servicecontrol_V1_MetricValueSet) -> Bool {
    if lhs.metricName != rhs.metricName {return false}
    if lhs.metricValues != rhs.metricValues {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
