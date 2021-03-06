// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/compression/gzip/compressor/v3/gzip.proto
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

/// [#next-free-field: 6]
public struct Envoy_Extensions_Compression_Gzip_Compressor_V3_Gzip {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Value from 1 to 9 that controls the amount of internal memory used by zlib. Higher values
  /// use more memory, but are faster and produce better compression results. The default value is 5.
  public var memoryLevel: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _memoryLevel ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_memoryLevel = newValue}
  }
  /// Returns true if `memoryLevel` has been explicitly set.
  public var hasMemoryLevel: Bool {return self._memoryLevel != nil}
  /// Clears the value of `memoryLevel`. Subsequent reads from it will return its default value.
  public mutating func clearMemoryLevel() {self._memoryLevel = nil}

  /// A value used for selecting the zlib compression level. This setting will affect speed and
  /// amount of compression applied to the content. "BEST_COMPRESSION" provides higher compression
  /// at the cost of higher latency and is equal to "COMPRESSION_LEVEL_9". "BEST_SPEED" provides
  /// lower compression with minimum impact on response time, the same as "COMPRESSION_LEVEL_1".
  /// "DEFAULT_COMPRESSION" provides an optimal result between speed and compression. According
  /// to zlib's manual this level gives the same result as "COMPRESSION_LEVEL_6".
  /// This field will be set to "DEFAULT_COMPRESSION" if not specified.
  public var compressionLevel: Envoy_Extensions_Compression_Gzip_Compressor_V3_Gzip.CompressionLevel = .defaultCompression

  /// A value used for selecting the zlib compression strategy which is directly related to the
  /// characteristics of the content. Most of the time "DEFAULT_STRATEGY" will be the best choice,
  /// which is also the default value for the parameter, though there are situations when
  /// changing this parameter might produce better results. For example, run-length encoding (RLE)
  /// is typically used when the content is known for having sequences which same data occurs many
  /// consecutive times. For more information about each strategy, please refer to zlib manual.
  public var compressionStrategy: Envoy_Extensions_Compression_Gzip_Compressor_V3_Gzip.CompressionStrategy = .defaultStrategy

  /// Value from 9 to 15 that represents the base two logarithmic of the compressor's window size.
  /// Larger window results in better compression at the expense of memory usage. The default is 12
  /// which will produce a 4096 bytes window. For more details about this parameter, please refer to
  /// zlib manual > deflateInit2.
  public var windowBits: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _windowBits ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_windowBits = newValue}
  }
  /// Returns true if `windowBits` has been explicitly set.
  public var hasWindowBits: Bool {return self._windowBits != nil}
  /// Clears the value of `windowBits`. Subsequent reads from it will return its default value.
  public mutating func clearWindowBits() {self._windowBits = nil}

  /// Value for Zlib's next output buffer. If not set, defaults to 4096.
  /// See https://www.zlib.net/manual.html for more details. Also see
  /// https://github.com/envoyproxy/envoy/issues/8448 for context on this filter's performance.
  public var chunkSize: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _chunkSize ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_chunkSize = newValue}
  }
  /// Returns true if `chunkSize` has been explicitly set.
  public var hasChunkSize: Bool {return self._chunkSize != nil}
  /// Clears the value of `chunkSize`. Subsequent reads from it will return its default value.
  public mutating func clearChunkSize() {self._chunkSize = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// All the values of this enumeration translate directly to zlib's compression strategies.
  /// For more information about each strategy, please refer to zlib manual.
  public enum CompressionStrategy: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case defaultStrategy // = 0
    case filtered // = 1
    case huffmanOnly // = 2
    case rle // = 3
    case fixed // = 4
    case UNRECOGNIZED(Int)

    public init() {
      self = .defaultStrategy
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .defaultStrategy
      case 1: self = .filtered
      case 2: self = .huffmanOnly
      case 3: self = .rle
      case 4: self = .fixed
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .defaultStrategy: return 0
      case .filtered: return 1
      case .huffmanOnly: return 2
      case .rle: return 3
      case .fixed: return 4
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public enum CompressionLevel: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case defaultCompression // = 0
    case bestSpeed // = 1
    public static let compressionLevel1 = bestSpeed
    case compressionLevel2 // = 2
    case compressionLevel3 // = 3
    case compressionLevel4 // = 4
    case compressionLevel5 // = 5
    case compressionLevel6 // = 6
    case compressionLevel7 // = 7
    case compressionLevel8 // = 8
    case compressionLevel9 // = 9
    public static let bestCompression = compressionLevel9
    case UNRECOGNIZED(Int)

    public init() {
      self = .defaultCompression
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .defaultCompression
      case 1: self = .bestSpeed
      case 2: self = .compressionLevel2
      case 3: self = .compressionLevel3
      case 4: self = .compressionLevel4
      case 5: self = .compressionLevel5
      case 6: self = .compressionLevel6
      case 7: self = .compressionLevel7
      case 8: self = .compressionLevel8
      case 9: self = .compressionLevel9
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .defaultCompression: return 0
      case .bestSpeed: return 1
      case .compressionLevel2: return 2
      case .compressionLevel3: return 3
      case .compressionLevel4: return 4
      case .compressionLevel5: return 5
      case .compressionLevel6: return 6
      case .compressionLevel7: return 7
      case .compressionLevel8: return 8
      case .compressionLevel9: return 9
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _memoryLevel: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
  fileprivate var _windowBits: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
  fileprivate var _chunkSize: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
}

#if swift(>=4.2)

extension Envoy_Extensions_Compression_Gzip_Compressor_V3_Gzip.CompressionStrategy: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Extensions_Compression_Gzip_Compressor_V3_Gzip.CompressionStrategy] = [
    .defaultStrategy,
    .filtered,
    .huffmanOnly,
    .rle,
    .fixed,
  ]
}

