// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/retail/v2beta/catalog_service.proto
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

/// Request for
/// [CatalogService.ListCatalogs][google.cloud.retail.v2beta.CatalogService.ListCatalogs]
/// method.
public struct Google_Cloud_Retail_V2beta_ListCatalogsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The account resource name with an associated location.
  ///
  /// If the caller does not have permission to list
  /// [Catalog][google.cloud.retail.v2beta.Catalog]s under this location,
  /// regardless of whether or not this location exists, a PERMISSION_DENIED
  /// error is returned.
  public var parent: String = String()

  /// Maximum number of [Catalog][google.cloud.retail.v2beta.Catalog]s to return.
  /// If unspecified, defaults to 50. The maximum allowed value is 1000. Values
  /// above 1000 will be coerced to 1000.
  ///
  /// If this field is negative, an INVALID_ARGUMENT is returned.
  public var pageSize: Int32 = 0

  /// A page token
  /// [ListCatalogsResponse.next_page_token][google.cloud.retail.v2beta.ListCatalogsResponse.next_page_token],
  /// received from a previous
  /// [CatalogService.ListCatalogs][google.cloud.retail.v2beta.CatalogService.ListCatalogs]
  /// call. Provide this to retrieve the subsequent page.
  ///
  /// When paginating, all other parameters provided to
  /// [CatalogService.ListCatalogs][google.cloud.retail.v2beta.CatalogService.ListCatalogs]
  /// must match the call that provided the page token. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  public var pageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Response for
/// [CatalogService.ListCatalogs][google.cloud.retail.v2beta.CatalogService.ListCatalogs]
/// method.
public struct Google_Cloud_Retail_V2beta_ListCatalogsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// All the customer's [Catalog][google.cloud.retail.v2beta.Catalog]s.
  public var catalogs: [Google_Cloud_Retail_V2beta_Catalog] = []

  /// A token that can be sent as
  /// [ListCatalogsRequest.page_token][google.cloud.retail.v2beta.ListCatalogsRequest.page_token]
  /// to retrieve the next page. If this field is omitted, there are no
  /// subsequent pages.
  public var nextPageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request for
/// [CatalogService.UpdateCatalog][google.cloud.retail.v2beta.CatalogService.UpdateCatalog]
/// method.
public struct Google_Cloud_Retail_V2beta_UpdateCatalogRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The [Catalog][google.cloud.retail.v2beta.Catalog] to update.
  ///
  /// If the caller does not have permission to update the
  /// [Catalog][google.cloud.retail.v2beta.Catalog], regardless of whether or not
  /// it exists, a PERMISSION_DENIED error is returned.
  ///
  /// If the [Catalog][google.cloud.retail.v2beta.Catalog] to update does not
  /// exist, a NOT_FOUND error is returned.
  public var catalog: Google_Cloud_Retail_V2beta_Catalog {
    get {return _catalog ?? Google_Cloud_Retail_V2beta_Catalog()}
    set {_catalog = newValue}
  }
  /// Returns true if `catalog` has been explicitly set.
  public var hasCatalog: Bool {return self._catalog != nil}
  /// Clears the value of `catalog`. Subsequent reads from it will return its default value.
  public mutating func clearCatalog() {self._catalog = nil}

  /// Indicates which fields in the provided
  /// [Catalog][google.cloud.retail.v2beta.Catalog] to update. If not set, will
  /// only update the
  /// [Catalog.product_level_config][google.cloud.retail.v2beta.Catalog.product_level_config]
  /// field, which is also the only currently supported field to update.
  ///
  /// If an unsupported or unknown field is provided, an INVALID_ARGUMENT error
  /// is returned.
  public var updateMask: SwiftProtobuf.Google_Protobuf_FieldMask {
    get {return _updateMask ?? SwiftProtobuf.Google_Protobuf_FieldMask()}
    set {_updateMask = newValue}
  }
  /// Returns true if `updateMask` has been explicitly set.
  public var hasUpdateMask: Bool {return self._updateMask != nil}
  /// Clears the value of `updateMask`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateMask() {self._updateMask = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _catalog: Google_Cloud_Retail_V2beta_Catalog? = nil
  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.retail.v2beta"

extension Google_Cloud_Retail_V2beta_ListCatalogsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListCatalogsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "page_size"),
    3: .standard(proto: "page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.pageSize) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.pageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if self.pageSize != 0 {
      try visitor.visitSingularInt32Field(value: self.pageSize, fieldNumber: 2)
    }
    if !self.pageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.pageToken, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2beta_ListCatalogsRequest, rhs: Google_Cloud_Retail_V2beta_ListCatalogsRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Retail_V2beta_ListCatalogsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListCatalogsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "catalogs"),
    2: .standard(proto: "next_page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.catalogs) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.catalogs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.catalogs, fieldNumber: 1)
    }
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2beta_ListCatalogsResponse, rhs: Google_Cloud_Retail_V2beta_ListCatalogsResponse) -> Bool {
    if lhs.catalogs != rhs.catalogs {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Retail_V2beta_UpdateCatalogRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateCatalogRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "catalog"),
    2: .standard(proto: "update_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._catalog) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._catalog {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2beta_UpdateCatalogRequest, rhs: Google_Cloud_Retail_V2beta_UpdateCatalogRequest) -> Bool {
    if lhs._catalog != rhs._catalog {return false}
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}