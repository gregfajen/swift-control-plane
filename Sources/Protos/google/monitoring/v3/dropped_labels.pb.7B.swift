// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/monitoring/v3/dropped_labels.proto
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

/// A set of (label, value) pairs which were dropped during aggregation, attached
/// to google.api.Distribution.Exemplars in google.api.Distribution values during
/// aggregation.
///
/// These values are used in combination with the label values that remain on the
/// aggregated Distribution timeseries to construct the full label set for the
/// exemplar values.  The resulting full label set may be used to identify the
/// specific task/job/instance (for example) which may be contributing to a
/// long-tail, while allowing the storage savings of only storing aggregated
/// distribution values for a large group.
///
/// Note that there are no guarantees on ordering of the labels from
/// exemplar-to-exemplar and from distribution-to-distribution in the same
/// stream, and there may be duplicates.  It is up to clients to resolve any
/// ambiguities.
public struct Google_Monitoring_V3_DroppedLabels {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Map from label to its value, for all labels dropped in any aggregation.
  public var label: Dictionary<String,String> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.monitoring.v3"

extension Google_Monitoring_V3_DroppedLabels: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DroppedLabels"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "label"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.label) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.label.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.label, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Monitoring_V3_DroppedLabels, rhs: Google_Monitoring_V3_DroppedLabels) -> Bool {
    if lhs.label != rhs.label {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
