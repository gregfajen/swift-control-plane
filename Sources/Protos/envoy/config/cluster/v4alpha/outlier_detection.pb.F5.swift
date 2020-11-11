// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/cluster/v4alpha/outlier_detection.proto
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

/// See the :ref:`architecture overview <arch_overview_outlier_detection>` for
/// more information on outlier detection.
/// [#next-free-field: 21]
public struct Envoy_Config_Cluster_V4alpha_OutlierDetection {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The number of consecutive 5xx responses or local origin errors that are mapped
  /// to 5xx error codes before a consecutive 5xx ejection
  /// occurs. Defaults to 5.
  public var consecutive5Xx: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._consecutive5Xx ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._consecutive5Xx = newValue}
  }
  /// Returns true if `consecutive5Xx` has been explicitly set.
  public var hasConsecutive5Xx: Bool {return _storage._consecutive5Xx != nil}
  /// Clears the value of `consecutive5Xx`. Subsequent reads from it will return its default value.
  public mutating func clearConsecutive5Xx() {_uniqueStorage()._consecutive5Xx = nil}

  /// The time interval between ejection analysis sweeps. This can result in
  /// both new ejections as well as hosts being returned to service. Defaults
  /// to 10000ms or 10s.
  public var interval: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _storage._interval ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_uniqueStorage()._interval = newValue}
  }
  /// Returns true if `interval` has been explicitly set.
  public var hasInterval: Bool {return _storage._interval != nil}
  /// Clears the value of `interval`. Subsequent reads from it will return its default value.
  public mutating func clearInterval() {_uniqueStorage()._interval = nil}

  /// The base time that a host is ejected for. The real time is equal to the
  /// base time multiplied by the number of times the host has been ejected.
  /// Defaults to 30000ms or 30s.
  public var baseEjectionTime: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _storage._baseEjectionTime ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_uniqueStorage()._baseEjectionTime = newValue}
  }
  /// Returns true if `baseEjectionTime` has been explicitly set.
  public var hasBaseEjectionTime: Bool {return _storage._baseEjectionTime != nil}
  /// Clears the value of `baseEjectionTime`. Subsequent reads from it will return its default value.
  public mutating func clearBaseEjectionTime() {_uniqueStorage()._baseEjectionTime = nil}

  /// The maximum % of an upstream cluster that can be ejected due to outlier
  /// detection. Defaults to 10% but will eject at least one host regardless of the value.
  public var maxEjectionPercent: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._maxEjectionPercent ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._maxEjectionPercent = newValue}
  }
  /// Returns true if `maxEjectionPercent` has been explicitly set.
  public var hasMaxEjectionPercent: Bool {return _storage._maxEjectionPercent != nil}
  /// Clears the value of `maxEjectionPercent`. Subsequent reads from it will return its default value.
  public mutating func clearMaxEjectionPercent() {_uniqueStorage()._maxEjectionPercent = nil}

  /// The % chance that a host will be actually ejected when an outlier status
  /// is detected through consecutive 5xx. This setting can be used to disable
  /// ejection or to ramp it up slowly. Defaults to 100.
  public var enforcingConsecutive5Xx: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._enforcingConsecutive5Xx ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._enforcingConsecutive5Xx = newValue}
  }
  /// Returns true if `enforcingConsecutive5Xx` has been explicitly set.
  public var hasEnforcingConsecutive5Xx: Bool {return _storage._enforcingConsecutive5Xx != nil}
  /// Clears the value of `enforcingConsecutive5Xx`. Subsequent reads from it will return its default value.
  public mutating func clearEnforcingConsecutive5Xx() {_uniqueStorage()._enforcingConsecutive5Xx = nil}

  /// The % chance that a host will be actually ejected when an outlier status
  /// is detected through success rate statistics. This setting can be used to
  /// disable ejection or to ramp it up slowly. Defaults to 100.
  public var enforcingSuccessRate: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._enforcingSuccessRate ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._enforcingSuccessRate = newValue}
  }
  /// Returns true if `enforcingSuccessRate` has been explicitly set.
  public var hasEnforcingSuccessRate: Bool {return _storage._enforcingSuccessRate != nil}
  /// Clears the value of `enforcingSuccessRate`. Subsequent reads from it will return its default value.
  public mutating func clearEnforcingSuccessRate() {_uniqueStorage()._enforcingSuccessRate = nil}

  /// The number of hosts in a cluster that must have enough request volume to
  /// detect success rate outliers. If the number of hosts is less than this
  /// setting, outlier detection via success rate statistics is not performed
  /// for any host in the cluster. Defaults to 5.
  public var successRateMinimumHosts: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._successRateMinimumHosts ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._successRateMinimumHosts = newValue}
  }
  /// Returns true if `successRateMinimumHosts` has been explicitly set.
  public var hasSuccessRateMinimumHosts: Bool {return _storage._successRateMinimumHosts != nil}
  /// Clears the value of `successRateMinimumHosts`. Subsequent reads from it will return its default value.
  public mutating func clearSuccessRateMinimumHosts() {_uniqueStorage()._successRateMinimumHosts = nil}

  /// The minimum number of total requests that must be collected in one
  /// interval (as defined by the interval duration above) to include this host
  /// in success rate based outlier detection. If the volume is lower than this
  /// setting, outlier detection via success rate statistics is not performed
  /// for that host. Defaults to 100.
  public var successRateRequestVolume: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._successRateRequestVolume ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._successRateRequestVolume = newValue}
  }
  /// Returns true if `successRateRequestVolume` has been explicitly set.
  public var hasSuccessRateRequestVolume: Bool {return _storage._successRateRequestVolume != nil}
  /// Clears the value of `successRateRequestVolume`. Subsequent reads from it will return its default value.
  public mutating func clearSuccessRateRequestVolume() {_uniqueStorage()._successRateRequestVolume = nil}

  /// This factor is used to determine the ejection threshold for success rate
  /// outlier ejection. The ejection threshold is the difference between the
  /// mean success rate, and the product of this factor and the standard
  /// deviation of the mean success rate: mean - (stdev *
  /// success_rate_stdev_factor). This factor is divided by a thousand to get a
  /// double. That is, if the desired factor is 1.9, the runtime value should
  /// be 1900. Defaults to 1900.
  public var successRateStdevFactor: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._successRateStdevFactor ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._successRateStdevFactor = newValue}
  }
  /// Returns true if `successRateStdevFactor` has been explicitly set.
  public var hasSuccessRateStdevFactor: Bool {return _storage._successRateStdevFactor != nil}
  /// Clears the value of `successRateStdevFactor`. Subsequent reads from it will return its default value.
  public mutating func clearSuccessRateStdevFactor() {_uniqueStorage()._successRateStdevFactor = nil}

  /// The number of consecutive gateway failures (502, 503, 504 status codes)
  /// before a consecutive gateway failure ejection occurs. Defaults to 5.
  public var consecutiveGatewayFailure: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._consecutiveGatewayFailure ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._consecutiveGatewayFailure = newValue}
  }
  /// Returns true if `consecutiveGatewayFailure` has been explicitly set.
  public var hasConsecutiveGatewayFailure: Bool {return _storage._consecutiveGatewayFailure != nil}
  /// Clears the value of `consecutiveGatewayFailure`. Subsequent reads from it will return its default value.
  public mutating func clearConsecutiveGatewayFailure() {_uniqueStorage()._consecutiveGatewayFailure = nil}

  /// The % chance that a host will be actually ejected when an outlier status
  /// is detected through consecutive gateway failures. This setting can be
  /// used to disable ejection or to ramp it up slowly. Defaults to 0.
  public var enforcingConsecutiveGatewayFailure: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._enforcingConsecutiveGatewayFailure ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._enforcingConsecutiveGatewayFailure = newValue}
  }
  /// Returns true if `enforcingConsecutiveGatewayFailure` has been explicitly set.
  public var hasEnforcingConsecutiveGatewayFailure: Bool {return _storage._enforcingConsecutiveGatewayFailure != nil}
  /// Clears the value of `enforcingConsecutiveGatewayFailure`. Subsequent reads from it will return its default value.
  public mutating func clearEnforcingConsecutiveGatewayFailure() {_uniqueStorage()._enforcingConsecutiveGatewayFailure = nil}

  /// Determines whether to distinguish local origin failures from external errors. If set to true
  /// the following configuration parameters are taken into account:
  /// :ref:`consecutive_local_origin_failure<envoy_api_field_config.cluster.v4alpha.OutlierDetection.consecutive_local_origin_failure>`,
  /// :ref:`enforcing_consecutive_local_origin_failure<envoy_api_field_config.cluster.v4alpha.OutlierDetection.enforcing_consecutive_local_origin_failure>`
  /// and
  /// :ref:`enforcing_local_origin_success_rate<envoy_api_field_config.cluster.v4alpha.OutlierDetection.enforcing_local_origin_success_rate>`.
  /// Defaults to false.
  public var splitExternalLocalOriginErrors: Bool {
    get {return _storage._splitExternalLocalOriginErrors}
    set {_uniqueStorage()._splitExternalLocalOriginErrors = newValue}
  }

  /// The number of consecutive locally originated failures before ejection
  /// occurs. Defaults to 5. Parameter takes effect only when
  /// :ref:`split_external_local_origin_errors<envoy_api_field_config.cluster.v4alpha.OutlierDetection.split_external_local_origin_errors>`
  /// is set to true.
  public var consecutiveLocalOriginFailure: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._consecutiveLocalOriginFailure ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._consecutiveLocalOriginFailure = newValue}
  }
  /// Returns true if `consecutiveLocalOriginFailure` has been explicitly set.
  public var hasConsecutiveLocalOriginFailure: Bool {return _storage._consecutiveLocalOriginFailure != nil}
  /// Clears the value of `consecutiveLocalOriginFailure`. Subsequent reads from it will return its default value.
  public mutating func clearConsecutiveLocalOriginFailure() {_uniqueStorage()._consecutiveLocalOriginFailure = nil}

  /// The % chance that a host will be actually ejected when an outlier status
  /// is detected through consecutive locally originated failures. This setting can be
  /// used to disable ejection or to ramp it up slowly. Defaults to 100.
  /// Parameter takes effect only when
  /// :ref:`split_external_local_origin_errors<envoy_api_field_config.cluster.v4alpha.OutlierDetection.split_external_local_origin_errors>`
  /// is set to true.
  public var enforcingConsecutiveLocalOriginFailure: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._enforcingConsecutiveLocalOriginFailure ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._enforcingConsecutiveLocalOriginFailure = newValue}
  }
  /// Returns true if `enforcingConsecutiveLocalOriginFailure` has been explicitly set.
  public var hasEnforcingConsecutiveLocalOriginFailure: Bool {return _storage._enforcingConsecutiveLocalOriginFailure != nil}
  /// Clears the value of `enforcingConsecutiveLocalOriginFailure`. Subsequent reads from it will return its default value.
  public mutating func clearEnforcingConsecutiveLocalOriginFailure() {_uniqueStorage()._enforcingConsecutiveLocalOriginFailure = nil}

  /// The % chance that a host will be actually ejected when an outlier status
  /// is detected through success rate statistics for locally originated errors.
  /// This setting can be used to disable ejection or to ramp it up slowly. Defaults to 100.
  /// Parameter takes effect only when
  /// :ref:`split_external_local_origin_errors<envoy_api_field_config.cluster.v4alpha.OutlierDetection.split_external_local_origin_errors>`
  /// is set to true.
  public var enforcingLocalOriginSuccessRate: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._enforcingLocalOriginSuccessRate ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._enforcingLocalOriginSuccessRate = newValue}
  }
  /// Returns true if `enforcingLocalOriginSuccessRate` has been explicitly set.
  public var hasEnforcingLocalOriginSuccessRate: Bool {return _storage._enforcingLocalOriginSuccessRate != nil}
  /// Clears the value of `enforcingLocalOriginSuccessRate`. Subsequent reads from it will return its default value.
  public mutating func clearEnforcingLocalOriginSuccessRate() {_uniqueStorage()._enforcingLocalOriginSuccessRate = nil}

  /// The failure percentage to use when determining failure percentage-based outlier detection. If
  /// the failure percentage of a given host is greater than or equal to this value, it will be
  /// ejected. Defaults to 85.
  public var failurePercentageThreshold: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._failurePercentageThreshold ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._failurePercentageThreshold = newValue}
  }
  /// Returns true if `failurePercentageThreshold` has been explicitly set.
  public var hasFailurePercentageThreshold: Bool {return _storage._failurePercentageThreshold != nil}
  /// Clears the value of `failurePercentageThreshold`. Subsequent reads from it will return its default value.
  public mutating func clearFailurePercentageThreshold() {_uniqueStorage()._failurePercentageThreshold = nil}

  /// The % chance that a host will be actually ejected when an outlier status is detected through
  /// failure percentage statistics. This setting can be used to disable ejection or to ramp it up
  /// slowly. Defaults to 0.
  ///
  /// [#next-major-version: setting this without setting failure_percentage_threshold should be
  /// invalid in v4.]
  public var enforcingFailurePercentage: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._enforcingFailurePercentage ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._enforcingFailurePercentage = newValue}
  }
  /// Returns true if `enforcingFailurePercentage` has been explicitly set.
  public var hasEnforcingFailurePercentage: Bool {return _storage._enforcingFailurePercentage != nil}
  /// Clears the value of `enforcingFailurePercentage`. Subsequent reads from it will return its default value.
  public mutating func clearEnforcingFailurePercentage() {_uniqueStorage()._enforcingFailurePercentage = nil}

  /// The % chance that a host will be actually ejected when an outlier status is detected through
  /// local-origin failure percentage statistics. This setting can be used to disable ejection or to
  /// ramp it up slowly. Defaults to 0.
  public var enforcingFailurePercentageLocalOrigin: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._enforcingFailurePercentageLocalOrigin ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._enforcingFailurePercentageLocalOrigin = newValue}
  }
  /// Returns true if `enforcingFailurePercentageLocalOrigin` has been explicitly set.
  public var hasEnforcingFailurePercentageLocalOrigin: Bool {return _storage._enforcingFailurePercentageLocalOrigin != nil}
  /// Clears the value of `enforcingFailurePercentageLocalOrigin`. Subsequent reads from it will return its default value.
  public mutating func clearEnforcingFailurePercentageLocalOrigin() {_uniqueStorage()._enforcingFailurePercentageLocalOrigin = nil}

  /// The minimum number of hosts in a cluster in order to perform failure percentage-based ejection.
  /// If the total number of hosts in the cluster is less than this value, failure percentage-based
  /// ejection will not be performed. Defaults to 5.
  public var failurePercentageMinimumHosts: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._failurePercentageMinimumHosts ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._failurePercentageMinimumHosts = newValue}
  }
  /// Returns true if `failurePercentageMinimumHosts` has been explicitly set.
  public var hasFailurePercentageMinimumHosts: Bool {return _storage._failurePercentageMinimumHosts != nil}
  /// Clears the value of `failurePercentageMinimumHosts`. Subsequent reads from it will return its default value.
  public mutating func clearFailurePercentageMinimumHosts() {_uniqueStorage()._failurePercentageMinimumHosts = nil}

  /// The minimum number of total requests that must be collected in one interval (as defined by the
  /// interval duration above) to perform failure percentage-based ejection for this host. If the
  /// volume is lower than this setting, failure percentage-based ejection will not be performed for
  /// this host. Defaults to 50.
  public var failurePercentageRequestVolume: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._failurePercentageRequestVolume ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._failurePercentageRequestVolume = newValue}
  }
  /// Returns true if `failurePercentageRequestVolume` has been explicitly set.
  public var hasFailurePercentageRequestVolume: Bool {return _storage._failurePercentageRequestVolume != nil}
  /// Clears the value of `failurePercentageRequestVolume`. Subsequent reads from it will return its default value.
  public mutating func clearFailurePercentageRequestVolume() {_uniqueStorage()._failurePercentageRequestVolume = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.cluster.v4alpha"

extension Envoy_Config_Cluster_V4alpha_OutlierDetection: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OutlierDetection"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "consecutive_5xx"),
    2: .same(proto: "interval"),
    3: .standard(proto: "base_ejection_time"),
    4: .standard(proto: "max_ejection_percent"),
    5: .standard(proto: "enforcing_consecutive_5xx"),
    6: .standard(proto: "enforcing_success_rate"),
    7: .standard(proto: "success_rate_minimum_hosts"),
    8: .standard(proto: "success_rate_request_volume"),
    9: .standard(proto: "success_rate_stdev_factor"),
    10: .standard(proto: "consecutive_gateway_failure"),
    11: .standard(proto: "enforcing_consecutive_gateway_failure"),
    12: .standard(proto: "split_external_local_origin_errors"),
    13: .standard(proto: "consecutive_local_origin_failure"),
    14: .standard(proto: "enforcing_consecutive_local_origin_failure"),
    15: .standard(proto: "enforcing_local_origin_success_rate"),
    16: .standard(proto: "failure_percentage_threshold"),
    17: .standard(proto: "enforcing_failure_percentage"),
    18: .standard(proto: "enforcing_failure_percentage_local_origin"),
    19: .standard(proto: "failure_percentage_minimum_hosts"),
    20: .standard(proto: "failure_percentage_request_volume"),
  ]

  fileprivate class _StorageClass {
    var _consecutive5Xx: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _interval: SwiftProtobuf.Google_Protobuf_Duration? = nil
    var _baseEjectionTime: SwiftProtobuf.Google_Protobuf_Duration? = nil
    var _maxEjectionPercent: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _enforcingConsecutive5Xx: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _enforcingSuccessRate: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _successRateMinimumHosts: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _successRateRequestVolume: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _successRateStdevFactor: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _consecutiveGatewayFailure: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _enforcingConsecutiveGatewayFailure: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _splitExternalLocalOriginErrors: Bool = false
    var _consecutiveLocalOriginFailure: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _enforcingConsecutiveLocalOriginFailure: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _enforcingLocalOriginSuccessRate: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _failurePercentageThreshold: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _enforcingFailurePercentage: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _enforcingFailurePercentageLocalOrigin: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _failurePercentageMinimumHosts: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _failurePercentageRequestVolume: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _consecutive5Xx = source._consecutive5Xx
      _interval = source._interval
      _baseEjectionTime = source._baseEjectionTime
      _maxEjectionPercent = source._maxEjectionPercent
      _enforcingConsecutive5Xx = source._enforcingConsecutive5Xx
      _enforcingSuccessRate = source._enforcingSuccessRate
      _successRateMinimumHosts = source._successRateMinimumHosts
      _successRateRequestVolume = source._successRateRequestVolume
      _successRateStdevFactor = source._successRateStdevFactor
      _consecutiveGatewayFailure = source._consecutiveGatewayFailure
      _enforcingConsecutiveGatewayFailure = source._enforcingConsecutiveGatewayFailure
      _splitExternalLocalOriginErrors = source._splitExternalLocalOriginErrors
      _consecutiveLocalOriginFailure = source._consecutiveLocalOriginFailure
      _enforcingConsecutiveLocalOriginFailure = source._enforcingConsecutiveLocalOriginFailure
      _enforcingLocalOriginSuccessRate = source._enforcingLocalOriginSuccessRate
      _failurePercentageThreshold = source._failurePercentageThreshold
      _enforcingFailurePercentage = source._enforcingFailurePercentage
      _enforcingFailurePercentageLocalOrigin = source._enforcingFailurePercentageLocalOrigin
      _failurePercentageMinimumHosts = source._failurePercentageMinimumHosts
      _failurePercentageRequestVolume = source._failurePercentageRequestVolume
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
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._consecutive5Xx) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._interval) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._baseEjectionTime) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._maxEjectionPercent) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._enforcingConsecutive5Xx) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._enforcingSuccessRate) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._successRateMinimumHosts) }()
        case 8: try { try decoder.decodeSingularMessageField(value: &_storage._successRateRequestVolume) }()
        case 9: try { try decoder.decodeSingularMessageField(value: &_storage._successRateStdevFactor) }()
        case 10: try { try decoder.decodeSingularMessageField(value: &_storage._consecutiveGatewayFailure) }()
        case 11: try { try decoder.decodeSingularMessageField(value: &_storage._enforcingConsecutiveGatewayFailure) }()
        case 12: try { try decoder.decodeSingularBoolField(value: &_storage._splitExternalLocalOriginErrors) }()
        case 13: try { try decoder.decodeSingularMessageField(value: &_storage._consecutiveLocalOriginFailure) }()
        case 14: try { try decoder.decodeSingularMessageField(value: &_storage._enforcingConsecutiveLocalOriginFailure) }()
        case 15: try { try decoder.decodeSingularMessageField(value: &_storage._enforcingLocalOriginSuccessRate) }()
        case 16: try { try decoder.decodeSingularMessageField(value: &_storage._failurePercentageThreshold) }()
        case 17: try { try decoder.decodeSingularMessageField(value: &_storage._enforcingFailurePercentage) }()
        case 18: try { try decoder.decodeSingularMessageField(value: &_storage._enforcingFailurePercentageLocalOrigin) }()
        case 19: try { try decoder.decodeSingularMessageField(value: &_storage._failurePercentageMinimumHosts) }()
        case 20: try { try decoder.decodeSingularMessageField(value: &_storage._failurePercentageRequestVolume) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._consecutive5Xx {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._interval {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._baseEjectionTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._maxEjectionPercent {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._enforcingConsecutive5Xx {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._enforcingSuccessRate {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if let v = _storage._successRateMinimumHosts {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
      if let v = _storage._successRateRequestVolume {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      }
      if let v = _storage._successRateStdevFactor {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      }
      if let v = _storage._consecutiveGatewayFailure {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      }
      if let v = _storage._enforcingConsecutiveGatewayFailure {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      }
      if _storage._splitExternalLocalOriginErrors != false {
        try visitor.visitSingularBoolField(value: _storage._splitExternalLocalOriginErrors, fieldNumber: 12)
      }
      if let v = _storage._consecutiveLocalOriginFailure {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 13)
      }
      if let v = _storage._enforcingConsecutiveLocalOriginFailure {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 14)
      }
      if let v = _storage._enforcingLocalOriginSuccessRate {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 15)
      }
      if let v = _storage._failurePercentageThreshold {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 16)
      }
      if let v = _storage._enforcingFailurePercentage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 17)
      }
      if let v = _storage._enforcingFailurePercentageLocalOrigin {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 18)
      }
      if let v = _storage._failurePercentageMinimumHosts {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 19)
      }
      if let v = _storage._failurePercentageRequestVolume {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 20)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Cluster_V4alpha_OutlierDetection, rhs: Envoy_Config_Cluster_V4alpha_OutlierDetection) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._consecutive5Xx != rhs_storage._consecutive5Xx {return false}
        if _storage._interval != rhs_storage._interval {return false}
        if _storage._baseEjectionTime != rhs_storage._baseEjectionTime {return false}
        if _storage._maxEjectionPercent != rhs_storage._maxEjectionPercent {return false}
        if _storage._enforcingConsecutive5Xx != rhs_storage._enforcingConsecutive5Xx {return false}
        if _storage._enforcingSuccessRate != rhs_storage._enforcingSuccessRate {return false}
        if _storage._successRateMinimumHosts != rhs_storage._successRateMinimumHosts {return false}
        if _storage._successRateRequestVolume != rhs_storage._successRateRequestVolume {return false}
        if _storage._successRateStdevFactor != rhs_storage._successRateStdevFactor {return false}
        if _storage._consecutiveGatewayFailure != rhs_storage._consecutiveGatewayFailure {return false}
        if _storage._enforcingConsecutiveGatewayFailure != rhs_storage._enforcingConsecutiveGatewayFailure {return false}
        if _storage._splitExternalLocalOriginErrors != rhs_storage._splitExternalLocalOriginErrors {return false}
        if _storage._consecutiveLocalOriginFailure != rhs_storage._consecutiveLocalOriginFailure {return false}
        if _storage._enforcingConsecutiveLocalOriginFailure != rhs_storage._enforcingConsecutiveLocalOriginFailure {return false}
        if _storage._enforcingLocalOriginSuccessRate != rhs_storage._enforcingLocalOriginSuccessRate {return false}
        if _storage._failurePercentageThreshold != rhs_storage._failurePercentageThreshold {return false}
        if _storage._enforcingFailurePercentage != rhs_storage._enforcingFailurePercentage {return false}
        if _storage._enforcingFailurePercentageLocalOrigin != rhs_storage._enforcingFailurePercentageLocalOrigin {return false}
        if _storage._failurePercentageMinimumHosts != rhs_storage._failurePercentageMinimumHosts {return false}
        if _storage._failurePercentageRequestVolume != rhs_storage._failurePercentageRequestVolume {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
