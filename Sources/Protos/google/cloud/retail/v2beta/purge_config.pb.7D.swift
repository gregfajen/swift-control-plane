// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/retail/v2beta/purge_config.proto
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

/// Metadata related to the progress of the Purge operation.
/// This will be returned by the google.longrunning.Operation.metadata field.
public struct Google_Cloud_Retail_V2beta_PurgeMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for PurgeProducts method.
public struct Google_Cloud_Retail_V2beta_PurgeProductsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The resource name of the catalog under which the products are
  /// created. The format is
  /// "projects/${projectId}/locations/global/catalogs/${catalogId}"
  public var parent: String = String()

  /// Required. Filter matching the products to be purged. Only supported value
  /// at the moment is "*" (all items).
  public var filter: String = String()

  /// Actually perform the purge.
  /// If `force` is set to false, the method will return the expected purge count
  /// without deleting any products.
  public var force: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Response of the PurgeProductsRequest. If the long running operation is
/// successfully done, then this message is returned by the
/// google.longrunning.Operations.response field.
public struct Google_Cloud_Retail_V2beta_PurgeProductsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The total count of products purged as a result of the operation.
  public var purgedCount: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for PurgeUserEvents method.
public struct Google_Cloud_Retail_V2beta_PurgeUserEventsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The resource name of the catalog under which the events are
  /// created. The format is
  /// "projects/${projectId}/locations/global/catalogs/${catalogId}"
  public var parent: String = String()

  /// Required. The filter string to specify the events to be deleted with a
  /// length limit of 5,000 characters. Empty string filter is not allowed. The
  /// eligible fields for filtering are:
  ///
  /// * `eventType`: UserEvent.eventType field of type string.
  /// * `eventTime`: in ISO 8601 "zulu" format.
  /// * `visitorId`: field of type string. Specifying this will delete all
  ///   events associated with a visitor.
  /// * `userId`: field of type string. Specifying this will delete all events
  ///   associated with a user.
  ///
  /// Examples:
  ///
  /// * Deleting all events in a time range:
  ///   `eventTime > "2012-04-23T18:25:43.511Z"
  ///   eventTime < "2012-04-23T18:30:43.511Z"`
  /// * Deleting specific eventType in time range:
  ///   `eventTime > "2012-04-23T18:25:43.511Z" eventType = "detail-page-view"`
  /// * Deleting all events for a specific visitor:
  ///   `visitorId = "visitor1024"`
  ///
  /// The filtering fields are assumed to have an implicit AND.
  public var filter: String = String()

  /// Actually perform the purge.
  /// If `force` is set to false, the method will return the expected purge count
  /// without deleting any user events.
  public var force: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Response of the PurgeUserEventsRequest. If the long running operation is
/// successfully done, then this message is returned by the
/// google.longrunning.Operations.response field.
public struct Google_Cloud_Retail_V2beta_PurgeUserEventsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The total count of events purged as a result of the operation.
  public var purgedEventsCount: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.retail.v2beta"

extension Google_Cloud_Retail_V2beta_PurgeMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PurgeMetadata"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2beta_PurgeMetadata, rhs: Google_Cloud_Retail_V2beta_PurgeMetadata) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Retail_V2beta_PurgeProductsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PurgeProductsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .same(proto: "filter"),
    3: .same(proto: "force"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.filter) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.force) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if !self.filter.isEmpty {
      try visitor.visitSingularStringField(value: self.filter, fieldNumber: 2)
    }
    if self.force != false {
      try visitor.visitSingularBoolField(value: self.force, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2beta_PurgeProductsRequest, rhs: Google_Cloud_Retail_V2beta_PurgeProductsRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.filter != rhs.filter {return false}
    if lhs.force != rhs.force {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Retail_V2beta_PurgeProductsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PurgeProductsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "purged_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.purgedCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.purgedCount != 0 {
      try visitor.visitSingularInt64Field(value: self.purgedCount, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2beta_PurgeProductsResponse, rhs: Google_Cloud_Retail_V2beta_PurgeProductsResponse) -> Bool {
    if lhs.purgedCount != rhs.purgedCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Retail_V2beta_PurgeUserEventsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PurgeUserEventsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .same(proto: "filter"),
    3: .same(proto: "force"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.filter) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.force) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if !self.filter.isEmpty {
      try visitor.visitSingularStringField(value: self.filter, fieldNumber: 2)
    }
    if self.force != false {
      try visitor.visitSingularBoolField(value: self.force, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2beta_PurgeUserEventsRequest, rhs: Google_Cloud_Retail_V2beta_PurgeUserEventsRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.filter != rhs.filter {return false}
    if lhs.force != rhs.force {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Retail_V2beta_PurgeUserEventsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PurgeUserEventsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "purged_events_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.purgedEventsCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.purgedEventsCount != 0 {
      try visitor.visitSingularInt64Field(value: self.purgedEventsCount, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2beta_PurgeUserEventsResponse, rhs: Google_Cloud_Retail_V2beta_PurgeUserEventsResponse) -> Bool {
    if lhs.purgedEventsCount != rhs.purgedEventsCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
