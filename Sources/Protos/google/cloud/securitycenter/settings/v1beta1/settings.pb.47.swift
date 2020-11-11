// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/securitycenter/settings/v1beta1/settings.proto
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

/// Common configuration settings for all of Security Center.
public struct Google_Cloud_Securitycenter_Settings_V1beta1_Settings {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The relative resource name of the settings resource.
  /// Formats:
  ///  * `organizations/{organization}/settings`
  ///  * `folders/{folder}/settings`
  ///  * `projects/{project}/settings`
  ///  * `projects/{project}/locations/{location}/clusters/{cluster}/settings`
  ///  * `projects/{project}/regions/{region}/clusters/{cluster}/settings`
  ///  * `projects/{project}/zones/{zone}/clusters/{cluster}/settings`
  public var name: String = String()

  /// Billing settings
  public var billingSettings: Google_Cloud_Securitycenter_Settings_V1beta1_BillingSettings {
    get {return _billingSettings ?? Google_Cloud_Securitycenter_Settings_V1beta1_BillingSettings()}
    set {_billingSettings = newValue}
  }
  /// Returns true if `billingSettings` has been explicitly set.
  public var hasBillingSettings: Bool {return self._billingSettings != nil}
  /// Clears the value of `billingSettings`. Subsequent reads from it will return its default value.
  public mutating func clearBillingSettings() {self._billingSettings = nil}

  /// An enum representing the current on boarding state of SCC.
  public var state: Google_Cloud_Securitycenter_Settings_V1beta1_Settings.OnboardingState = .unspecified

  /// Output only. The organization-level service account to be used for security center
  /// components. The component must have permission to "act as" the service
  /// account.
  public var orgServiceAccount: String = String()

  /// Sink settings.
  public var sinkSettings: Google_Cloud_Securitycenter_Settings_V1beta1_SinkSettings {
    get {return _sinkSettings ?? Google_Cloud_Securitycenter_Settings_V1beta1_SinkSettings()}
    set {_sinkSettings = newValue}
  }
  /// Returns true if `sinkSettings` has been explicitly set.
  public var hasSinkSettings: Bool {return self._sinkSettings != nil}
  /// Clears the value of `sinkSettings`. Subsequent reads from it will return its default value.
  public mutating func clearSinkSettings() {self._sinkSettings = nil}

  /// The settings for detectors and/or scanners.
  public var componentSettings: Dictionary<String,Google_Cloud_Securitycenter_Settings_V1beta1_ComponentSettings> = [:]

  /// Detector group settings for all Security Center components.
  /// The key is the name of the detector group and the value is the settings for
  /// that group.
  public var detectorGroupSettings: Dictionary<String,Google_Cloud_Securitycenter_Settings_V1beta1_Settings.DetectorGroupSettings> = [:]

  /// A fingerprint used for optimistic concurrency. If none is provided
  /// on updates then the existing metadata will be blindly overwritten.
  public var etag: String = String()

