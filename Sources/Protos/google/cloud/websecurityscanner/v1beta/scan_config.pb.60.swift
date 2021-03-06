// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/websecurityscanner/v1beta/scan_config.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2019 Google LLC.
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

/// A ScanConfig resource contains the configurations to launch a scan.
public struct Google_Cloud_Websecurityscanner_V1beta_ScanConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The resource name of the ScanConfig. The name follows the format of
  /// 'projects/{projectId}/scanConfigs/{scanConfigId}'. The ScanConfig IDs are
  /// generated by the system.
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// Required. The user provided display name of the ScanConfig.
  public var displayName: String {
    get {return _storage._displayName}
    set {_uniqueStorage()._displayName = newValue}
  }

  /// The maximum QPS during scanning. A valid value ranges from 5 to 20
  /// inclusively. If the field is unspecified or its value is set 0, server will
  /// default to 15. Other values outside of [5, 20] range will be rejected with
  /// INVALID_ARGUMENT error.
  public var maxQps: Int32 {
    get {return _storage._maxQps}
    set {_uniqueStorage()._maxQps = newValue}
  }

  /// Required. The starting URLs from which the scanner finds site pages.
  public var startingUrls: [String] {
    get {return _storage._startingUrls}
    set {_uniqueStorage()._startingUrls = newValue}
  }

  /// The authentication configuration. If specified, service will use the
  /// authentication configuration during scanning.
  public var authentication: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication {
    get {return _storage._authentication ?? Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication()}
    set {_uniqueStorage()._authentication = newValue}
  }
  /// Returns true if `authentication` has been explicitly set.
  public var hasAuthentication: Bool {return _storage._authentication != nil}
  /// Clears the value of `authentication`. Subsequent reads from it will return its default value.
  public mutating func clearAuthentication() {_uniqueStorage()._authentication = nil}

  /// The user agent used during scanning.
  public var userAgent: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.UserAgent {
    get {return _storage._userAgent}
    set {_uniqueStorage()._userAgent = newValue}
  }

  /// The blacklist URL patterns as described in
  /// https://cloud.google.com/security-scanner/docs/excluded-urls
  public var blacklistPatterns: [String] {
    get {return _storage._blacklistPatterns}
    set {_uniqueStorage()._blacklistPatterns = newValue}
  }

  /// The schedule of the ScanConfig.
  public var schedule: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Schedule {
    get {return _storage._schedule ?? Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Schedule()}
    set {_uniqueStorage()._schedule = newValue}
  }
  /// Returns true if `schedule` has been explicitly set.
  public var hasSchedule: Bool {return _storage._schedule != nil}
  /// Clears the value of `schedule`. Subsequent reads from it will return its default value.
  public mutating func clearSchedule() {_uniqueStorage()._schedule = nil}

  /// Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be
  /// used as a default.
  public var targetPlatforms: [Google_Cloud_Websecurityscanner_V1beta_ScanConfig.TargetPlatform] {
    get {return _storage._targetPlatforms}
    set {_uniqueStorage()._targetPlatforms = newValue}
  }

  /// Controls export of scan configurations and results to Cloud Security
  /// Command Center.
  public var exportToSecurityCommandCenter: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.ExportToSecurityCommandCenter {
    get {return _storage._exportToSecurityCommandCenter}
    set {_uniqueStorage()._exportToSecurityCommandCenter = newValue}
  }

  /// Latest ScanRun if available.
  public var latestRun: Google_Cloud_Websecurityscanner_V1beta_ScanRun {
    get {return _storage._latestRun ?? Google_Cloud_Websecurityscanner_V1beta_ScanRun()}
    set {_uniqueStorage()._latestRun = newValue}
  }
  /// Returns true if `latestRun` has been explicitly set.
  public var hasLatestRun: Bool {return _storage._latestRun != nil}
  /// Clears the value of `latestRun`. Subsequent reads from it will return its default value.
  public mutating func clearLatestRun() {_uniqueStorage()._latestRun = nil}

  /// The risk level selected for the scan
  public var riskLevel: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.RiskLevel {
    get {return _storage._riskLevel}
    set {_uniqueStorage()._riskLevel = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Type of user agents used for scanning.
  public enum UserAgent: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// The user agent is unknown. Service will default to CHROME_LINUX.
    case unspecified // = 0

    /// Chrome on Linux. This is the service default if unspecified.
    case chromeLinux // = 1

    /// Chrome on Android.
    case chromeAndroid // = 2

    /// Safari on IPhone.
    case safariIphone // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .chromeLinux
      case 2: self = .chromeAndroid
      case 3: self = .safariIphone
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .chromeLinux: return 1
      case .chromeAndroid: return 2
      case .safariIphone: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Cloud platforms supported by Cloud Web Security Scanner.
  public enum TargetPlatform: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// The target platform is unknown. Requests with this enum value will be
    /// rejected with INVALID_ARGUMENT error.
    case unspecified // = 0

    /// Google App Engine service.
    case appEngine // = 1

    /// Google Compute Engine service.
    case compute // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .appEngine
      case 2: self = .compute
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .appEngine: return 1
      case .compute: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Scan risk levels supported by Cloud Web Security Scanner. LOW impact
  /// scanning will minimize requests with the potential to modify data. To
  /// achieve the maximum scan coverage, NORMAL risk level is recommended.
  public enum RiskLevel: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Use default, which is NORMAL.
    case unspecified // = 0

    /// Normal scanning (Recommended)
    case normal // = 1

    /// Lower impact scanning
    case low // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .normal
      case 2: self = .low
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .normal: return 1
      case .low: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Controls export of scan configurations and results to Cloud Security
  /// Command Center.
  public enum ExportToSecurityCommandCenter: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Use default, which is ENABLED.
    case unspecified // = 0

    /// Export results of this scan to Cloud Security Command Center.
    case enabled // = 1

    /// Do not export results of this scan to Cloud Security Command Center.
    case disabled // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .enabled
      case 2: self = .disabled
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .enabled: return 1
      case .disabled: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Scan authentication configuration.
  public struct Authentication {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Required.
    /// Authentication configuration
    public var authentication: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.OneOf_Authentication? = nil

    /// Authentication using a Google account.
    public var googleAccount: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.GoogleAccount {
      get {
        if case .googleAccount(let v)? = authentication {return v}
        return Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.GoogleAccount()
      }
      set {authentication = .googleAccount(newValue)}
    }

    /// Authentication using a custom account.
    public var customAccount: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.CustomAccount {
      get {
        if case .customAccount(let v)? = authentication {return v}
        return Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.CustomAccount()
      }
      set {authentication = .customAccount(newValue)}
    }

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    /// Required.
    /// Authentication configuration
    public enum OneOf_Authentication: Equatable {
      /// Authentication using a Google account.
      case googleAccount(Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.GoogleAccount)
      /// Authentication using a custom account.
      case customAccount(Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.CustomAccount)

    #if !swift(>=4.1)
      public static func ==(lhs: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.OneOf_Authentication, rhs: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.OneOf_Authentication) -> Bool {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch (lhs, rhs) {
        case (.googleAccount, .googleAccount): return {
          guard case .googleAccount(let l) = lhs, case .googleAccount(let r) = rhs else { preconditionFailure() }
          return l == r
        }()
        case (.customAccount, .customAccount): return {
          guard case .customAccount(let l) = lhs, case .customAccount(let r) = rhs else { preconditionFailure() }
          return l == r
        }()
        default: return false
        }
      }
    #endif
    }

    /// Describes authentication configuration that uses a Google account.
    public struct GoogleAccount {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      /// Required. The user name of the Google account.
      public var username: String = String()

      /// Required. Input only. The password of the Google account. The credential is stored encrypted
      /// and not returned in any response nor included in audit logs.
      public var password: String = String()

      public var unknownFields = SwiftProtobuf.UnknownStorage()

      public init() {}
    }

    /// Describes authentication configuration that uses a custom account.
    public struct CustomAccount {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      /// Required. The user name of the custom account.
      public var username: String = String()

      /// Required. Input only. The password of the custom account. The credential is stored encrypted
      /// and not returned in any response nor included in audit logs.
      public var password: String = String()

      /// Required. The login form URL of the website.
      public var loginURL: String = String()

      public var unknownFields = SwiftProtobuf.UnknownStorage()

      public init() {}
    }

    public init() {}
  }

  /// Scan schedule configuration.
  public struct Schedule {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// A timestamp indicates when the next run will be scheduled. The value is
    /// refreshed by the server after each run. If unspecified, it will default
    /// to current server time, which means the scan will be scheduled to start
    /// immediately.
    public var scheduleTime: SwiftProtobuf.Google_Protobuf_Timestamp {
      get {return _scheduleTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
      set {_scheduleTime = newValue}
    }
    /// Returns true if `scheduleTime` has been explicitly set.
    public var hasScheduleTime: Bool {return self._scheduleTime != nil}
    /// Clears the value of `scheduleTime`. Subsequent reads from it will return its default value.
    public mutating func clearScheduleTime() {self._scheduleTime = nil}

    /// Required. The duration of time between executions in days.
    public var intervalDurationDays: Int32 = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _scheduleTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension Google_Cloud_Websecurityscanner_V1beta_ScanConfig.UserAgent: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Websecurityscanner_V1beta_ScanConfig.UserAgent] = [
    .unspecified,
    .chromeLinux,
    .chromeAndroid,
    .safariIphone,
  ]
}

extension Google_Cloud_Websecurityscanner_V1beta_ScanConfig.TargetPlatform: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Websecurityscanner_V1beta_ScanConfig.TargetPlatform] = [
    .unspecified,
    .appEngine,
    .compute,
  ]
}

