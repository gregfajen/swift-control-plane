// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/monitoring/dashboard/v1/dashboard.proto
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

/// A Google Stackdriver dashboard. Dashboards define the content and layout
/// of pages in the Stackdriver web application.
public struct Google_Monitoring_Dashboard_V1_Dashboard {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Immutable. The resource name of the dashboard.
  public var name: String = String()

  /// Required. The mutable, human-readable name.
  public var displayName: String = String()

  /// `etag` is used for optimistic concurrency control as a way to help
  /// prevent simultaneous updates of a policy from overwriting each other.
  /// An `etag` is returned in the response to `GetDashboard`, and
  /// users are expected to put that etag in the request to `UpdateDashboard` to
  /// ensure that their change will be applied to the same version of the
  /// Dashboard configuration. The field should not be passed during
  /// dashboard creation.
  public var etag: String = String()

  /// A dashboard's root container element that defines the layout style.
  public var layout: Google_Monitoring_Dashboard_V1_Dashboard.OneOf_Layout? = nil

  /// Content is arranged with a basic layout that re-flows a simple list of
  /// informational elements like widgets or tiles.
  public var gridLayout: Google_Monitoring_Dashboard_V1_GridLayout {
    get {
      if case .gridLayout(let v)? = layout {return v}
      return Google_Monitoring_Dashboard_V1_GridLayout()
    }
    set {layout = .gridLayout(newValue)}
  }

  /// The content is divided into equally spaced rows and the widgets are
  /// arranged horizontally.
  public var rowLayout: Google_Monitoring_Dashboard_V1_RowLayout {
    get {
      if case .rowLayout(let v)? = layout {return v}
      return Google_Monitoring_Dashboard_V1_RowLayout()
    }
    set {layout = .rowLayout(newValue)}
  }

  /// The content is divided into equally spaced columns and the widgets are
  /// arranged vertically.
  public var columnLayout: Google_Monitoring_Dashboard_V1_ColumnLayout {
    get {
      if case .columnLayout(let v)? = layout {return v}
      return Google_Monitoring_Dashboard_V1_ColumnLayout()
    }
    set {layout = .columnLayout(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// A dashboard's root container element that defines the layout style.
  public enum OneOf_Layout: Equatable {
    /// Content is arranged with a basic layout that re-flows a simple list of
    /// informational elements like widgets or tiles.
    case gridLayout(Google_Monitoring_Dashboard_V1_GridLayout)
    /// The content is divided into equally spaced rows and the widgets are
    /// arranged horizontally.
    case rowLayout(Google_Monitoring_Dashboard_V1_RowLayout)
    /// The content is divided into equally spaced columns and the widgets are
    /// arranged vertically.
    case columnLayout(Google_Monitoring_Dashboard_V1_ColumnLayout)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Monitoring_Dashboard_V1_Dashboard.OneOf_Layout, rhs: Google_Monitoring_Dashboard_V1_Dashboard.OneOf_Layout) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.gridLayout, .gridLayout): return {
        guard case .gridLayout(let l) = lhs, case .gridLayout(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.rowLayout, .rowLayout): return {
        guard case .rowLayout(let l) = lhs, case .rowLayout(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.columnLayout, .columnLayout): return {
        guard case .columnLayout(let l) = lhs, case .columnLayout(let r) = rhs else { preconditionFailure() }
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

extension Google_Monitoring_Dashboard_V1_Dashboard: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Dashboard"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "display_name"),
    4: .same(proto: "etag"),
    5: .standard(proto: "grid_layout"),
    8: .standard(proto: "row_layout"),
    9: .standard(proto: "column_layout"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.displayName) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.etag) }()
      case 5: try {
        var v: Google_Monitoring_Dashboard_V1_GridLayout?
        if let current = self.layout {
          try decoder.handleConflictingOneOf()
          if case .gridLayout(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.layout = .gridLayout(v)}
      }()
      case 8: try {
        var v: Google_Monitoring_Dashboard_V1_RowLayout?
        if let current = self.layout {
          try decoder.handleConflictingOneOf()
          if case .rowLayout(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.layout = .rowLayout(v)}
      }()
      case 9: try {
        var v: Google_Monitoring_Dashboard_V1_ColumnLayout?
        if let current = self.layout {
          try decoder.handleConflictingOneOf()
          if case .columnLayout(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.layout = .columnLayout(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.displayName.isEmpty {
      try visitor.visitSingularStringField(value: self.displayName, fieldNumber: 2)
    }
    if !self.etag.isEmpty {
      try visitor.visitSingularStringField(value: self.etag, fieldNumber: 4)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.layout {
    case .gridLayout?: try {
      guard case .gridLayout(let v)? = self.layout else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }()
    case .rowLayout?: try {
      guard case .rowLayout(let v)? = self.layout else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }()
    case .columnLayout?: try {
      guard case .columnLayout(let v)? = self.layout else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Monitoring_Dashboard_V1_Dashboard, rhs: Google_Monitoring_Dashboard_V1_Dashboard) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.displayName != rhs.displayName {return false}
    if lhs.etag != rhs.etag {return false}
    if lhs.layout != rhs.layout {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}