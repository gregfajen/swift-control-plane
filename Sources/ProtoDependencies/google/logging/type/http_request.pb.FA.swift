// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/logging/type/http_request.proto
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

/// A common proto for logging HTTP requests. Only contains semantics
/// defined by the HTTP specification. Product-specific logging
/// information MUST be defined in a separate message.
public struct Google_Logging_Type_HttpRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The request method. Examples: `"GET"`, `"HEAD"`, `"PUT"`, `"POST"`.
  public var requestMethod: String = String()

  /// The scheme (http, https), the host name, the path and the query
  /// portion of the URL that was requested.
  /// Example: `"http://example.com/some/info?color=red"`.
  public var requestURL: String = String()

  /// The size of the HTTP request message in bytes, including the request
  /// headers and the request body.
  public var requestSize: Int64 = 0

  /// The response code indicating the status of response.
  /// Examples: 200, 404.
  public var status: Int32 = 0

  /// The size of the HTTP response message sent back to the client, in bytes,
  /// including the response headers and the response body.
  public var responseSize: Int64 = 0

  /// The user agent sent by the client. Example:
  /// `"Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Q312461; .NET
  /// CLR 1.0.3705)"`.
  public var userAgent: String = String()

  /// The IP address (IPv4 or IPv6) of the client that issued the HTTP
  /// request. Examples: `"192.168.1.1"`, `"FE80::0202:B3FF:FE1E:8329"`.
  public var remoteIp: String = String()

  /// The IP address (IPv4 or IPv6) of the origin server that the request was
  /// sent to.
  public var serverIp: String = String()

  /// The referer URL of the request, as defined in
  /// [HTTP/1.1 Header Field
  /// Definitions](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).
  public var referer: String = String()

  /// The request processing latency on the server, from the time the request was
  /// received until the response was sent.
  public var latency: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _latency ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_latency = newValue}
  }
  /// Returns true if `latency` has been explicitly set.
  public var hasLatency: Bool {return self._latency != nil}
  /// Clears the value of `latency`. Subsequent reads from it will return its default value.
  public mutating func clearLatency() {self._latency = nil}

  /// Whether or not a cache lookup was attempted.
  public var cacheLookup: Bool = false

  /// Whether or not an entity was served from cache
  /// (with or without validation).
  public var cacheHit: Bool = false

  /// Whether or not the response was validated with the origin server before
  /// being served from cache. This field is only meaningful if `cache_hit` is
  /// True.
  public var cacheValidatedWithOriginServer: Bool = false

  /// The number of HTTP response bytes inserted into cache. Set only when a
  /// cache fill was attempted.
  public var cacheFillBytes: Int64 = 0

  /// Protocol used for the request. Examples: "HTTP/1.1", "HTTP/2", "websocket"
  public var `protocol`: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _latency: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.logging.type"

