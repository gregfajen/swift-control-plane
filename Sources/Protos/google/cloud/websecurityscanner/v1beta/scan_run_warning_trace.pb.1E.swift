// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/websecurityscanner/v1beta/scan_run_warning_trace.proto
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
/// Defines a warning trace message for ScanRun. Warning traces provide customers
/// with useful information that helps make the scanning process more effective.
public struct Google_Cloud_Websecurityscanner_V1beta_ScanRunWarningTrace {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Indicates the warning code.
  public var code: Google_Cloud_Websecurityscanner_V1beta_ScanRunWarningTrace.Code = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Output only.
  /// Defines a warning message code.
  /// Next id: 6
  public enum Code: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Default value is never used.
    case unspecified // = 0

    /// Indicates that a scan discovered an unexpectedly low number of URLs. This
    /// is sometimes caused by complex navigation features or by using a single
    /// URL for numerous pages.
    case insufficientCrawlResults // = 1

    /// Indicates that a scan discovered too many URLs to test, or excessive
    /// redundant URLs.
    case tooManyCrawlResults // = 2

    /// Indicates that too many tests have been generated for the scan. Customer
    /// should try reducing the number of starting URLs, increasing the QPS rate,
    /// or narrowing down the scope of the scan using the excluded patterns.
    case tooManyFuzzTasks // = 3

    /// Indicates that a scan is blocked by IAP.
    case blockedByIap // = 4
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .insufficientCrawlResults
      case 2: self = .tooManyCrawlResults
      case 3: self = .tooManyFuzzTasks
      case 4: self = .blockedByIap
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .insufficientCrawlResults: return 1
      case .tooManyCrawlResults: return 2
      case .tooManyFuzzTasks: return 3
      case .blockedByIap: return 4
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Cloud_Websecurityscanner_V1beta_ScanRunWarningTrace.Code: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Websecurityscanner_V1beta_ScanRunWarningTrace.Code] = [
    .unspecified,
    .insufficientCrawlResults,
    .tooManyCrawlResults,
    .tooManyFuzzTasks,
    .blockedByIap,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.websecurityscanner.v1beta"

extension Google_Cloud_Websecurityscanner_V1beta_ScanRunWarningTrace: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ScanRunWarningTrace"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "code"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.code) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.code != .unspecified {
      try visitor.visitSingularEnumField(value: self.code, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Websecurityscanner_V1beta_ScanRunWarningTrace, rhs: Google_Cloud_Websecurityscanner_V1beta_ScanRunWarningTrace) -> Bool {
    if lhs.code != rhs.code {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Websecurityscanner_V1beta_ScanRunWarningTrace.Code: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CODE_UNSPECIFIED"),
    1: .same(proto: "INSUFFICIENT_CRAWL_RESULTS"),
    2: .same(proto: "TOO_MANY_CRAWL_RESULTS"),
    3: .same(proto: "TOO_MANY_FUZZ_TASKS"),
    4: .same(proto: "BLOCKED_BY_IAP"),
  ]
}
