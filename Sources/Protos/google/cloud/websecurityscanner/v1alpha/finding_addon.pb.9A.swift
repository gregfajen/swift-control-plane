// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/websecurityscanner/v1alpha/finding_addon.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2019 Google LLC.
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

/// Information reported for an outdated library.
public struct Google_Cloud_Websecurityscanner_V1alpha_OutdatedLibrary {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the outdated library.
  public var libraryName: String = String()

  /// The version number.
  public var version: String = String()

  /// URLs to learn more information about the vulnerabilities in the library.
  public var learnMoreUrls: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Information regarding any resource causing the vulnerability such
/// as JavaScript sources, image, audio files, etc.
public struct Google_Cloud_Websecurityscanner_V1alpha_ViolatingResource {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The MIME type of this resource.
  public var contentType: String = String()

  /// URL of this violating resource.
  public var resourceURL: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Information about vulnerable request parameters.
public struct Google_Cloud_Websecurityscanner_V1alpha_VulnerableParameters {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The vulnerable parameter names.
  public var parameterNames: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Information about vulnerable or missing HTTP Headers.
public struct Google_Cloud_Websecurityscanner_V1alpha_VulnerableHeaders {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// List of vulnerable headers.
  public var headers: [Google_Cloud_Websecurityscanner_V1alpha_VulnerableHeaders.Header] = []

  /// List of missing headers.
  public var missingHeaders: [Google_Cloud_Websecurityscanner_V1alpha_VulnerableHeaders.Header] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Describes a HTTP Header.
  public struct Header {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Header name.
    public var name: String = String()

    /// Header value.
    public var value: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

/// Information reported for an XSS.
public struct Google_Cloud_Websecurityscanner_V1alpha_Xss {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Stack traces leading to the point where the XSS occurred.
  public var stackTraces: [String] = []

  /// An error message generated by a javascript breakage.
  public var errorMessage: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.websecurityscanner.v1alpha"

extension Google_Cloud_Websecurityscanner_V1alpha_OutdatedLibrary: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OutdatedLibrary"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "library_name"),
    2: .same(proto: "version"),
    3: .standard(proto: "learn_more_urls"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.libraryName) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.version) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.learnMoreUrls) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.libraryName.isEmpty {
      try visitor.visitSingularStringField(value: self.libraryName, fieldNumber: 1)
    }
    if !self.version.isEmpty {
      try visitor.visitSingularStringField(value: self.version, fieldNumber: 2)
    }
    if !self.learnMoreUrls.isEmpty {
      try visitor.visitRepeatedStringField(value: self.learnMoreUrls, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Websecurityscanner_V1alpha_OutdatedLibrary, rhs: Google_Cloud_Websecurityscanner_V1alpha_OutdatedLibrary) -> Bool {
    if lhs.libraryName != rhs.libraryName {return false}
    if lhs.version != rhs.version {return false}
    if lhs.learnMoreUrls != rhs.learnMoreUrls {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Websecurityscanner_V1alpha_ViolatingResource: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ViolatingResource"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "content_type"),
    2: .standard(proto: "resource_url"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.contentType) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.resourceURL) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.contentType.isEmpty {
      try visitor.visitSingularStringField(value: self.contentType, fieldNumber: 1)
    }
    if !self.resourceURL.isEmpty {
      try visitor.visitSingularStringField(value: self.resourceURL, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Websecurityscanner_V1alpha_ViolatingResource, rhs: Google_Cloud_Websecurityscanner_V1alpha_ViolatingResource) -> Bool {
    if lhs.contentType != rhs.contentType {return false}
    if lhs.resourceURL != rhs.resourceURL {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Websecurityscanner_V1alpha_VulnerableParameters: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".VulnerableParameters"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "parameter_names"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.parameterNames) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parameterNames.isEmpty {
      try visitor.visitRepeatedStringField(value: self.parameterNames, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Websecurityscanner_V1alpha_VulnerableParameters, rhs: Google_Cloud_Websecurityscanner_V1alpha_VulnerableParameters) -> Bool {
    if lhs.parameterNames != rhs.parameterNames {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Websecurityscanner_V1alpha_VulnerableHeaders: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".VulnerableHeaders"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "headers"),
    2: .standard(proto: "missing_headers"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.headers) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.missingHeaders) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.headers.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.headers, fieldNumber: 1)
    }
    if !self.missingHeaders.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.missingHeaders, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Websecurityscanner_V1alpha_VulnerableHeaders, rhs: Google_Cloud_Websecurityscanner_V1alpha_VulnerableHeaders) -> Bool {
    if lhs.headers != rhs.headers {return false}
    if lhs.missingHeaders != rhs.missingHeaders {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Websecurityscanner_V1alpha_VulnerableHeaders.Header: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Websecurityscanner_V1alpha_VulnerableHeaders.protoMessageName + ".Header"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.value) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Websecurityscanner_V1alpha_VulnerableHeaders.Header, rhs: Google_Cloud_Websecurityscanner_V1alpha_VulnerableHeaders.Header) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Websecurityscanner_V1alpha_Xss: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Xss"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "stack_traces"),
    2: .standard(proto: "error_message"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.stackTraces) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.errorMessage) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.stackTraces.isEmpty {
      try visitor.visitRepeatedStringField(value: self.stackTraces, fieldNumber: 1)
    }
    if !self.errorMessage.isEmpty {
      try visitor.visitSingularStringField(value: self.errorMessage, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Websecurityscanner_V1alpha_Xss, rhs: Google_Cloud_Websecurityscanner_V1alpha_Xss) -> Bool {
    if lhs.stackTraces != rhs.stackTraces {return false}
    if lhs.errorMessage != rhs.errorMessage {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
