// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/api/servicecontrol/v1/check_error.proto
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

/// Defines the errors to be returned in
/// [google.api.servicecontrol.v1.CheckResponse.check_errors][google.api.servicecontrol.v1.CheckResponse.check_errors].
public struct Google_Api_Servicecontrol_V1_CheckError {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The error code.
  public var code: Google_Api_Servicecontrol_V1_CheckError.Code = .errorCodeUnspecified

  /// Subject to whom this error applies. See the specific code enum for more
  /// details on this field. For example:
  ///
  /// - "project:<project-id or project-number>"
  /// - "folder:<folder-id>"
  /// - "organization:<organization-id>"
  public var subject: String = String()

  /// Free-form text providing details on the error cause of the error.
  public var detail: String = String()

  /// Contains public information about the check error. If available,
  /// `status.code` will be non zero and client can propagate it out as public
  /// error.
  public var status: Google_Rpc_Status {
    get {return _status ?? Google_Rpc_Status()}
    set {_status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  public var hasStatus: Bool {return self._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  public mutating func clearStatus() {self._status = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Error codes for Check responses.
  public enum Code: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// This is never used in `CheckResponse`.
    case errorCodeUnspecified // = 0

    /// The consumer's project id, network container, or resource container was
    /// not found. Same as [google.rpc.Code.NOT_FOUND][google.rpc.Code.NOT_FOUND].
    case notFound // = 5

    /// The consumer doesn't have access to the specified resource.
    /// Same as [google.rpc.Code.PERMISSION_DENIED][google.rpc.Code.PERMISSION_DENIED].
    case permissionDenied // = 7

    /// Quota check failed. Same as [google.rpc.Code.RESOURCE_EXHAUSTED][google.rpc.Code.RESOURCE_EXHAUSTED].
    case resourceExhausted // = 8

    /// The consumer hasn't activated the service.
    case serviceNotActivated // = 104

    /// The consumer cannot access the service because billing is disabled.
    case billingDisabled // = 107

    /// The consumer's project has been marked as deleted (soft deletion).
    case projectDeleted // = 108

    /// The consumer's project number or id does not represent a valid project.
    case projectInvalid // = 114

    /// The input consumer info does not represent a valid consumer folder or
    /// organization.
    case consumerInvalid // = 125

    /// The IP address of the consumer is invalid for the specific consumer
    /// project.
    case ipAddressBlocked // = 109

    /// The referer address of the consumer request is invalid for the specific
    /// consumer project.
    case refererBlocked // = 110

    /// The client application of the consumer request is invalid for the
    /// specific consumer project.
    case clientAppBlocked // = 111

    /// The API targeted by this request is invalid for the specified consumer
    /// project.
    case apiTargetBlocked // = 122

    /// The consumer's API key is invalid.
    case apiKeyInvalid // = 105

    /// The consumer's API Key has expired.
    case apiKeyExpired // = 112

    /// The consumer's API Key was not found in config record.
    case apiKeyNotFound // = 113

    /// The credential in the request can not be verified.
    case invalidCredential // = 123

    /// The backend server for looking up project id/number is unavailable.
    case namespaceLookupUnavailable // = 300

    /// The backend server for checking service status is unavailable.
    case serviceStatusUnavailable // = 301

    /// The backend server for checking billing status is unavailable.
    case billingStatusUnavailable // = 302

    /// Cloud Resource Manager backend server is unavailable.
    case cloudResourceManagerBackendUnavailable // = 305
    case UNRECOGNIZED(Int)

    public init() {
      self = .errorCodeUnspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .errorCodeUnspecified
      case 5: self = .notFound
      case 7: self = .permissionDenied
      case 8: self = .resourceExhausted
      case 104: self = .serviceNotActivated
      case 105: self = .apiKeyInvalid
      case 107: self = .billingDisabled
      case 108: self = .projectDeleted
      case 109: self = .ipAddressBlocked
      case 110: self = .refererBlocked
      case 111: self = .clientAppBlocked
      case 112: self = .apiKeyExpired
      case 113: self = .apiKeyNotFound
      case 114: self = .projectInvalid
      case 122: self = .apiTargetBlocked
      case 123: self = .invalidCredential
      case 125: self = .consumerInvalid
      case 300: self = .namespaceLookupUnavailable
      case 301: self = .serviceStatusUnavailable
      case 302: self = .billingStatusUnavailable
      case 305: self = .cloudResourceManagerBackendUnavailable
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .errorCodeUnspecified: return 0
      case .notFound: return 5
      case .permissionDenied: return 7
      case .resourceExhausted: return 8
      case .serviceNotActivated: return 104
      case .apiKeyInvalid: return 105
      case .billingDisabled: return 107
      case .projectDeleted: return 108
      case .ipAddressBlocked: return 109
      case .refererBlocked: return 110
      case .clientAppBlocked: return 111
      case .apiKeyExpired: return 112
      case .apiKeyNotFound: return 113
      case .projectInvalid: return 114
      case .apiTargetBlocked: return 122
      case .invalidCredential: return 123
      case .consumerInvalid: return 125
      case .namespaceLookupUnavailable: return 300
      case .serviceStatusUnavailable: return 301
      case .billingStatusUnavailable: return 302
      case .cloudResourceManagerBackendUnavailable: return 305
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _status: Google_Rpc_Status? = nil
}

#if swift(>=4.2)

extension Google_Api_Servicecontrol_V1_CheckError.Code: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Api_Servicecontrol_V1_CheckError.Code] = [
    .errorCodeUnspecified,
    .notFound,
    .permissionDenied,
    .resourceExhausted,
    .serviceNotActivated,
    .billingDisabled,
    .projectDeleted,
    .projectInvalid,
    .consumerInvalid,
    .ipAddressBlocked,
    .refererBlocked,
    .clientAppBlocked,
    .apiTargetBlocked,
    .apiKeyInvalid,
    .apiKeyExpired,
    .apiKeyNotFound,
    .invalidCredential,
    .namespaceLookupUnavailable,
    .serviceStatusUnavailable,
    .billingStatusUnavailable,
    .cloudResourceManagerBackendUnavailable,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.api.servicecontrol.v1"

extension Google_Api_Servicecontrol_V1_CheckError: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CheckError"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "code"),
    4: .same(proto: "subject"),
    2: .same(proto: "detail"),
    3: .same(proto: "status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.code) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.detail) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._status) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.subject) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.code != .errorCodeUnspecified {
      try visitor.visitSingularEnumField(value: self.code, fieldNumber: 1)
    }
    if !self.detail.isEmpty {
      try visitor.visitSingularStringField(value: self.detail, fieldNumber: 2)
    }
    if let v = self._status {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.subject.isEmpty {
      try visitor.visitSingularStringField(value: self.subject, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Api_Servicecontrol_V1_CheckError, rhs: Google_Api_Servicecontrol_V1_CheckError) -> Bool {
    if lhs.code != rhs.code {return false}
    if lhs.subject != rhs.subject {return false}
    if lhs.detail != rhs.detail {return false}
    if lhs._status != rhs._status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Api_Servicecontrol_V1_CheckError.Code: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ERROR_CODE_UNSPECIFIED"),
    5: .same(proto: "NOT_FOUND"),
    7: .same(proto: "PERMISSION_DENIED"),
    8: .same(proto: "RESOURCE_EXHAUSTED"),
    104: .same(proto: "SERVICE_NOT_ACTIVATED"),
    105: .same(proto: "API_KEY_INVALID"),
    107: .same(proto: "BILLING_DISABLED"),
    108: .same(proto: "PROJECT_DELETED"),
    109: .same(proto: "IP_ADDRESS_BLOCKED"),
    110: .same(proto: "REFERER_BLOCKED"),
    111: .same(proto: "CLIENT_APP_BLOCKED"),
    112: .same(proto: "API_KEY_EXPIRED"),
    113: .same(proto: "API_KEY_NOT_FOUND"),
    114: .same(proto: "PROJECT_INVALID"),
    122: .same(proto: "API_TARGET_BLOCKED"),
    123: .same(proto: "INVALID_CREDENTIAL"),
    125: .same(proto: "CONSUMER_INVALID"),
    300: .same(proto: "NAMESPACE_LOOKUP_UNAVAILABLE"),
    301: .same(proto: "SERVICE_STATUS_UNAVAILABLE"),
    302: .same(proto: "BILLING_STATUS_UNAVAILABLE"),
    305: .same(proto: "CLOUD_RESOURCE_MANAGER_BACKEND_UNAVAILABLE"),
  ]
}