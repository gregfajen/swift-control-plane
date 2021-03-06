// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/http/adaptive_concurrency/v3/adaptive_concurrency.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

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

/// Configuration parameters for the gradient controller.
public struct Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The percentile to use when summarizing aggregated samples. Defaults to p50.
  public var sampleAggregatePercentile: Envoy_Type_V3_Percent {
    get {return _sampleAggregatePercentile ?? Envoy_Type_V3_Percent()}
    set {_sampleAggregatePercentile = newValue}
  }
  /// Returns true if `sampleAggregatePercentile` has been explicitly set.
  public var hasSampleAggregatePercentile: Bool {return self._sampleAggregatePercentile != nil}
  /// Clears the value of `sampleAggregatePercentile`. Subsequent reads from it will return its default value.
  public mutating func clearSampleAggregatePercentile() {self._sampleAggregatePercentile = nil}

  public var concurrencyLimitParams: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.ConcurrencyLimitCalculationParams {
    get {return _concurrencyLimitParams ?? Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.ConcurrencyLimitCalculationParams()}
    set {_concurrencyLimitParams = newValue}
  }
  /// Returns true if `concurrencyLimitParams` has been explicitly set.
  public var hasConcurrencyLimitParams: Bool {return self._concurrencyLimitParams != nil}
  /// Clears the value of `concurrencyLimitParams`. Subsequent reads from it will return its default value.
  public mutating func clearConcurrencyLimitParams() {self._concurrencyLimitParams = nil}

  public var minRttCalcParams: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.MinimumRTTCalculationParams {
    get {return _minRttCalcParams ?? Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.MinimumRTTCalculationParams()}
    set {_minRttCalcParams = newValue}
  }
  /// Returns true if `minRttCalcParams` has been explicitly set.
  public var hasMinRttCalcParams: Bool {return self._minRttCalcParams != nil}
  /// Clears the value of `minRttCalcParams`. Subsequent reads from it will return its default value.
  public mutating func clearMinRttCalcParams() {self._minRttCalcParams = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Parameters controlling the periodic recalculation of the concurrency limit from sampled request
  /// latencies.
  public struct ConcurrencyLimitCalculationParams {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The allowed upper-bound on the calculated concurrency limit. Defaults to 1000.
    public var maxConcurrencyLimit: SwiftProtobuf.Google_Protobuf_UInt32Value {
      get {return _maxConcurrencyLimit ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
      set {_maxConcurrencyLimit = newValue}
    }
    /// Returns true if `maxConcurrencyLimit` has been explicitly set.
    public var hasMaxConcurrencyLimit: Bool {return self._maxConcurrencyLimit != nil}
    /// Clears the value of `maxConcurrencyLimit`. Subsequent reads from it will return its default value.
    public mutating func clearMaxConcurrencyLimit() {self._maxConcurrencyLimit = nil}

    /// The period of time samples are taken to recalculate the concurrency limit.
    public var concurrencyUpdateInterval: SwiftProtobuf.Google_Protobuf_Duration {
      get {return _concurrencyUpdateInterval ?? SwiftProtobuf.Google_Protobuf_Duration()}
      set {_concurrencyUpdateInterval = newValue}
    }
    /// Returns true if `concurrencyUpdateInterval` has been explicitly set.
    public var hasConcurrencyUpdateInterval: Bool {return self._concurrencyUpdateInterval != nil}
    /// Clears the value of `concurrencyUpdateInterval`. Subsequent reads from it will return its default value.
    public mutating func clearConcurrencyUpdateInterval() {self._concurrencyUpdateInterval = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _maxConcurrencyLimit: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    fileprivate var _concurrencyUpdateInterval: SwiftProtobuf.Google_Protobuf_Duration? = nil
  }

  /// Parameters controlling the periodic minRTT recalculation.
  /// [#next-free-field: 6]
  public struct MinimumRTTCalculationParams {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The time interval between recalculating the minimum request round-trip time. Has to be
    /// positive.
    public var interval: SwiftProtobuf.Google_Protobuf_Duration {
      get {return _interval ?? SwiftProtobuf.Google_Protobuf_Duration()}
      set {_interval = newValue}
    }
    /// Returns true if `interval` has been explicitly set.
    public var hasInterval: Bool {return self._interval != nil}
    /// Clears the value of `interval`. Subsequent reads from it will return its default value.
    public mutating func clearInterval() {self._interval = nil}

    /// The number of requests to aggregate/sample during the minRTT recalculation window before
    /// updating. Defaults to 50.
    public var requestCount: SwiftProtobuf.Google_Protobuf_UInt32Value {
      get {return _requestCount ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
      set {_requestCount = newValue}
    }
    /// Returns true if `requestCount` has been explicitly set.
    public var hasRequestCount: Bool {return self._requestCount != nil}
    /// Clears the value of `requestCount`. Subsequent reads from it will return its default value.
    public mutating func clearRequestCount() {self._requestCount = nil}

    /// Randomized time delta that will be introduced to the start of the minRTT calculation window.
    /// This is represented as a percentage of the interval duration. Defaults to 15%.
    ///
    /// Example: If the interval is 10s and the jitter is 15%, the next window will begin
    /// somewhere in the range (10s - 11.5s).
    public var jitter: Envoy_Type_V3_Percent {
      get {return _jitter ?? Envoy_Type_V3_Percent()}
      set {_jitter = newValue}
    }
    /// Returns true if `jitter` has been explicitly set.
    public var hasJitter: Bool {return self._jitter != nil}
    /// Clears the value of `jitter`. Subsequent reads from it will return its default value.
    public mutating func clearJitter() {self._jitter = nil}

    /// The concurrency limit set while measuring the minRTT. Defaults to 3.
    public var minConcurrency: SwiftProtobuf.Google_Protobuf_UInt32Value {
      get {return _minConcurrency ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
      set {_minConcurrency = newValue}
    }
    /// Returns true if `minConcurrency` has been explicitly set.
    public var hasMinConcurrency: Bool {return self._minConcurrency != nil}
    /// Clears the value of `minConcurrency`. Subsequent reads from it will return its default value.
    public mutating func clearMinConcurrency() {self._minConcurrency = nil}

    /// Amount added to the measured minRTT to add stability to the concurrency limit during natural
    /// variability in latency. This is expressed as a percentage of the measured value and can be
    /// adjusted to allow more or less tolerance to the sampled latency values.
    ///
    /// Defaults to 25%.
    public var buffer: Envoy_Type_V3_Percent {
      get {return _buffer ?? Envoy_Type_V3_Percent()}
      set {_buffer = newValue}
    }
    /// Returns true if `buffer` has been explicitly set.
    public var hasBuffer: Bool {return self._buffer != nil}
    /// Clears the value of `buffer`. Subsequent reads from it will return its default value.
    public mutating func clearBuffer() {self._buffer = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _interval: SwiftProtobuf.Google_Protobuf_Duration? = nil
    fileprivate var _requestCount: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    fileprivate var _jitter: Envoy_Type_V3_Percent? = nil
    fileprivate var _minConcurrency: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    fileprivate var _buffer: Envoy_Type_V3_Percent? = nil
  }

  public init() {}

  fileprivate var _sampleAggregatePercentile: Envoy_Type_V3_Percent? = nil
  fileprivate var _concurrencyLimitParams: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.ConcurrencyLimitCalculationParams? = nil
  fileprivate var _minRttCalcParams: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.MinimumRTTCalculationParams? = nil
}

public struct Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_AdaptiveConcurrency {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var concurrencyControllerConfig: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_AdaptiveConcurrency.OneOf_ConcurrencyControllerConfig? = nil

  /// Gradient concurrency control will be used.
  public var gradientControllerConfig: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig {
    get {
      if case .gradientControllerConfig(let v)? = concurrencyControllerConfig {return v}
      return Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig()
    }
    set {concurrencyControllerConfig = .gradientControllerConfig(newValue)}
  }

  /// If set to false, the adaptive concurrency filter will operate as a pass-through filter. If the
  /// message is unspecified, the filter will be enabled.
  public var enabled: Envoy_Config_Core_V3_RuntimeFeatureFlag {
    get {return _enabled ?? Envoy_Config_Core_V3_RuntimeFeatureFlag()}
    set {_enabled = newValue}
  }
  /// Returns true if `enabled` has been explicitly set.
  public var hasEnabled: Bool {return self._enabled != nil}
  /// Clears the value of `enabled`. Subsequent reads from it will return its default value.
  public mutating func clearEnabled() {self._enabled = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_ConcurrencyControllerConfig: Equatable {
    /// Gradient concurrency control will be used.
    case gradientControllerConfig(Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_AdaptiveConcurrency.OneOf_ConcurrencyControllerConfig, rhs: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_AdaptiveConcurrency.OneOf_ConcurrencyControllerConfig) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.gradientControllerConfig, .gradientControllerConfig): return {
        guard case .gradientControllerConfig(let l) = lhs, case .gradientControllerConfig(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _enabled: Envoy_Config_Core_V3_RuntimeFeatureFlag? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.http.adaptive_concurrency.v3"

extension Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GradientControllerConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "sample_aggregate_percentile"),
    2: .standard(proto: "concurrency_limit_params"),
    3: .standard(proto: "min_rtt_calc_params"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._sampleAggregatePercentile) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._concurrencyLimitParams) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._minRttCalcParams) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._sampleAggregatePercentile {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._concurrencyLimitParams {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._minRttCalcParams {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig, rhs: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig) -> Bool {
    if lhs._sampleAggregatePercentile != rhs._sampleAggregatePercentile {return false}
    if lhs._concurrencyLimitParams != rhs._concurrencyLimitParams {return false}
    if lhs._minRttCalcParams != rhs._minRttCalcParams {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.ConcurrencyLimitCalculationParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.protoMessageName + ".ConcurrencyLimitCalculationParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "max_concurrency_limit"),
    3: .standard(proto: "concurrency_update_interval"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularMessageField(value: &self._maxConcurrencyLimit) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._concurrencyUpdateInterval) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._maxConcurrencyLimit {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._concurrencyUpdateInterval {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.ConcurrencyLimitCalculationParams, rhs: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.ConcurrencyLimitCalculationParams) -> Bool {
    if lhs._maxConcurrencyLimit != rhs._maxConcurrencyLimit {return false}
    if lhs._concurrencyUpdateInterval != rhs._concurrencyUpdateInterval {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.MinimumRTTCalculationParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.protoMessageName + ".MinimumRTTCalculationParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "interval"),
    2: .standard(proto: "request_count"),
    3: .same(proto: "jitter"),
    4: .standard(proto: "min_concurrency"),
    5: .same(proto: "buffer"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._interval) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._requestCount) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._jitter) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._minConcurrency) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._buffer) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._interval {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._requestCount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._jitter {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._minConcurrency {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._buffer {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.MinimumRTTCalculationParams, rhs: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig.MinimumRTTCalculationParams) -> Bool {
    if lhs._interval != rhs._interval {return false}
    if lhs._requestCount != rhs._requestCount {return false}
    if lhs._jitter != rhs._jitter {return false}
    if lhs._minConcurrency != rhs._minConcurrency {return false}
    if lhs._buffer != rhs._buffer {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_AdaptiveConcurrency: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AdaptiveConcurrency"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "gradient_controller_config"),
    2: .same(proto: "enabled"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_GradientControllerConfig?
        if let current = self.concurrencyControllerConfig {
          try decoder.handleConflictingOneOf()
          if case .gradientControllerConfig(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.concurrencyControllerConfig = .gradientControllerConfig(v)}
      }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._enabled) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if case .gradientControllerConfig(let v)? = self.concurrencyControllerConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._enabled {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_AdaptiveConcurrency, rhs: Envoy_Extensions_Filters_Http_AdaptiveConcurrency_V3_AdaptiveConcurrency) -> Bool {
    if lhs.concurrencyControllerConfig != rhs.concurrencyControllerConfig {return false}
    if lhs._enabled != rhs._enabled {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
