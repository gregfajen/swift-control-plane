// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/api/logging.proto
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

/// Logging configuration of the service.
///
/// The following example shows how to configure logs to be sent to the
/// producer and consumer projects. In the example, the `activity_history`
/// log is sent to both the producer and consumer projects, whereas the
/// `purchase_history` log is only sent to the producer project.
///
///     monitored_resources:
///     - type: library.googleapis.com/branch
///       labels:
///       - key: /city
///         description: The city where the library branch is located in.
///       - key: /name
///         description: The name of the branch.
///     logs:
///     - name: activity_history
///       labels:
///       - key: /customer_id
///     - name: purchase_history
///     logging:
///       producer_destinations:
///       - monitored_resource: library.googleapis.com/branch
///         logs:
///         - activity_history
///         - purchase_history
///       consumer_destinations:
///       - monitored_resource: library.googleapis.com/branch
///         logs:
///         - activity_history
public struct Google_Api_Logging {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Logging configurations for sending logs to the producer project.
  /// There can be multiple producer destinations, each one must have a
  /// different monitored resource type. A log can be used in at most
  /// one producer destination.
  public var producerDestinations: [Google_Api_Logging.LoggingDestination] = []

  /// Logging configurations for sending logs to the consumer project.
  /// There can be multiple consumer destinations, each one must have a
  /// different monitored resource type. A log can be used in at most
  /// one consumer destination.
  public var consumerDestinations: [Google_Api_Logging.LoggingDestination] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Configuration of a specific logging destination (the producer project
  /// or the consumer project).
  public struct LoggingDestination {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The monitored resource type. The type must be defined in the
    /// [Service.monitored_resources][google.api.Service.monitored_resources] section.
    public var monitoredResource: String = String()

    /// Names of the logs to be sent to this destination. Each name must
    /// be defined in the [Service.logs][google.api.Service.logs] section. If the log name is
    /// not a domain scoped name, it will be automatically prefixed with
    /// the service name followed by "/".
    public var logs: [String] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.api"

extension Google_Api_Logging: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Logging"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "producer_destinations"),
    2: .standard(proto: "consumer_destinations"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.producerDestinations) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.consumerDestinations) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.producerDestinations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.producerDestinations, fieldNumber: 1)
    }
    if !self.consumerDestinations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.consumerDestinations, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Api_Logging, rhs: Google_Api_Logging) -> Bool {
    if lhs.producerDestinations != rhs.producerDestinations {return false}
    if lhs.consumerDestinations != rhs.consumerDestinations {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Api_Logging.LoggingDestination: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Api_Logging.protoMessageName + ".LoggingDestination"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    3: .standard(proto: "monitored_resource"),
    1: .same(proto: "logs"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.logs) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.monitoredResource) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.logs.isEmpty {
      try visitor.visitRepeatedStringField(value: self.logs, fieldNumber: 1)
    }
    if !self.monitoredResource.isEmpty {
      try visitor.visitSingularStringField(value: self.monitoredResource, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Api_Logging.LoggingDestination, rhs: Google_Api_Logging.LoggingDestination) -> Bool {
    if lhs.monitoredResource != rhs.monitoredResource {return false}
    if lhs.logs != rhs.logs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
