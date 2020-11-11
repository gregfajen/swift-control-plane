// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: opencensus/proto/trace/v1/trace_config.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2018, OpenCensus Authors
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

/// Global configuration of the trace service. All fields must be specified, or
/// the default (zero) values will be used for each type.
public struct Opencensus_Proto_Trace_V1_TraceConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The global default sampler used to make decisions on span sampling.
  public var sampler: Opencensus_Proto_Trace_V1_TraceConfig.OneOf_Sampler? = nil

  public var probabilitySampler: Opencensus_Proto_Trace_V1_ProbabilitySampler {
    get {
      if case .probabilitySampler(let v)? = sampler {return v}
      return Opencensus_Proto_Trace_V1_ProbabilitySampler()
    }
    set {sampler = .probabilitySampler(newValue)}
  }

  public var constantSampler: Opencensus_Proto_Trace_V1_ConstantSampler {
    get {
      if case .constantSampler(let v)? = sampler {return v}
      return Opencensus_Proto_Trace_V1_ConstantSampler()
    }
    set {sampler = .constantSampler(newValue)}
  }

  public var rateLimitingSampler: Opencensus_Proto_Trace_V1_RateLimitingSampler {
    get {
      if case .rateLimitingSampler(let v)? = sampler {return v}
      return Opencensus_Proto_Trace_V1_RateLimitingSampler()
    }
    set {sampler = .rateLimitingSampler(newValue)}
  }

  /// The global default max number of attributes per span.
  public var maxNumberOfAttributes: Int64 = 0

  /// The global default max number of annotation events per span.
  public var maxNumberOfAnnotations: Int64 = 0

  /// The global default max number of message events per span.
  public var maxNumberOfMessageEvents: Int64 = 0

  /// The global default max number of link entries per span.
  public var maxNumberOfLinks: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The global default sampler used to make decisions on span sampling.
  public enum OneOf_Sampler: Equatable {
    case probabilitySampler(Opencensus_Proto_Trace_V1_ProbabilitySampler)
    case constantSampler(Opencensus_Proto_Trace_V1_ConstantSampler)
    case rateLimitingSampler(Opencensus_Proto_Trace_V1_RateLimitingSampler)

  #if !swift(>=4.1)
    public static func ==(lhs: Opencensus_Proto_Trace_V1_TraceConfig.OneOf_Sampler, rhs: Opencensus_Proto_Trace_V1_TraceConfig.OneOf_Sampler) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.probabilitySampler, .probabilitySampler): return {
        guard case .probabilitySampler(let l) = lhs, case .probabilitySampler(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.constantSampler, .constantSampler): return {
        guard case .constantSampler(let l) = lhs, case .constantSampler(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.rateLimitingSampler, .rateLimitingSampler): return {
        guard case .rateLimitingSampler(let l) = lhs, case .rateLimitingSampler(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Sampler that tries to uniformly sample traces with a given probability.
/// The probability of sampling a trace is equal to that of the specified probability.
public struct Opencensus_Proto_Trace_V1_ProbabilitySampler {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The desired probability of sampling. Must be within [0.0, 1.0].
  public var samplingProbability: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Sampler that always makes a constant decision on span sampling.
public struct Opencensus_Proto_Trace_V1_ConstantSampler {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var decision: Opencensus_Proto_Trace_V1_ConstantSampler.ConstantDecision = .alwaysOff

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// How spans should be sampled:
  /// - Always off
  /// - Always on
  /// - Always follow the parent Span's decision (off if no parent).
  public enum ConstantDecision: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case alwaysOff // = 0
    case alwaysOn // = 1
    case alwaysParent // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .alwaysOff
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .alwaysOff
      case 1: self = .alwaysOn
      case 2: self = .alwaysParent
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .alwaysOff: return 0
      case .alwaysOn: return 1
      case .alwaysParent: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Opencensus_Proto_Trace_V1_ConstantSampler.ConstantDecision: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Opencensus_Proto_Trace_V1_ConstantSampler.ConstantDecision] = [
    .alwaysOff,
    .alwaysOn,
    .alwaysParent,
  ]
}

#endif  // swift(>=4.2)

/// Sampler that tries to sample with a rate per time window.
public struct Opencensus_Proto_Trace_V1_RateLimitingSampler {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Rate per second.
  public var qps: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "opencensus.proto.trace.v1"

extension Opencensus_Proto_Trace_V1_TraceConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TraceConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "probability_sampler"),
    2: .standard(proto: "constant_sampler"),
    3: .standard(proto: "rate_limiting_sampler"),
    4: .standard(proto: "max_number_of_attributes"),
    5: .standard(proto: "max_number_of_annotations"),
    6: .standard(proto: "max_number_of_message_events"),
    7: .standard(proto: "max_number_of_links"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Opencensus_Proto_Trace_V1_ProbabilitySampler?
        if let current = self.sampler {
          try decoder.handleConflictingOneOf()
          if case .probabilitySampler(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.sampler = .probabilitySampler(v)}
      }()
      case 2: try {
        var v: Opencensus_Proto_Trace_V1_ConstantSampler?
        if let current = self.sampler {
          try decoder.handleConflictingOneOf()
          if case .constantSampler(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.sampler = .constantSampler(v)}
      }()
      case 3: try {
        var v: Opencensus_Proto_Trace_V1_RateLimitingSampler?
        if let current = self.sampler {
          try decoder.handleConflictingOneOf()
          if case .rateLimitingSampler(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.sampler = .rateLimitingSampler(v)}
      }()
      case 4: try { try decoder.decodeSingularInt64Field(value: &self.maxNumberOfAttributes) }()
      case 5: try { try decoder.decodeSingularInt64Field(value: &self.maxNumberOfAnnotations) }()
      case 6: try { try decoder.decodeSingularInt64Field(value: &self.maxNumberOfMessageEvents) }()
      case 7: try { try decoder.decodeSingularInt64Field(value: &self.maxNumberOfLinks) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.sampler {
    case .probabilitySampler?: try {
      guard case .probabilitySampler(let v)? = self.sampler else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .constantSampler?: try {
      guard case .constantSampler(let v)? = self.sampler else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .rateLimitingSampler?: try {
      guard case .rateLimitingSampler(let v)? = self.sampler else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    if self.maxNumberOfAttributes != 0 {
      try visitor.visitSingularInt64Field(value: self.maxNumberOfAttributes, fieldNumber: 4)
    }
    if self.maxNumberOfAnnotations != 0 {
      try visitor.visitSingularInt64Field(value: self.maxNumberOfAnnotations, fieldNumber: 5)
    }
    if self.maxNumberOfMessageEvents != 0 {
      try visitor.visitSingularInt64Field(value: self.maxNumberOfMessageEvents, fieldNumber: 6)
    }
    if self.maxNumberOfLinks != 0 {
      try visitor.visitSingularInt64Field(value: self.maxNumberOfLinks, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opencensus_Proto_Trace_V1_TraceConfig, rhs: Opencensus_Proto_Trace_V1_TraceConfig) -> Bool {
    if lhs.sampler != rhs.sampler {return false}
    if lhs.maxNumberOfAttributes != rhs.maxNumberOfAttributes {return false}
    if lhs.maxNumberOfAnnotations != rhs.maxNumberOfAnnotations {return false}
    if lhs.maxNumberOfMessageEvents != rhs.maxNumberOfMessageEvents {return false}
    if lhs.maxNumberOfLinks != rhs.maxNumberOfLinks {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opencensus_Proto_Trace_V1_ProbabilitySampler: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ProbabilitySampler"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "samplingProbability"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.samplingProbability) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.samplingProbability != 0 {
      try visitor.visitSingularDoubleField(value: self.samplingProbability, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opencensus_Proto_Trace_V1_ProbabilitySampler, rhs: Opencensus_Proto_Trace_V1_ProbabilitySampler) -> Bool {
    if lhs.samplingProbability != rhs.samplingProbability {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opencensus_Proto_Trace_V1_ConstantSampler: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ConstantSampler"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "decision"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.decision) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.decision != .alwaysOff {
      try visitor.visitSingularEnumField(value: self.decision, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opencensus_Proto_Trace_V1_ConstantSampler, rhs: Opencensus_Proto_Trace_V1_ConstantSampler) -> Bool {
    if lhs.decision != rhs.decision {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opencensus_Proto_Trace_V1_ConstantSampler.ConstantDecision: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ALWAYS_OFF"),
    1: .same(proto: "ALWAYS_ON"),
    2: .same(proto: "ALWAYS_PARENT"),
  ]
}

extension Opencensus_Proto_Trace_V1_RateLimitingSampler: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RateLimitingSampler"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "qps"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.qps) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.qps != 0 {
      try visitor.visitSingularInt64Field(value: self.qps, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opencensus_Proto_Trace_V1_RateLimitingSampler, rhs: Opencensus_Proto_Trace_V1_RateLimitingSampler) -> Bool {
    if lhs.qps != rhs.qps {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}