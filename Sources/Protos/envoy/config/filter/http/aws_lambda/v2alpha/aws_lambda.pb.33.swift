// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/filter/http/aws_lambda/v2alpha/aws_lambda.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

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

/// AWS Lambda filter config
public struct Envoy_Config_Filter_Http_AwsLambda_V2alpha_Config {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The ARN of the AWS Lambda to invoke when the filter is engaged
  /// Must be in the following format:
  /// arn:<partition>:lambda:<region>:<account-number>:function:<function-name>
  public var arn: String = String()

  /// Whether to transform the request (headers and body) to a JSON payload or pass it as is.
  public var payloadPassthrough: Bool = false

  /// Determines the way to invoke the Lambda function.
  public var invocationMode: Envoy_Config_Filter_Http_AwsLambda_V2alpha_Config.InvocationMode = .synchronous

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum InvocationMode: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// This is the more common mode of invocation, in which Lambda responds after it has completed the function. In
    /// this mode the output of the Lambda function becomes the response of the HTTP request.
    case synchronous // = 0

    /// In this mode Lambda responds immediately but continues to process the function asynchronously. This mode can be
    /// used to signal events for example. In this mode, Lambda responds with an acknowledgment that it received the
    /// call which is translated to an HTTP 200 OK by the filter.
    case asynchronous // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .synchronous
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .synchronous
      case 1: self = .asynchronous
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .synchronous: return 0
      case .asynchronous: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Envoy_Config_Filter_Http_AwsLambda_V2alpha_Config.InvocationMode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Config_Filter_Http_AwsLambda_V2alpha_Config.InvocationMode] = [
    .synchronous,
    .asynchronous,
  ]
}

#endif  // swift(>=4.2)

/// Per-route configuration for AWS Lambda. This can be useful when invoking a different Lambda function or a different
/// version of the same Lambda depending on the route.
public struct Envoy_Config_Filter_Http_AwsLambda_V2alpha_PerRouteConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var invokeConfig: Envoy_Config_Filter_Http_AwsLambda_V2alpha_Config {
    get {return _invokeConfig ?? Envoy_Config_Filter_Http_AwsLambda_V2alpha_Config()}
    set {_invokeConfig = newValue}
  }
  /// Returns true if `invokeConfig` has been explicitly set.
  public var hasInvokeConfig: Bool {return self._invokeConfig != nil}
  /// Clears the value of `invokeConfig`. Subsequent reads from it will return its default value.
  public mutating func clearInvokeConfig() {self._invokeConfig = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _invokeConfig: Envoy_Config_Filter_Http_AwsLambda_V2alpha_Config? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.filter.http.aws_lambda.v2alpha"

extension Envoy_Config_Filter_Http_AwsLambda_V2alpha_Config: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Config"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "arn"),
    2: .standard(proto: "payload_passthrough"),
    3: .standard(proto: "invocation_mode"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.arn) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.payloadPassthrough) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.invocationMode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.arn.isEmpty {
      try visitor.visitSingularStringField(value: self.arn, fieldNumber: 1)
    }
    if self.payloadPassthrough != false {
      try visitor.visitSingularBoolField(value: self.payloadPassthrough, fieldNumber: 2)
    }
    if self.invocationMode != .synchronous {
      try visitor.visitSingularEnumField(value: self.invocationMode, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Filter_Http_AwsLambda_V2alpha_Config, rhs: Envoy_Config_Filter_Http_AwsLambda_V2alpha_Config) -> Bool {
    if lhs.arn != rhs.arn {return false}
    if lhs.payloadPassthrough != rhs.payloadPassthrough {return false}
    if lhs.invocationMode != rhs.invocationMode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Filter_Http_AwsLambda_V2alpha_Config.InvocationMode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SYNCHRONOUS"),
    1: .same(proto: "ASYNCHRONOUS"),
  ]
}

extension Envoy_Config_Filter_Http_AwsLambda_V2alpha_PerRouteConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PerRouteConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "invoke_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._invokeConfig) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._invokeConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Filter_Http_AwsLambda_V2alpha_PerRouteConfig, rhs: Envoy_Config_Filter_Http_AwsLambda_V2alpha_PerRouteConfig) -> Bool {
    if lhs._invokeConfig != rhs._invokeConfig {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}