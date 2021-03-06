// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: grafeas/v1/discovery.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2019 The Grafeas Authors. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
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

/// A note that indicates a type of analysis a provider would perform. This note
/// exists in a provider's project. A `Discovery` occurrence is created in a
/// consumer's project at the start of analysis.
public struct Grafeas_V1_DiscoveryNote {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Immutable. The kind of analysis that is handled by this
  /// discovery.
  public var analysisKind: Grafeas_V1_NoteKind = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Provides information about the analysis status of a discovered resource.
public struct Grafeas_V1_DiscoveryOccurrence {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Whether the resource is continuously analyzed.
  public var continuousAnalysis: Grafeas_V1_DiscoveryOccurrence.ContinuousAnalysis = .unspecified

  /// The status of discovery for the resource.
  public var analysisStatus: Grafeas_V1_DiscoveryOccurrence.AnalysisStatus = .unspecified

  /// When an error is encountered this will contain a LocalizedMessage under
  /// details to show to the user. The LocalizedMessage is output only and
  /// populated by the API.
  public var analysisStatusError: Google_Rpc_Status {
    get {return _analysisStatusError ?? Google_Rpc_Status()}
    set {_analysisStatusError = newValue}
  }
  /// Returns true if `analysisStatusError` has been explicitly set.
  public var hasAnalysisStatusError: Bool {return self._analysisStatusError != nil}
  /// Clears the value of `analysisStatusError`. Subsequent reads from it will return its default value.
  public mutating func clearAnalysisStatusError() {self._analysisStatusError = nil}

  /// The CPE of the resource being scanned.
  public var cpe: String = String()

  /// The last time this resource was scanned.
  public var lastScanTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _lastScanTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_lastScanTime = newValue}
  }
  /// Returns true if `lastScanTime` has been explicitly set.
  public var hasLastScanTime: Bool {return self._lastScanTime != nil}
  /// Clears the value of `lastScanTime`. Subsequent reads from it will return its default value.
  public mutating func clearLastScanTime() {self._lastScanTime = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Whether the resource is continuously analyzed.
  public enum ContinuousAnalysis: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unknown.
    case unspecified // = 0

    /// The resource is continuously analyzed.
    case active // = 1

    /// The resource is ignored for continuous analysis.
    case inactive // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .active
      case 2: self = .inactive
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .active: return 1
      case .inactive: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Analysis status for a resource. Currently for initial analysis only (not
  /// updated in continuous analysis).
  public enum AnalysisStatus: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unknown.
    case unspecified // = 0

    /// Resource is known but no action has been taken yet.
    case pending // = 1

    /// Resource is being analyzed.
    case scanning // = 2

    /// Analysis has finished successfully.
    case finishedSuccess // = 3

    /// Analysis has finished unsuccessfully, the analysis itself is in a bad
    /// state.
    case finishedFailed // = 4

    /// The resource is known not to be supported
    case finishedUnsupported // = 5
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .pending
      case 2: self = .scanning
      case 3: self = .finishedSuccess
      case 4: self = .finishedFailed
      case 5: self = .finishedUnsupported
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .pending: return 1
      case .scanning: return 2
      case .finishedSuccess: return 3
      case .finishedFailed: return 4
      case .finishedUnsupported: return 5
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _analysisStatusError: Google_Rpc_Status? = nil
  fileprivate var _lastScanTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

#if swift(>=4.2)

extension Grafeas_V1_DiscoveryOccurrence.ContinuousAnalysis: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1_DiscoveryOccurrence.ContinuousAnalysis] = [
    .unspecified,
    .active,
    .inactive,
  ]
}

extension Grafeas_V1_DiscoveryOccurrence.AnalysisStatus: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1_DiscoveryOccurrence.AnalysisStatus] = [
    .unspecified,
    .pending,
    .scanning,
    .finishedSuccess,
    .finishedFailed,
    .finishedUnsupported,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "grafeas.v1"

extension Grafeas_V1_DiscoveryNote: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DiscoveryNote"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "analysis_kind"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.analysisKind) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.analysisKind != .unspecified {
      try visitor.visitSingularEnumField(value: self.analysisKind, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1_DiscoveryNote, rhs: Grafeas_V1_DiscoveryNote) -> Bool {
    if lhs.analysisKind != rhs.analysisKind {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1_DiscoveryOccurrence: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DiscoveryOccurrence"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "continuous_analysis"),
    2: .standard(proto: "analysis_status"),
    3: .standard(proto: "analysis_status_error"),
    4: .same(proto: "cpe"),
    5: .standard(proto: "last_scan_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.continuousAnalysis) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.analysisStatus) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._analysisStatusError) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.cpe) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._lastScanTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.continuousAnalysis != .unspecified {
      try visitor.visitSingularEnumField(value: self.continuousAnalysis, fieldNumber: 1)
    }
    if self.analysisStatus != .unspecified {
      try visitor.visitSingularEnumField(value: self.analysisStatus, fieldNumber: 2)
    }
    if let v = self._analysisStatusError {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.cpe.isEmpty {
      try visitor.visitSingularStringField(value: self.cpe, fieldNumber: 4)
    }
    if let v = self._lastScanTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1_DiscoveryOccurrence, rhs: Grafeas_V1_DiscoveryOccurrence) -> Bool {
    if lhs.continuousAnalysis != rhs.continuousAnalysis {return false}
    if lhs.analysisStatus != rhs.analysisStatus {return false}
    if lhs._analysisStatusError != rhs._analysisStatusError {return false}
    if lhs.cpe != rhs.cpe {return false}
    if lhs._lastScanTime != rhs._lastScanTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1_DiscoveryOccurrence.ContinuousAnalysis: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CONTINUOUS_ANALYSIS_UNSPECIFIED"),
    1: .same(proto: "ACTIVE"),
    2: .same(proto: "INACTIVE"),
  ]
}

extension Grafeas_V1_DiscoveryOccurrence.AnalysisStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ANALYSIS_STATUS_UNSPECIFIED"),
    1: .same(proto: "PENDING"),
    2: .same(proto: "SCANNING"),
    3: .same(proto: "FINISHED_SUCCESS"),
    4: .same(proto: "FINISHED_FAILED"),
    5: .same(proto: "FINISHED_UNSUPPORTED"),
  ]
}
