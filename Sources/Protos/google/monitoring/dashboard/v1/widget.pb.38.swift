// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/monitoring/dashboard/v1/widget.proto
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

/// Widget contains a single dashboard component and configuration of how to
/// present the component in the dashboard.
public struct Google_Monitoring_Dashboard_V1_Widget {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional. The title of the widget.
  public var title: String = String()

  /// Content defines the component used to populate the widget.
  public var content: Google_Monitoring_Dashboard_V1_Widget.OneOf_Content? = nil

  /// A chart of time series data.
  public var xyChart: Google_Monitoring_Dashboard_V1_XyChart {
    get {
      if case .xyChart(let v)? = content {return v}
      return Google_Monitoring_Dashboard_V1_XyChart()
    }
    set {content = .xyChart(newValue)}
  }

  /// A scorecard summarizing time series data.
  public var scorecard: Google_Monitoring_Dashboard_V1_Scorecard {
    get {
      if case .scorecard(let v)? = content {return v}
      return Google_Monitoring_Dashboard_V1_Scorecard()
    }
    set {content = .scorecard(newValue)}
  }

  /// A raw string or markdown displaying textual content.
  public var text: Google_Monitoring_Dashboard_V1_Text {
    get {
      if case .text(let v)? = content {return v}
      return Google_Monitoring_Dashboard_V1_Text()
    }
    set {content = .text(newValue)}
  }

  /// A blank space.
  public var blank: SwiftProtobuf.Google_Protobuf_Empty {
    get {
      if case .blank(let v)? = content {return v}
      return SwiftProtobuf.Google_Protobuf_Empty()
    }
    set {content = .blank(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Content defines the component used to populate the widget.
  public enum OneOf_Content: Equatable {
    /// A chart of time series data.
    case xyChart(Google_Monitoring_Dashboard_V1_XyChart)
    /// A scorecard summarizing time series data.
    case scorecard(Google_Monitoring_Dashboard_V1_Scorecard)
    /// A raw string or markdown displaying textual content.
    case text(Google_Monitoring_Dashboard_V1_Text)
    /// A blank space.
    case blank(SwiftProtobuf.Google_Protobuf_Empty)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Monitoring_Dashboard_V1_Widget.OneOf_Content, rhs: Google_Monitoring_Dashboard_V1_Widget.OneOf_Content) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.xyChart, .xyChart): return {
        guard case .xyChart(let l) = lhs, case .xyChart(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.scorecard, .scorecard): return {
        guard case .scorecard(let l) = lhs, case .scorecard(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.text, .text): return {
        guard case .text(let l) = lhs, case .text(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.blank, .blank): return {
        guard case .blank(let l) = lhs, case .blank(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.monitoring.dashboard.v1"

extension Google_Monitoring_Dashboard_V1_Widget: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Widget"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "title"),
    2: .standard(proto: "xy_chart"),
    3: .same(proto: "scorecard"),
    4: .same(proto: "text"),
    5: .same(proto: "blank"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.title) }()
      case 2: try {
        var v: Google_Monitoring_Dashboard_V1_XyChart?
        if let current = self.content {
          try decoder.handleConflictingOneOf()
          if case .xyChart(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.content = .xyChart(v)}
      }()
      case 3: try {
        var v: Google_Monitoring_Dashboard_V1_Scorecard?
        if let current = self.content {
          try decoder.handleConflictingOneOf()
          if case .scorecard(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.content = .scorecard(v)}
      }()
      case 4: try {
        var v: Google_Monitoring_Dashboard_V1_Text?
        if let current = self.content {
          try decoder.handleConflictingOneOf()
          if case .text(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.content = .text(v)}
      }()
      case 5: try {
        var v: SwiftProtobuf.Google_Protobuf_Empty?
        if let current = self.content {
          try decoder.handleConflictingOneOf()
          if case .blank(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.content = .blank(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 1)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.content {
    case .xyChart?: try {
      guard case .xyChart(let v)? = self.content else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .scorecard?: try {
      guard case .scorecard(let v)? = self.content else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case .text?: try {
      guard case .text(let v)? = self.content else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case .blank?: try {
      guard case .blank(let v)? = self.content else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Monitoring_Dashboard_V1_Widget, rhs: Google_Monitoring_Dashboard_V1_Widget) -> Bool {
    if lhs.title != rhs.title {return false}
    if lhs.content != rhs.content {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