extension Google_Logging_Type_HttpRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HttpRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "request_method"),
    2: .standard(proto: "request_url"),
    3: .standard(proto: "request_size"),
    4: .same(proto: "status"),
    5: .standard(proto: "response_size"),
    6: .standard(proto: "user_agent"),
    7: .standard(proto: "remote_ip"),
    13: .standard(proto: "server_ip"),
    8: .same(proto: "referer"),
    14: .same(proto: "latency"),
    11: .standard(proto: "cache_lookup"),
    9: .standard(proto: "cache_hit"),
    10: .standard(proto: "cache_validated_with_origin_server"),
    12: .standard(proto: "cache_fill_bytes"),
    15: .same(proto: "protocol"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.requestMethod)
      case 2: try decoder.decodeSingularStringField(value: &self.requestURL)
      case 3: try decoder.decodeSingularInt64Field(value: &self.requestSize)
      case 4: try decoder.decodeSingularInt32Field(value: &self.status)
      case 5: try decoder.decodeSingularInt64Field(value: &self.responseSize)
      case 6: try decoder.decodeSingularStringField(value: &self.userAgent)
      case 7: try decoder.decodeSingularStringField(value: &self.remoteIp)
      case 8: try decoder.decodeSingularStringField(value: &self.referer)
      case 9: try decoder.decodeSingularBoolField(value: &self.cacheHit)
      case 10: try decoder.decodeSingularBoolField(value: &self.cacheValidatedWithOriginServer)
      case 11: try decoder.decodeSingularBoolField(value: &self.cacheLookup)
      case 12: try decoder.decodeSingularInt64Field(value: &self.cacheFillBytes)
      case 13: try decoder.decodeSingularStringField(value: &self.serverIp)
      case 14: try decoder.decodeSingularMessageField(value: &self._latency)
      case 15: try decoder.decodeSingularStringField(value: &self.`protocol`)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.requestMethod.isEmpty {
      try visitor.visitSingularStringField(value: self.requestMethod, fieldNumber: 1)
    }
    if !self.requestURL.isEmpty {
      try visitor.visitSingularStringField(value: self.requestURL, fieldNumber: 2)
    }
    if self.requestSize != 0 {
      try visitor.visitSingularInt64Field(value: self.requestSize, fieldNumber: 3)
    }
    if self.status != 0 {
      try visitor.visitSingularInt32Field(value: self.status, fieldNumber: 4)
    }
    if self.responseSize != 0 {
      try visitor.visitSingularInt64Field(value: self.responseSize, fieldNumber: 5)
    }
    if !self.userAgent.isEmpty {
      try visitor.visitSingularStringField(value: self.userAgent, fieldNumber: 6)
    }
    if !self.remoteIp.isEmpty {
      try visitor.visitSingularStringField(value: self.remoteIp, fieldNumber: 7)
    }
    if !self.referer.isEmpty {
      try visitor.visitSingularStringField(value: self.referer, fieldNumber: 8)
    }
    if self.cacheHit != false {
      try visitor.visitSingularBoolField(value: self.cacheHit, fieldNumber: 9)
    }
    if self.cacheValidatedWithOriginServer != false {
      try visitor.visitSingularBoolField(value: self.cacheValidatedWithOriginServer, fieldNumber: 10)
    }
    if self.cacheLookup != false {
      try visitor.visitSingularBoolField(value: self.cacheLookup, fieldNumber: 11)
    }
    if self.cacheFillBytes != 0 {
      try visitor.visitSingularInt64Field(value: self.cacheFillBytes, fieldNumber: 12)
    }
    if !self.serverIp.isEmpty {
      try visitor.visitSingularStringField(value: self.serverIp, fieldNumber: 13)
    }
    if let v = self._latency {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 14)
    }
    if !self.`protocol`.isEmpty {
      try visitor.visitSingularStringField(value: self.`protocol`, fieldNumber: 15)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Logging_Type_HttpRequest, rhs: Google_Logging_Type_HttpRequest) -> Bool {
    if lhs.requestMethod != rhs.requestMethod {return false}
    if lhs.requestURL != rhs.requestURL {return false}
    if lhs.requestSize != rhs.requestSize {return false}
    if lhs.status != rhs.status {return false}
    if lhs.responseSize != rhs.responseSize {return false}
    if lhs.userAgent != rhs.userAgent {return false}
    if lhs.remoteIp != rhs.remoteIp {return false}
    if lhs.serverIp != rhs.serverIp {return false}
    if lhs.referer != rhs.referer {return false}
    if lhs._latency != rhs._latency {return false}
    if lhs.cacheLookup != rhs.cacheLookup {return false}
    if lhs.cacheHit != rhs.cacheHit {return false}
    if lhs.cacheValidatedWithOriginServer != rhs.cacheValidatedWithOriginServer {return false}
    if lhs.cacheFillBytes != rhs.cacheFillBytes {return false}
    if lhs.`protocol` != rhs.`protocol` {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}