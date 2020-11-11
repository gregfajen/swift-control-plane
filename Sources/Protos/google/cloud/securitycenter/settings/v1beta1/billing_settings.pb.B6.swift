// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/securitycenter/settings/v1beta1/billing_settings.proto
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

/// Billing tier options
public enum Google_Cloud_Securitycenter_Settings_V1beta1_BillingTier: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Default value. This value is unused.
  case unspecified // = 0

  /// The standard billing tier.
  case standard // = 1

  /// The premium billing tier.
  case premium // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .standard
    case 2: self = .premium
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .standard: return 1
    case .premium: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Cloud_Securitycenter_Settings_V1beta1_BillingTier: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Securitycenter_Settings_V1beta1_BillingTier] = [
    .unspecified,
    .standard,
    .premium,
  ]
}

#endif  // swift(>=4.2)

/// Billing type
public enum Google_Cloud_Securitycenter_Settings_V1beta1_BillingType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Default billing type
  case unspecified // = 0

  /// Subscription for Premium billing tier
  case subscription // = 1

  /// Trial subscription for Premium billing tier
  case trialSubscription // = 2

  /// Alpha customer for Premium billing tier
  case alpha // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .subscription
    case 2: self = .trialSubscription
    case 3: self = .alpha
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .subscription: return 1
    case .trialSubscription: return 2
    case .alpha: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Cloud_Securitycenter_Settings_V1beta1_BillingType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Securitycenter_Settings_V1beta1_BillingType] = [
    .unspecified,
    .subscription,
    .trialSubscription,
    .alpha,
  ]
}

#endif  // swift(>=4.2)

/// Billing settings
public struct Google_Cloud_Securitycenter_Settings_V1beta1_BillingSettings {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. Billing tier selected by customer
  public var billingTier: Google_Cloud_Securitycenter_Settings_V1beta1_BillingTier = .unspecified

  /// Output only. Type of billing method
  public var billingType: Google_Cloud_Securitycenter_Settings_V1beta1_BillingType = .unspecified

  /// Output only. The absolute point in time when the subscription became effective.
  /// Can be compared to expire_time value to determine full contract duration
  public var startTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _startTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_startTime = newValue}
  }
  /// Returns true if `startTime` has been explicitly set.
  public var hasStartTime: Bool {return self._startTime != nil}
  /// Clears the value of `startTime`. Subsequent reads from it will return its default value.
  public mutating func clearStartTime() {self._startTime = nil}

  /// Output only. The absolute point in time when the subscription expires.
  ///
  /// If this field is populated and billing_tier is STANDARD, this is
  /// indication of a point in the _past_ when a PREMIUM access ended.
  public var expireTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _expireTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_expireTime = newValue}
  }
  /// Returns true if `expireTime` has been explicitly set.
  public var hasExpireTime: Bool {return self._expireTime != nil}
  /// Clears the value of `expireTime`. Subsequent reads from it will return its default value.
  public mutating func clearExpireTime() {self._expireTime = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _startTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _expireTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.securitycenter.settings.v1beta1"

extension Google_Cloud_Securitycenter_Settings_V1beta1_BillingTier: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "BILLING_TIER_UNSPECIFIED"),
    1: .same(proto: "STANDARD"),
    2: .same(proto: "PREMIUM"),
  ]
}

extension Google_Cloud_Securitycenter_Settings_V1beta1_BillingType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "BILLING_TYPE_UNSPECIFIED"),
    1: .same(proto: "SUBSCRIPTION"),
    2: .same(proto: "TRIAL_SUBSCRIPTION"),
    3: .same(proto: "ALPHA"),
  ]
}

extension Google_Cloud_Securitycenter_Settings_V1beta1_BillingSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BillingSettings"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "billing_tier"),
    2: .standard(proto: "billing_type"),
    3: .standard(proto: "start_time"),
    4: .standard(proto: "expire_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.billingTier) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.billingType) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._startTime) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._expireTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.billingTier != .unspecified {
      try visitor.visitSingularEnumField(value: self.billingTier, fieldNumber: 1)
    }
    if self.billingType != .unspecified {
      try visitor.visitSingularEnumField(value: self.billingType, fieldNumber: 2)
    }
    if let v = self._startTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._expireTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Securitycenter_Settings_V1beta1_BillingSettings, rhs: Google_Cloud_Securitycenter_Settings_V1beta1_BillingSettings) -> Bool {
    if lhs.billingTier != rhs.billingTier {return false}
    if lhs.billingType != rhs.billingType {return false}
    if lhs._startTime != rhs._startTime {return false}
    if lhs._expireTime != rhs._expireTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
