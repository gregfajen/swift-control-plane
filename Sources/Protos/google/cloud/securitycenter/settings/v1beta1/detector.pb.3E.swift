// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/securitycenter/settings/v1beta1/detector.proto
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

/// Detector is a set of detectors or scanners act as individual checks done
/// within a component e.g. bad IP, bad domains, IAM anomaly, cryptomining, open
/// firewall, etc. Detector is independent of Organization, meaning each detector
/// must be defined for a given Security Center component under a specified
/// billing tier. Organizations can configure the list of detectors based on
/// their subscribed billing tier.
///
/// Defines a detector, its billing tier and any applicable labels.
public struct Google_Cloud_Securitycenter_Settings_V1beta1_Detector {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. Detector Identifier
  public var detector: String = String()

  /// Output only. Component that supports detector type.  Multiple components may support the
  /// same detector.
  public var component: String = String()

  /// Output only. The billing tier may be different for a detector of the same name in
  /// another component.
  public var billingTier: Google_Cloud_Securitycenter_Settings_V1beta1_BillingTier = .unspecified

  /// Output only. Google curated detector labels. These are alphanumeric tags that are not
  /// necessarily human readable. Labels can be used to group detectors together
  /// in the future. An example might be tagging all detectors “PCI” that help
  /// with PCI compliance.
  public var detectorLabels: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.securitycenter.settings.v1beta1"

extension Google_Cloud_Securitycenter_Settings_V1beta1_Detector: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Detector"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "detector"),
    2: .same(proto: "component"),
    3: .standard(proto: "billing_tier"),
    4: .standard(proto: "detector_labels"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.detector) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.component) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.billingTier) }()
      case 4: try { try decoder.decodeRepeatedStringField(value: &self.detectorLabels) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.detector.isEmpty {
      try visitor.visitSingularStringField(value: self.detector, fieldNumber: 1)
    }
    if !self.component.isEmpty {
      try visitor.visitSingularStringField(value: self.component, fieldNumber: 2)
    }
    if self.billingTier != .unspecified {
      try visitor.visitSingularEnumField(value: self.billingTier, fieldNumber: 3)
    }
    if !self.detectorLabels.isEmpty {
      try visitor.visitRepeatedStringField(value: self.detectorLabels, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Securitycenter_Settings_V1beta1_Detector, rhs: Google_Cloud_Securitycenter_Settings_V1beta1_Detector) -> Bool {
    if lhs.detector != rhs.detector {return false}
    if lhs.component != rhs.component {return false}
    if lhs.billingTier != rhs.billingTier {return false}
    if lhs.detectorLabels != rhs.detectorLabels {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}