extension Google_Cloud_Websecurityscanner_V1beta_ScanConfig.RiskLevel: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Websecurityscanner_V1beta_ScanConfig.RiskLevel] = [
    .unspecified,
    .normal,
    .low,
  ]
}

extension Google_Cloud_Websecurityscanner_V1beta_ScanConfig.ExportToSecurityCommandCenter: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Websecurityscanner_V1beta_ScanConfig.ExportToSecurityCommandCenter] = [
    .unspecified,
    .enabled,
    .disabled,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.websecurityscanner.v1beta"

extension Google_Cloud_Websecurityscanner_V1beta_ScanConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ScanConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "display_name"),
    3: .standard(proto: "max_qps"),
    4: .standard(proto: "starting_urls"),
    5: .same(proto: "authentication"),
    6: .standard(proto: "user_agent"),
    7: .standard(proto: "blacklist_patterns"),
    8: .same(proto: "schedule"),
    9: .standard(proto: "target_platforms"),
    10: .standard(proto: "export_to_security_command_center"),
    11: .standard(proto: "latest_run"),
    12: .standard(proto: "risk_level"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _displayName: String = String()
    var _maxQps: Int32 = 0
    var _startingUrls: [String] = []
    var _authentication: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication? = nil
    var _userAgent: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.UserAgent = .unspecified
    var _blacklistPatterns: [String] = []
    var _schedule: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Schedule? = nil
    var _targetPlatforms: [Google_Cloud_Websecurityscanner_V1beta_ScanConfig.TargetPlatform] = []
    var _exportToSecurityCommandCenter: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.ExportToSecurityCommandCenter = .unspecified
    var _latestRun: Google_Cloud_Websecurityscanner_V1beta_ScanRun? = nil
    var _riskLevel: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.RiskLevel = .unspecified

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _displayName = source._displayName
      _maxQps = source._maxQps
      _startingUrls = source._startingUrls
      _authentication = source._authentication
      _userAgent = source._userAgent
      _blacklistPatterns = source._blacklistPatterns
      _schedule = source._schedule
      _targetPlatforms = source._targetPlatforms
      _exportToSecurityCommandCenter = source._exportToSecurityCommandCenter
      _latestRun = source._latestRun
      _riskLevel = source._riskLevel
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
        case 3: try { try decoder.decodeSingularInt32Field(value: &_storage._maxQps) }()
        case 4: try { try decoder.decodeRepeatedStringField(value: &_storage._startingUrls) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._authentication) }()
        case 6: try { try decoder.decodeSingularEnumField(value: &_storage._userAgent) }()
        case 7: try { try decoder.decodeRepeatedStringField(value: &_storage._blacklistPatterns) }()
        case 8: try { try decoder.decodeSingularMessageField(value: &_storage._schedule) }()
        case 9: try { try decoder.decodeRepeatedEnumField(value: &_storage._targetPlatforms) }()
        case 10: try { try decoder.decodeSingularEnumField(value: &_storage._exportToSecurityCommandCenter) }()
        case 11: try { try decoder.decodeSingularMessageField(value: &_storage._latestRun) }()
        case 12: try { try decoder.decodeSingularEnumField(value: &_storage._riskLevel) }()
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
      if _storage._maxQps != 0 {
        try visitor.visitSingularInt32Field(value: _storage._maxQps, fieldNumber: 3)
      }
      if !_storage._startingUrls.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._startingUrls, fieldNumber: 4)
      }
      if let v = _storage._authentication {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if _storage._userAgent != .unspecified {
        try visitor.visitSingularEnumField(value: _storage._userAgent, fieldNumber: 6)
      }
      if !_storage._blacklistPatterns.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._blacklistPatterns, fieldNumber: 7)
      }
      if let v = _storage._schedule {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      }
      if !_storage._targetPlatforms.isEmpty {
        try visitor.visitPackedEnumField(value: _storage._targetPlatforms, fieldNumber: 9)
      }
      if _storage._exportToSecurityCommandCenter != .unspecified {
        try visitor.visitSingularEnumField(value: _storage._exportToSecurityCommandCenter, fieldNumber: 10)
      }
      if let v = _storage._latestRun {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      }
      if _storage._riskLevel != .unspecified {
        try visitor.visitSingularEnumField(value: _storage._riskLevel, fieldNumber: 12)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Websecurityscanner_V1beta_ScanConfig, rhs: Google_Cloud_Websecurityscanner_V1beta_ScanConfig) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._name != rhs_storage._name {return false}
        if _storage._displayName != rhs_storage._displayName {return false}
        if _storage._maxQps != rhs_storage._maxQps {return false}
        if _storage._startingUrls != rhs_storage._startingUrls {return false}
        if _storage._authentication != rhs_storage._authentication {return false}
        if _storage._userAgent != rhs_storage._userAgent {return false}
        if _storage._blacklistPatterns != rhs_storage._blacklistPatterns {return false}
        if _storage._schedule != rhs_storage._schedule {return false}
        if _storage._targetPlatforms != rhs_storage._targetPlatforms {return false}
        if _storage._exportToSecurityCommandCenter != rhs_storage._exportToSecurityCommandCenter {return false}
        if _storage._latestRun != rhs_storage._latestRun {return false}
        if _storage._riskLevel != rhs_storage._riskLevel {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Websecurityscanner_V1beta_ScanConfig.UserAgent: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "USER_AGENT_UNSPECIFIED"),
    1: .same(proto: "CHROME_LINUX"),
    2: .same(proto: "CHROME_ANDROID"),
    3: .same(proto: "SAFARI_IPHONE"),
  ]
}

