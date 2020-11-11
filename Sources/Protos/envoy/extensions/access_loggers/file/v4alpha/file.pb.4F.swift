// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/access_loggers/file/v4alpha/file.proto
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

/// Custom configuration for an :ref:`AccessLog <envoy_api_msg_config.accesslog.v4alpha.AccessLog>`
/// that writes log entries directly to a file. Configures the built-in *envoy.access_loggers.file*
/// AccessLog.
/// [#next-free-field: 6]
public struct Envoy_Extensions_AccessLoggers_File_V4alpha_FileAccessLog {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A path to a local file to which to write the access log entries.
  public var path: String = String()

  public var accessLogFormat: Envoy_Extensions_AccessLoggers_File_V4alpha_FileAccessLog.OneOf_AccessLogFormat? = nil

  /// Configuration to form access log data and format.
  /// If not specified, use :ref:`default format <config_access_log_default_format>`.
  public var logFormat: Envoy_Config_Core_V4alpha_SubstitutionFormatString {
    get {
      if case .logFormat(let v)? = accessLogFormat {return v}
      return Envoy_Config_Core_V4alpha_SubstitutionFormatString()
    }
    set {accessLogFormat = .logFormat(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_AccessLogFormat: Equatable {
    /// Configuration to form access log data and format.
    /// If not specified, use :ref:`default format <config_access_log_default_format>`.
    case logFormat(Envoy_Config_Core_V4alpha_SubstitutionFormatString)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Extensions_AccessLoggers_File_V4alpha_FileAccessLog.OneOf_AccessLogFormat, rhs: Envoy_Extensions_AccessLoggers_File_V4alpha_FileAccessLog.OneOf_AccessLogFormat) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.logFormat, .logFormat): return {
        guard case .logFormat(let l) = lhs, case .logFormat(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.access_loggers.file.v4alpha"

extension Envoy_Extensions_AccessLoggers_File_V4alpha_FileAccessLog: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FileAccessLog"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
    5: .standard(proto: "log_format"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.path) }()
      case 5: try {
        var v: Envoy_Config_Core_V4alpha_SubstitutionFormatString?
        if let current = self.accessLogFormat {
          try decoder.handleConflictingOneOf()
          if case .logFormat(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.accessLogFormat = .logFormat(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 1)
    }
    if case .logFormat(let v)? = self.accessLogFormat {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_AccessLoggers_File_V4alpha_FileAccessLog, rhs: Envoy_Extensions_AccessLoggers_File_V4alpha_FileAccessLog) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs.accessLogFormat != rhs.accessLogFormat {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
