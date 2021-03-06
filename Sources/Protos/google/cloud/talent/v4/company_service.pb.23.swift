// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/talent/v4/company_service.proto
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

/// The Request of the CreateCompany method.
public struct Google_Cloud_Talent_V4_CreateCompanyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Resource name of the tenant under which the company is created.
  ///
  /// The format is "projects/{project_id}/tenants/{tenant_id}", for example,
  /// "projects/foo/tenants/bar".
  public var parent: String = String()

  /// Required. The company to be created.
  public var company: Google_Cloud_Talent_V4_Company {
    get {return _company ?? Google_Cloud_Talent_V4_Company()}
    set {_company = newValue}
  }
  /// Returns true if `company` has been explicitly set.
  public var hasCompany: Bool {return self._company != nil}
  /// Clears the value of `company`. Subsequent reads from it will return its default value.
  public mutating func clearCompany() {self._company = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _company: Google_Cloud_Talent_V4_Company? = nil
}

/// Request for getting a company by name.
public struct Google_Cloud_Talent_V4_GetCompanyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The resource name of the company to be retrieved.
  ///
  /// The format is
  /// "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for
  /// example, "projects/api-test-project/tenants/foo/companies/bar".
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request for updating a specified company.
public struct Google_Cloud_Talent_V4_UpdateCompanyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The company resource to replace the current resource in the system.
  public var company: Google_Cloud_Talent_V4_Company {
    get {return _company ?? Google_Cloud_Talent_V4_Company()}
    set {_company = newValue}
  }
  /// Returns true if `company` has been explicitly set.
  public var hasCompany: Bool {return self._company != nil}
  /// Clears the value of `company`. Subsequent reads from it will return its default value.
  public mutating func clearCompany() {self._company = nil}

  /// Strongly recommended for the best service experience.
  ///
  /// If [update_mask][google.cloud.talent.v4.UpdateCompanyRequest.update_mask] is provided, only the specified fields in
  /// [company][google.cloud.talent.v4.UpdateCompanyRequest.company] are updated. Otherwise all the fields are updated.
  ///
  /// A field mask to specify the company fields to be updated. Only
  /// top level fields of [Company][google.cloud.talent.v4.Company] are supported.
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

  fileprivate var _company: Google_Cloud_Talent_V4_Company? = nil
  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

/// Request to delete a company.
public struct Google_Cloud_Talent_V4_DeleteCompanyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The resource name of the company to be deleted.
  ///
  /// The format is
  /// "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for
  /// example, "projects/foo/tenants/bar/companies/baz".
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// List companies for which the client has ACL visibility.
public struct Google_Cloud_Talent_V4_ListCompaniesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Resource name of the tenant under which the company is created.
  ///
  /// The format is "projects/{project_id}/tenants/{tenant_id}", for example,
  /// "projects/foo/tenants/bar".
  public var parent: String = String()

  /// The starting indicator from which to return results.
  public var pageToken: String = String()

  /// The maximum number of companies to be returned, at most 100.
  /// Default is 100 if a non-positive number is provided.
  public var pageSize: Int32 = 0

  /// Set to true if the companies requested must have open jobs.
  ///
  /// Defaults to false.
  ///
  /// If true, at most [page_size][google.cloud.talent.v4.ListCompaniesRequest.page_size] of companies are fetched, among which
  /// only those with open jobs are returned.
  public var requireOpenJobs: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The List companies response object.
public struct Google_Cloud_Talent_V4_ListCompaniesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Companies for the current client.
  public var companies: [Google_Cloud_Talent_V4_Company] = []

  /// A token to retrieve the next page of results.
  public var nextPageToken: String = String()

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  public var metadata: Google_Cloud_Talent_V4_ResponseMetadata {
    get {return _metadata ?? Google_Cloud_Talent_V4_ResponseMetadata()}
    set {_metadata = newValue}
  }
  /// Returns true if `metadata` has been explicitly set.
  public var hasMetadata: Bool {return self._metadata != nil}
  /// Clears the value of `metadata`. Subsequent reads from it will return its default value.
  public mutating func clearMetadata() {self._metadata = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _metadata: Google_Cloud_Talent_V4_ResponseMetadata? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.talent.v4"

extension Google_Cloud_Talent_V4_CreateCompanyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateCompanyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .same(proto: "company"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._company) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if let v = self._company {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Talent_V4_CreateCompanyRequest, rhs: Google_Cloud_Talent_V4_CreateCompanyRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs._company != rhs._company {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Talent_V4_GetCompanyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetCompanyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Talent_V4_GetCompanyRequest, rhs: Google_Cloud_Talent_V4_GetCompanyRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Talent_V4_UpdateCompanyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateCompanyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "company"),
    2: .standard(proto: "update_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._company) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._company {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Talent_V4_UpdateCompanyRequest, rhs: Google_Cloud_Talent_V4_UpdateCompanyRequest) -> Bool {
    if lhs._company != rhs._company {return false}
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Talent_V4_DeleteCompanyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteCompanyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Talent_V4_DeleteCompanyRequest, rhs: Google_Cloud_Talent_V4_DeleteCompanyRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Talent_V4_ListCompaniesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListCompaniesRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "page_token"),
    3: .standard(proto: "page_size"),
    4: .standard(proto: "require_open_jobs"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.pageToken) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.pageSize) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.requireOpenJobs) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if !self.pageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.pageToken, fieldNumber: 2)
    }
    if self.pageSize != 0 {
      try visitor.visitSingularInt32Field(value: self.pageSize, fieldNumber: 3)
    }
    if self.requireOpenJobs != false {
      try visitor.visitSingularBoolField(value: self.requireOpenJobs, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Talent_V4_ListCompaniesRequest, rhs: Google_Cloud_Talent_V4_ListCompaniesRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.requireOpenJobs != rhs.requireOpenJobs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Talent_V4_ListCompaniesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListCompaniesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "companies"),
    2: .standard(proto: "next_page_token"),
    3: .same(proto: "metadata"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.companies) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._metadata) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.companies.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.companies, fieldNumber: 1)
    }
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    if let v = self._metadata {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Talent_V4_ListCompaniesResponse, rhs: Google_Cloud_Talent_V4_ListCompaniesResponse) -> Bool {
    if lhs.companies != rhs.companies {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs._metadata != rhs._metadata {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
