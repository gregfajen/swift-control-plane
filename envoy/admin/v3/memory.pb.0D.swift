// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/admin/v3/memory.proto
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

/// Proto representation of the internal memory consumption of an Envoy instance. These represent
/// values extracted from an internal TCMalloc instance. For more information, see the section of the
/// docs entitled ["Generic Tcmalloc Status"](https://gperftools.github.io/gperftools/tcmalloc.html).
/// [#next-free-field: 7]
public struct Envoy_Admin_V3_Memory {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The number of bytes allocated by the heap for Envoy. This is an alias for
  /// `generic.current_allocated_bytes`.
  public var allocated: UInt64 = 0

  /// The number of bytes reserved by the heap but not necessarily allocated. This is an alias for
  /// `generic.heap_size`.
  public var heapSize: UInt64 = 0

  /// The number of bytes in free, unmapped pages in the page heap. These bytes always count towards
  /// virtual memory usage, and depending on the OS, typically do not count towards physical memory
  /// usage. This is an alias for `tcmalloc.pageheap_unmapped_bytes`.
  public var pageheapUnmapped: UInt64 = 0

  /// The number of bytes in free, mapped pages in the page heap. These bytes always count towards
  /// virtual memory usage, and unless the underlying memory is swapped out by the OS, they also
  /// count towards physical memory usage. This is an alias for `tcmalloc.pageheap_free_bytes`.
  public var pageheapFree: UInt64 = 0

  /// The amount of memory used by the TCMalloc thread caches (for small objects). This is an alias
  /// for `tcmalloc.current_total_thread_cache_bytes`.
  public var totalThreadCache: UInt64 = 0

  /// The number of bytes of the physical memory usage by the allocator. This is an alias for
  /// `generic.total_physical_bytes`.
  public var totalPhysicalBytes: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.admin.v3"

extension Envoy_Admin_V3_Memory: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Memory"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "allocated"),
    2: .standard(proto: "heap_size"),
    3: .standard(proto: "pageheap_unmapped"),
    4: .standard(proto: "pageheap_free"),
    5: .standard(proto: "total_thread_cache"),
    6: .standard(proto: "total_physical_bytes"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.allocated)
      case 2: try decoder.decodeSingularUInt64Field(value: &self.heapSize)
      case 3: try decoder.decodeSingularUInt64Field(value: &self.pageheapUnmapped)
      case 4: try decoder.decodeSingularUInt64Field(value: &self.pageheapFree)
      case 5: try decoder.decodeSingularUInt64Field(value: &self.totalThreadCache)
      case 6: try decoder.decodeSingularUInt64Field(value: &self.totalPhysicalBytes)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.allocated != 0 {
      try visitor.visitSingularUInt64Field(value: self.allocated, fieldNumber: 1)
    }
    if self.heapSize != 0 {
      try visitor.visitSingularUInt64Field(value: self.heapSize, fieldNumber: 2)
    }
    if self.pageheapUnmapped != 0 {
      try visitor.visitSingularUInt64Field(value: self.pageheapUnmapped, fieldNumber: 3)
    }
    if self.pageheapFree != 0 {
      try visitor.visitSingularUInt64Field(value: self.pageheapFree, fieldNumber: 4)
    }
    if self.totalThreadCache != 0 {
      try visitor.visitSingularUInt64Field(value: self.totalThreadCache, fieldNumber: 5)
    }
    if self.totalPhysicalBytes != 0 {
      try visitor.visitSingularUInt64Field(value: self.totalPhysicalBytes, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Admin_V3_Memory, rhs: Envoy_Admin_V3_Memory) -> Bool {
    if lhs.allocated != rhs.allocated {return false}
    if lhs.heapSize != rhs.heapSize {return false}
    if lhs.pageheapUnmapped != rhs.pageheapUnmapped {return false}
    if lhs.pageheapFree != rhs.pageheapFree {return false}
    if lhs.totalThreadCache != rhs.totalThreadCache {return false}
    if lhs.totalPhysicalBytes != rhs.totalPhysicalBytes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}