extension Envoy_Extensions_Compression_Gzip_Compressor_V3_Gzip.CompressionLevel: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Extensions_Compression_Gzip_Compressor_V3_Gzip.CompressionLevel] = [
    .defaultCompression,
    .bestSpeed,
    .compressionLevel2,
    .compressionLevel3,
    .compressionLevel4,
    .compressionLevel5,
    .compressionLevel6,
    .compressionLevel7,
    .compressionLevel8,
    .compressionLevel9,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.compression.gzip.compressor.v3"

extension Envoy_Extensions_Compression_Gzip_Compressor_V3_Gzip: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Gzip"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "memory_level"),
    2: .standard(proto: "compression_level"),
    3: .standard(proto: "compression_strategy"),
    4: .standard(proto: "window_bits"),
    5: .standard(proto: "chunk_size"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._memoryLevel) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.compressionLevel) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.compressionStrategy) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._windowBits) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._chunkSize) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._memoryLevel {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.compressionLevel != .defaultCompression {
      try visitor.visitSingularEnumField(value: self.compressionLevel, fieldNumber: 2)
    }
    if self.compressionStrategy != .defaultStrategy {
      try visitor.visitSingularEnumField(value: self.compressionStrategy, fieldNumber: 3)
    }
    if let v = self._windowBits {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._chunkSize {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Compression_Gzip_Compressor_V3_Gzip, rhs: Envoy_Extensions_Compression_Gzip_Compressor_V3_Gzip) -> Bool {
    if lhs._memoryLevel != rhs._memoryLevel {return false}
    if lhs.compressionLevel != rhs.compressionLevel {return false}
    if lhs.compressionStrategy != rhs.compressionStrategy {return false}
    if lhs._windowBits != rhs._windowBits {return false}
    if lhs._chunkSize != rhs._chunkSize {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Compression_Gzip_Compressor_V3_Gzip.CompressionStrategy: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DEFAULT_STRATEGY"),
    1: .same(proto: "FILTERED"),
    2: .same(proto: "HUFFMAN_ONLY"),
    3: .same(proto: "RLE"),
    4: .same(proto: "FIXED"),
  ]
}

extension Envoy_Extensions_Compression_Gzip_Compressor_V3_Gzip.CompressionLevel: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DEFAULT_COMPRESSION"),
    1: .aliased(proto: "BEST_SPEED", aliases: ["COMPRESSION_LEVEL_1"]),
    2: .same(proto: "COMPRESSION_LEVEL_2"),
    3: .same(proto: "COMPRESSION_LEVEL_3"),
    4: .same(proto: "COMPRESSION_LEVEL_4"),
    5: .same(proto: "COMPRESSION_LEVEL_5"),
    6: .same(proto: "COMPRESSION_LEVEL_6"),
    7: .same(proto: "COMPRESSION_LEVEL_7"),
    8: .same(proto: "COMPRESSION_LEVEL_8"),
    9: .aliased(proto: "COMPRESSION_LEVEL_9", aliases: ["BEST_COMPRESSION"]),
  ]
}