  /// Output only. The time these settings were last updated.
  public var updateTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updateTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updateTime = newValue}
  }
  /// Returns true if `updateTime` has been explicitly set.
  public var hasUpdateTime: Bool {return self._updateTime != nil}
  /// Clears the value of `updateTime`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateTime() {self._updateTime = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Defines the onboarding states for SCC
  ///
  /// Potentially is just an indicator that a user has reviewed some subset of
  /// our configuration surface, even if it's still currently set to its
  /// API-default state.
  public enum OnboardingState: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// No onboarding state has been set. Should not be seen in practice, but
    /// should be functionally equivalent to DISABLED.
    case unspecified // = 0

    /// SCC is fully on boarded
    case enabled // = 1

    /// SCC has been disabled after being on boarded
    case disabled // = 2

    /// SCC's onboarding tier has been explicitly set
    case billingSelected // = 3

    /// SCC's CTD FindingsProviders have been chosen
    case providersSelected // = 4

    /// SCC's Service-Resource mappings have been set
    case resourcesSelected // = 5

    /// SCC's core Service Account was created
    case orgServiceAccountCreated // = 6
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .enabled
      case 2: self = .disabled
      case 3: self = .billingSelected
      case 4: self = .providersSelected
      case 5: self = .resourcesSelected
      case 6: self = .orgServiceAccountCreated
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .enabled: return 1
      case .disabled: return 2
      case .billingSelected: return 3
      case .providersSelected: return 4
      case .resourcesSelected: return 5
      case .orgServiceAccountCreated: return 6
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// The DetectorGroupSettings define the configuration for a detector group.
  public struct DetectorGroupSettings {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The state determines if the group is enabled or not.
    public var state: Google_Cloud_Securitycenter_Settings_V1beta1_ComponentEnablementState = .unspecified

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _billingSettings: Google_Cloud_Securitycenter_Settings_V1beta1_BillingSettings? = nil
  fileprivate var _sinkSettings: Google_Cloud_Securitycenter_Settings_V1beta1_SinkSettings? = nil
  fileprivate var _updateTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

#if swift(>=4.2)

extension Google_Cloud_Securitycenter_Settings_V1beta1_Settings.OnboardingState: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Securitycenter_Settings_V1beta1_Settings.OnboardingState] = [
    .unspecified,
    .enabled,
    .disabled,
    .billingSelected,
    .providersSelected,
    .resourcesSelected,
    .orgServiceAccountCreated,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.securitycenter.settings.v1beta1"

extension Google_Cloud_Securitycenter_Settings_V1beta1_Settings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Settings"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "billing_settings"),
    3: .same(proto: "state"),
    5: .standard(proto: "org_service_account"),
    6: .standard(proto: "sink_settings"),
    7: .standard(proto: "component_settings"),
    8: .standard(proto: "detector_group_settings"),
    9: .same(proto: "etag"),
    10: .standard(proto: "update_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._billingSettings) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.orgServiceAccount) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._sinkSettings) }()
      case 7: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Cloud_Securitycenter_Settings_V1beta1_ComponentSettings>.self, value: &self.componentSettings) }()
      case 8: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Cloud_Securitycenter_Settings_V1beta1_Settings.DetectorGroupSettings>.self, value: &self.detectorGroupSettings) }()
      case 9: try { try decoder.decodeSingularStringField(value: &self.etag) }()
      case 10: try { try decoder.decodeSingularMessageField(value: &self._updateTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._billingSettings {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 3)
    }
    if !self.orgServiceAccount.isEmpty {
      try visitor.visitSingularStringField(value: self.orgServiceAccount, fieldNumber: 5)
    }
    if let v = self._sinkSettings {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if !self.componentSettings.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Cloud_Securitycenter_Settings_V1beta1_ComponentSettings>.self, value: self.componentSettings, fieldNumber: 7)
    }
    if !self.detectorGroupSettings.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Google_Cloud_Securitycenter_Settings_V1beta1_Settings.DetectorGroupSettings>.self, value: self.detectorGroupSettings, fieldNumber: 8)
    }
    if !self.etag.isEmpty {
      try visitor.visitSingularStringField(value: self.etag, fieldNumber: 9)
    }
    if let v = self._updateTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Securitycenter_Settings_V1beta1_Settings, rhs: Google_Cloud_Securitycenter_Settings_V1beta1_Settings) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._billingSettings != rhs._billingSettings {return false}
    if lhs.state != rhs.state {return false}
    if lhs.orgServiceAccount != rhs.orgServiceAccount {return false}
    if lhs._sinkSettings != rhs._sinkSettings {return false}
    if lhs.componentSettings != rhs.componentSettings {return false}
    if lhs.detectorGroupSettings != rhs.detectorGroupSettings {return false}
    if lhs.etag != rhs.etag {return false}
    if lhs._updateTime != rhs._updateTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Securitycenter_Settings_V1beta1_Settings.OnboardingState: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ONBOARDING_STATE_UNSPECIFIED"),
    1: .same(proto: "ENABLED"),
    2: .same(proto: "DISABLED"),
    3: .same(proto: "BILLING_SELECTED"),
    4: .same(proto: "PROVIDERS_SELECTED"),
    5: .same(proto: "RESOURCES_SELECTED"),
    6: .same(proto: "ORG_SERVICE_ACCOUNT_CREATED"),
  ]
}

extension Google_Cloud_Securitycenter_Settings_V1beta1_Settings.DetectorGroupSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Securitycenter_Settings_V1beta1_Settings.protoMessageName + ".DetectorGroupSettings"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "state"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Securitycenter_Settings_V1beta1_Settings.DetectorGroupSettings, rhs: Google_Cloud_Securitycenter_Settings_V1beta1_Settings.DetectorGroupSettings) -> Bool {
    if lhs.state != rhs.state {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}