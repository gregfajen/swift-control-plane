// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/appengine/v1beta/audit_data.proto
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

/// App Engine admin service audit log.
public struct Google_Appengine_V1beta_AuditData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Detailed information about methods that require it. Does not include
  /// simple Get, List or Delete methods because all significant information
  /// (resource name, number of returned elements for List operations) is already
  /// included in parent audit log message.
  public var method: Google_Appengine_V1beta_AuditData.OneOf_Method? = nil

  /// Detailed information about UpdateService call.
  public var updateService: Google_Appengine_V1beta_UpdateServiceMethod {
    get {
      if case .updateService(let v)? = method {return v}
      return Google_Appengine_V1beta_UpdateServiceMethod()
    }
    set {method = .updateService(newValue)}
  }

  /// Detailed information about CreateVersion call.
  public var createVersion: Google_Appengine_V1beta_CreateVersionMethod {
    get {
      if case .createVersion(let v)? = method {return v}
      return Google_Appengine_V1beta_CreateVersionMethod()
    }
    set {method = .createVersion(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Detailed information about methods that require it. Does not include
  /// simple Get, List or Delete methods because all significant information
  /// (resource name, number of returned elements for List operations) is already
  /// included in parent audit log message.
  public enum OneOf_Method: Equatable {
    /// Detailed information about UpdateService call.
    case updateService(Google_Appengine_V1beta_UpdateServiceMethod)
    /// Detailed information about CreateVersion call.
    case createVersion(Google_Appengine_V1beta_CreateVersionMethod)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Appengine_V1beta_AuditData.OneOf_Method, rhs: Google_Appengine_V1beta_AuditData.OneOf_Method) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.updateService, .updateService): return {
        guard case .updateService(let l) = lhs, case .updateService(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.createVersion, .createVersion): return {
        guard case .createVersion(let l) = lhs, case .createVersion(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Detailed information about UpdateService call.
public struct Google_Appengine_V1beta_UpdateServiceMethod {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Update service request.
  public var request: Google_Appengine_V1beta_UpdateServiceRequest {
    get {return _request ?? Google_Appengine_V1beta_UpdateServiceRequest()}
    set {_request = newValue}
  }
  /// Returns true if `request` has been explicitly set.
  public var hasRequest: Bool {return self._request != nil}
  /// Clears the value of `request`. Subsequent reads from it will return its default value.
  public mutating func clearRequest() {self._request = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _request: Google_Appengine_V1beta_UpdateServiceRequest? = nil
}

/// Detailed information about CreateVersion call.
public struct Google_Appengine_V1beta_CreateVersionMethod {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Create version request.
  public var request: Google_Appengine_V1beta_CreateVersionRequest {
    get {return _request ?? Google_Appengine_V1beta_CreateVersionRequest()}
    set {_request = newValue}
  }
  /// Returns true if `request` has been explicitly set.
  public var hasRequest: Bool {return self._request != nil}
  /// Clears the value of `request`. Subsequent reads from it will return its default value.
  public mutating func clearRequest() {self._request = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _request: Google_Appengine_V1beta_CreateVersionRequest? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.appengine.v1beta"

extension Google_Appengine_V1beta_AuditData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AuditData"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "update_service"),
    2: .standard(proto: "create_version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Google_Appengine_V1beta_UpdateServiceMethod?
        if let current = self.method {
          try decoder.handleConflictingOneOf()
          if case .updateService(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.method = .updateService(v)}
      }()
      case 2: try {
        var v: Google_Appengine_V1beta_CreateVersionMethod?
        if let current = self.method {
          try decoder.handleConflictingOneOf()
          if case .createVersion(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.method = .createVersion(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.method {
    case .updateService?: try {
      guard case .updateService(let v)? = self.method else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .createVersion?: try {
      guard case .createVersion(let v)? = self.method else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Appengine_V1beta_AuditData, rhs: Google_Appengine_V1beta_AuditData) -> Bool {
    if lhs.method != rhs.method {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Appengine_V1beta_UpdateServiceMethod: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateServiceMethod"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "request"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._request) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._request {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Appengine_V1beta_UpdateServiceMethod, rhs: Google_Appengine_V1beta_UpdateServiceMethod) -> Bool {
    if lhs._request != rhs._request {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Appengine_V1beta_CreateVersionMethod: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateVersionMethod"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "request"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._request) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._request {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Appengine_V1beta_CreateVersionMethod, rhs: Google_Appengine_V1beta_CreateVersionMethod) -> Bool {
    if lhs._request != rhs._request {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
