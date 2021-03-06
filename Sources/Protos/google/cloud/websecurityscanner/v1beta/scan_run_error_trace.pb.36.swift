// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/websecurityscanner/v1beta/scan_run_error_trace.proto
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

/// Output only.
/// Defines an error trace message for a ScanRun.
public struct Google_Cloud_Websecurityscanner_V1beta_ScanRunErrorTrace {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Indicates the error reason code.
  public var code: Google_Cloud_Websecurityscanner_V1beta_ScanRunErrorTrace.Code = .unspecified

  /// If the scan encounters SCAN_CONFIG_ISSUE error, this field has the error
  /// message encountered during scan configuration validation that is performed
  /// before each scan run.
  public var scanConfigError: Google_Cloud_Websecurityscanner_V1beta_ScanConfigError {
    get {return _scanConfigError ?? Google_Cloud_Websecurityscanner_V1beta_ScanConfigError()}
    set {_scanConfigError = newValue}
  }
  /// Returns true if `scanConfigError` has been explicitly set.
  public var hasScanConfigError: Bool {return self._scanConfigError != nil}
  /// Clears the value of `scanConfigError`. Subsequent reads from it will return its default value.
  public mutating func clearScanConfigError() {self._scanConfigError = nil}

  /// If the scan encounters TOO_MANY_HTTP_ERRORS, this field indicates the most
  /// common HTTP error code, if such is available. For example, if this code is
  /// 404, the scan has encountered too many NOT_FOUND responses.
  public var mostCommonHTTPErrorCode: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Output only.
  /// Defines an error reason code.
  /// Next id: 7
  public enum Code: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Default value is never used.
    case unspecified // = 0

    /// Indicates that the scan run failed due to an internal server error.
    case internalError // = 1

    /// Indicates a scan configuration error, usually due to outdated ScanConfig
    /// settings, such as starting_urls or the DNS configuration.
    case scanConfigIssue // = 2

    /// Indicates an authentication error, usually due to outdated ScanConfig
    /// authentication settings.
    case authenticationConfigIssue // = 3

    /// Indicates a scan operation timeout, usually caused by a very large site.
    case timedOutWhileScanning // = 4

    /// Indicates that a scan encountered excessive redirects, either to
    /// authentication or some other page outside of the scan scope.
    case tooManyRedirects // = 5

    /// Indicates that a scan encountered numerous errors from the web site
    /// pages. When available, most_common_http_error_code field indicates the
    /// most common HTTP error code encountered during the scan.
    case tooManyHTTPErrors // = 6
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .internalError
      case 2: self = .scanConfigIssue
      case 3: self = .authenticationConfigIssue
      case 4: self = .timedOutWhileScanning
      case 5: self = .tooManyRedirects
      case 6: self = .tooManyHTTPErrors
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .internalError: return 1
      case .scanConfigIssue: return 2
      case .authenticationConfigIssue: return 3
      case .timedOutWhileScanning: return 4
      case .tooManyRedirects: return 5
      case .tooManyHTTPErrors: return 6
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _scanConfigError: Google_Cloud_Websecurityscanner_V1beta_ScanConfigError? = nil
}

#if swift(>=4.2)

extension Google_Cloud_Websecurityscanner_V1beta_ScanRunErrorTrace.Code: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Websecurityscanner_V1beta_ScanRunErrorTrace.Code] = [
    .unspecified,
    .internalError,
    .scanConfigIssue,
    .authenticationConfigIssue,
    .timedOutWhileScanning,
    .tooManyRedirects,
    .tooManyHTTPErrors,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.websecurityscanner.v1beta"

extension Google_Cloud_Websecurityscanner_V1beta_ScanRunErrorTrace: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ScanRunErrorTrace"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "code"),
    2: .standard(proto: "scan_config_error"),
    3: .standard(proto: "most_common_http_error_code"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.code) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._scanConfigError) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.mostCommonHTTPErrorCode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.code != .unspecified {
      try visitor.visitSingularEnumField(value: self.code, fieldNumber: 1)
    }
    if let v = self._scanConfigError {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.mostCommonHTTPErrorCode != 0 {
      try visitor.visitSingularInt32Field(value: self.mostCommonHTTPErrorCode, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Websecurityscanner_V1beta_ScanRunErrorTrace, rhs: Google_Cloud_Websecurityscanner_V1beta_ScanRunErrorTrace) -> Bool {
    if lhs.code != rhs.code {return false}
    if lhs._scanConfigError != rhs._scanConfigError {return false}
    if lhs.mostCommonHTTPErrorCode != rhs.mostCommonHTTPErrorCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Websecurityscanner_V1beta_ScanRunErrorTrace.Code: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CODE_UNSPECIFIED"),
    1: .same(proto: "INTERNAL_ERROR"),
    2: .same(proto: "SCAN_CONFIG_ISSUE"),
    3: .same(proto: "AUTHENTICATION_CONFIG_ISSUE"),
    4: .same(proto: "TIMED_OUT_WHILE_SCANNING"),
    5: .same(proto: "TOO_MANY_REDIRECTS"),
    6: .same(proto: "TOO_MANY_HTTP_ERRORS"),
  ]
}