extension Google_Cloud_Websecurityscanner_V1beta_ScanConfig.TargetPlatform: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TARGET_PLATFORM_UNSPECIFIED"),
    1: .same(proto: "APP_ENGINE"),
    2: .same(proto: "COMPUTE"),
  ]
}

extension Google_Cloud_Websecurityscanner_V1beta_ScanConfig.RiskLevel: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "RISK_LEVEL_UNSPECIFIED"),
    1: .same(proto: "NORMAL"),
    2: .same(proto: "LOW"),
  ]
}

extension Google_Cloud_Websecurityscanner_V1beta_ScanConfig.ExportToSecurityCommandCenter: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED"),
    1: .same(proto: "ENABLED"),
    2: .same(proto: "DISABLED"),
  ]
}

extension Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Websecurityscanner_V1beta_ScanConfig.protoMessageName + ".Authentication"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "google_account"),
    2: .standard(proto: "custom_account"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.GoogleAccount?
        if let current = self.authentication {
          try decoder.handleConflictingOneOf()
          if case .googleAccount(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.authentication = .googleAccount(v)}
      }()
      case 2: try {
        var v: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.CustomAccount?
        if let current = self.authentication {
          try decoder.handleConflictingOneOf()
          if case .customAccount(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.authentication = .customAccount(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.authentication {
    case .googleAccount?: try {
      guard case .googleAccount(let v)? = self.authentication else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .customAccount?: try {
      guard case .customAccount(let v)? = self.authentication else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication, rhs: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication) -> Bool {
    if lhs.authentication != rhs.authentication {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.GoogleAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.protoMessageName + ".GoogleAccount"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "username"),
    2: .same(proto: "password"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.username) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.password) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.username.isEmpty {
      try visitor.visitSingularStringField(value: self.username, fieldNumber: 1)
    }
    if !self.password.isEmpty {
      try visitor.visitSingularStringField(value: self.password, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.GoogleAccount, rhs: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.GoogleAccount) -> Bool {
    if lhs.username != rhs.username {return false}
    if lhs.password != rhs.password {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.CustomAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.protoMessageName + ".CustomAccount"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "username"),
    2: .same(proto: "password"),
    3: .standard(proto: "login_url"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.username) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.password) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.loginURL) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.username.isEmpty {
      try visitor.visitSingularStringField(value: self.username, fieldNumber: 1)
    }
    if !self.password.isEmpty {
      try visitor.visitSingularStringField(value: self.password, fieldNumber: 2)
    }
    if !self.loginURL.isEmpty {
      try visitor.visitSingularStringField(value: self.loginURL, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.CustomAccount, rhs: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Authentication.CustomAccount) -> Bool {
    if lhs.username != rhs.username {return false}
    if lhs.password != rhs.password {return false}
    if lhs.loginURL != rhs.loginURL {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Schedule: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Websecurityscanner_V1beta_ScanConfig.protoMessageName + ".Schedule"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "schedule_time"),
    2: .standard(proto: "interval_duration_days"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._scheduleTime) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.intervalDurationDays) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._scheduleTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.intervalDurationDays != 0 {
      try visitor.visitSingularInt32Field(value: self.intervalDurationDays, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Schedule, rhs: Google_Cloud_Websecurityscanner_V1beta_ScanConfig.Schedule) -> Bool {
    if lhs._scheduleTime != rhs._scheduleTime {return false}
    if lhs.intervalDurationDays != rhs.intervalDurationDays {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
