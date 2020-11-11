// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/streetview/publish/v1/resources.proto
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

/// Upload reference for media files.
public struct Google_Streetview_Publish_V1_UploadRef {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. An upload reference should be unique for each user. It follows
  /// the form:
  /// "https://streetviewpublish.googleapis.com/media/user/{account_id}/photo/{upload_reference}"
  public var uploadURL: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Identifier for a [Photo][google.streetview.publish.v1.Photo].
public struct Google_Streetview_Publish_V1_PhotoId {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. A unique identifier for a photo.
  public var id: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Level information containing level number and its corresponding name.
public struct Google_Streetview_Publish_V1_Level {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Floor number, used for ordering. 0 indicates the ground level, 1 indicates
  /// the first level above ground level, -1 indicates the first level under
  /// ground level. Non-integer values are OK.
  public var number: Double = 0

  /// Required. A name assigned to this Level, restricted to 3 characters.
  /// Consider how the elevator buttons would be labeled for this level if there
  /// was an elevator.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Raw pose measurement for an entity.
public struct Google_Streetview_Publish_V1_Pose {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Latitude and longitude pair of the pose, as explained here:
  /// https://cloud.google.com/datastore/docs/reference/rest/Shared.Types/LatLng
  /// When creating a [Photo][google.streetview.publish.v1.Photo], if the
  /// latitude and longitude pair are not provided, the geolocation from the
  /// exif header is used. A latitude and longitude pair not provided in the
  /// photo or exif header causes the create photo process to fail.
  public var latLngPair: Google_Type_LatLng {
    get {return _latLngPair ?? Google_Type_LatLng()}
    set {_latLngPair = newValue}
  }
  /// Returns true if `latLngPair` has been explicitly set.
  public var hasLatLngPair: Bool {return self._latLngPair != nil}
  /// Clears the value of `latLngPair`. Subsequent reads from it will return its default value.
  public mutating func clearLatLngPair() {self._latLngPair = nil}

  /// Altitude of the pose in meters above WGS84 ellipsoid.
  /// NaN indicates an unmeasured quantity.
  public var altitude: Double = 0

  /// Compass heading, measured at the center of the photo in degrees clockwise
  /// from North. Value must be >=0 and <360.
  /// NaN indicates an unmeasured quantity.
  public var heading: Double = 0

  /// Pitch, measured at the center of the photo in degrees. Value must be >=-90
  /// and <= 90. A value of -90 means looking directly down, and a value of 90
  /// means looking directly up.
  /// NaN indicates an unmeasured quantity.
  public var pitch: Double = 0

  /// Roll, measured in degrees. Value must be >= 0 and <360. A value of 0
  /// means level with the horizon.
  /// NaN indicates an unmeasured quantity.
  public var roll: Double = 0

  /// Level (the floor in a building) used to configure vertical navigation.
  public var level: Google_Streetview_Publish_V1_Level {
    get {return _level ?? Google_Streetview_Publish_V1_Level()}
    set {_level = newValue}
  }
  /// Returns true if `level` has been explicitly set.
  public var hasLevel: Bool {return self._level != nil}
  /// Clears the value of `level`. Subsequent reads from it will return its default value.
  public mutating func clearLevel() {self._level = nil}

  /// The estimated horizontal accuracy of this pose in meters with 68%
  /// confidence (one standard deviation). For example, on Android, this value is
  /// available from this method:
  /// https://developer.android.com/reference/android/location/Location#getAccuracy().
  /// Other platforms have different methods of obtaining similar accuracy
  /// estimations.
  public var accuracyMeters: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _latLngPair: Google_Type_LatLng? = nil
  fileprivate var _level: Google_Streetview_Publish_V1_Level? = nil
}

/// Place metadata for an entity.
public struct Google_Streetview_Publish_V1_Place {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Place identifier, as described in
  /// https://developers.google.com/places/place-id.
  public var placeID: String = String()

  /// Output-only. The name of the place, localized to the language_code.
  public var name: String = String()

  /// Output-only. The language_code that the name is localized with. This should
  /// be the language_code specified in the request, but may be a fallback.
  public var languageCode: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A connection is the link from a source photo to a destination photo.
public struct Google_Streetview_Publish_V1_Connection {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The destination of the connection from the containing photo to
  /// another photo.
  public var target: Google_Streetview_Publish_V1_PhotoId {
    get {return _target ?? Google_Streetview_Publish_V1_PhotoId()}
    set {_target = newValue}
  }
  /// Returns true if `target` has been explicitly set.
  public var hasTarget: Bool {return self._target != nil}
  /// Clears the value of `target`. Subsequent reads from it will return its default value.
  public mutating func clearTarget() {self._target = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _target: Google_Streetview_Publish_V1_PhotoId? = nil
}

/// Photo is used to store 360 photos along with photo metadata.
public struct Google_Streetview_Publish_V1_Photo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required when updating a photo. Output only when creating a photo.
  /// Identifier for the photo, which is unique among all photos in
  /// Google.
  public var photoID: Google_Streetview_Publish_V1_PhotoId {
    get {return _storage._photoID ?? Google_Streetview_Publish_V1_PhotoId()}
    set {_uniqueStorage()._photoID = newValue}
  }
  /// Returns true if `photoID` has been explicitly set.
  public var hasPhotoID: Bool {return _storage._photoID != nil}
  /// Clears the value of `photoID`. Subsequent reads from it will return its default value.
  public mutating func clearPhotoID() {_uniqueStorage()._photoID = nil}

  /// Required when creating a photo. Input only. The resource URL where the
  /// photo bytes are uploaded to.
  public var uploadReference: Google_Streetview_Publish_V1_UploadRef {
    get {return _storage._uploadReference ?? Google_Streetview_Publish_V1_UploadRef()}
    set {_uniqueStorage()._uploadReference = newValue}
  }
  /// Returns true if `uploadReference` has been explicitly set.
  public var hasUploadReference: Bool {return _storage._uploadReference != nil}
  /// Clears the value of `uploadReference`. Subsequent reads from it will return its default value.
  public mutating func clearUploadReference() {_uniqueStorage()._uploadReference = nil}

  /// Output only. The download URL for the photo bytes. This field is set only
  /// when
  /// [GetPhotoRequest.view][google.streetview.publish.v1.GetPhotoRequest.view]
  /// is set to
  /// [PhotoView.INCLUDE_DOWNLOAD_URL][google.streetview.publish.v1.PhotoView.INCLUDE_DOWNLOAD_URL].
  public var downloadURL: String {
    get {return _storage._downloadURL}
    set {_uniqueStorage()._downloadURL = newValue}
  }

  /// Output only. The thumbnail URL for showing a preview of the given photo.
  public var thumbnailURL: String {
    get {return _storage._thumbnailURL}
    set {_uniqueStorage()._thumbnailURL = newValue}
  }

  /// Output only. The share link for the photo.
  public var shareLink: String {
    get {return _storage._shareLink}
    set {_uniqueStorage()._shareLink = newValue}
  }

  /// Pose of the photo.
  public var pose: Google_Streetview_Publish_V1_Pose {
    get {return _storage._pose ?? Google_Streetview_Publish_V1_Pose()}
    set {_uniqueStorage()._pose = newValue}
  }
  /// Returns true if `pose` has been explicitly set.
  public var hasPose: Bool {return _storage._pose != nil}
  /// Clears the value of `pose`. Subsequent reads from it will return its default value.
  public mutating func clearPose() {_uniqueStorage()._pose = nil}

  /// Connections to other photos. A connection represents the link from this
  /// photo to another photo.
  public var connections: [Google_Streetview_Publish_V1_Connection] {
    get {return _storage._connections}
    set {_uniqueStorage()._connections = newValue}
  }

  /// Absolute time when the photo was captured.
  /// When the photo has no exif timestamp, this is used to set a timestamp in
  /// the photo metadata.
  public var captureTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._captureTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._captureTime = newValue}
  }
  /// Returns true if `captureTime` has been explicitly set.
  public var hasCaptureTime: Bool {return _storage._captureTime != nil}
  /// Clears the value of `captureTime`. Subsequent reads from it will return its default value.
  public mutating func clearCaptureTime() {_uniqueStorage()._captureTime = nil}

  /// Places where this photo belongs.
  public var places: [Google_Streetview_Publish_V1_Place] {
    get {return _storage._places}
    set {_uniqueStorage()._places = newValue}
  }

  /// Output only. View count of the photo.
  public var viewCount: Int64 {
    get {return _storage._viewCount}
    set {_uniqueStorage()._viewCount = newValue}
  }

  /// Output only. Status of rights transfer on this photo.
  public var transferStatus: Google_Streetview_Publish_V1_Photo.TransferStatus {
    get {return _storage._transferStatus}
    set {_uniqueStorage()._transferStatus = newValue}
  }

  /// Output only. Status in Google Maps, whether this photo was published or
  /// rejected.
  public var mapsPublishStatus: Google_Streetview_Publish_V1_Photo.MapsPublishStatus {
    get {return _storage._mapsPublishStatus}
    set {_uniqueStorage()._mapsPublishStatus = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Status of rights transfer.
  public enum TransferStatus: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// The status of this transfer is unspecified.
    case unknown // = 0

    /// This photo has never been in a transfer.
    case neverTransferred // = 1

    /// This photo transfer has been initiated, but the receiver has not yet
    /// responded.
    case pending // = 2

    /// The photo transfer has been completed, and this photo has been
    /// transferred to the recipient.
    case completed // = 3

    /// The recipient rejected this photo transfer.
    case rejected // = 4

    /// The photo transfer expired before the recipient took any action.
    case expired // = 5

    /// The sender cancelled this photo transfer.
    case cancelled // = 6

    /// The recipient owns this photo due to a rights transfer.
    case receivedViaTransfer // = 7
    case UNRECOGNIZED(Int)

    public init() {
      self = .unknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .neverTransferred
      case 2: self = .pending
      case 3: self = .completed
      case 4: self = .rejected
      case 5: self = .expired
      case 6: self = .cancelled
      case 7: self = .receivedViaTransfer
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .neverTransferred: return 1
      case .pending: return 2
      case .completed: return 3
      case .rejected: return 4
      case .expired: return 5
      case .cancelled: return 6
      case .receivedViaTransfer: return 7
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Publication status of the photo in Google Maps.
  public enum MapsPublishStatus: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// The status of the photo is unknown.
    case unspecifiedMapsPublishStatus // = 0

    /// The photo is published to the public through Google Maps.
    case published // = 1

    /// The photo has been rejected for an unknown reason.
    case rejectedUnknown // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecifiedMapsPublishStatus
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecifiedMapsPublishStatus
      case 1: self = .published
      case 2: self = .rejectedUnknown
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecifiedMapsPublishStatus: return 0
      case .published: return 1
      case .rejectedUnknown: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension Google_Streetview_Publish_V1_Photo.TransferStatus: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Streetview_Publish_V1_Photo.TransferStatus] = [
    .unknown,
    .neverTransferred,
    .pending,
    .completed,
    .rejected,
    .expired,
    .cancelled,
    .receivedViaTransfer,
  ]
}

extension Google_Streetview_Publish_V1_Photo.MapsPublishStatus: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Streetview_Publish_V1_Photo.MapsPublishStatus] = [
    .unspecifiedMapsPublishStatus,
    .published,
    .rejectedUnknown,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.streetview.publish.v1"

extension Google_Streetview_Publish_V1_UploadRef: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UploadRef"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "upload_url"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.uploadURL) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.uploadURL.isEmpty {
      try visitor.visitSingularStringField(value: self.uploadURL, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Streetview_Publish_V1_UploadRef, rhs: Google_Streetview_Publish_V1_UploadRef) -> Bool {
    if lhs.uploadURL != rhs.uploadURL {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Streetview_Publish_V1_PhotoId: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PhotoId"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Streetview_Publish_V1_PhotoId, rhs: Google_Streetview_Publish_V1_PhotoId) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Streetview_Publish_V1_Level: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Level"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "number"),
    2: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.number) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.number != 0 {
      try visitor.visitSingularDoubleField(value: self.number, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Streetview_Publish_V1_Level, rhs: Google_Streetview_Publish_V1_Level) -> Bool {
    if lhs.number != rhs.number {return false}
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Streetview_Publish_V1_Pose: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Pose"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "lat_lng_pair"),
    2: .same(proto: "altitude"),
    3: .same(proto: "heading"),
    4: .same(proto: "pitch"),
    5: .same(proto: "roll"),
    7: .same(proto: "level"),
    9: .standard(proto: "accuracy_meters"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._latLngPair) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.altitude) }()
      case 3: try { try decoder.decodeSingularDoubleField(value: &self.heading) }()
      case 4: try { try decoder.decodeSingularDoubleField(value: &self.pitch) }()
      case 5: try { try decoder.decodeSingularDoubleField(value: &self.roll) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._level) }()
      case 9: try { try decoder.decodeSingularFloatField(value: &self.accuracyMeters) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._latLngPair {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.altitude != 0 {
      try visitor.visitSingularDoubleField(value: self.altitude, fieldNumber: 2)
    }
    if self.heading != 0 {
      try visitor.visitSingularDoubleField(value: self.heading, fieldNumber: 3)
    }
    if self.pitch != 0 {
      try visitor.visitSingularDoubleField(value: self.pitch, fieldNumber: 4)
    }
    if self.roll != 0 {
      try visitor.visitSingularDoubleField(value: self.roll, fieldNumber: 5)
    }
    if let v = self._level {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    if self.accuracyMeters != 0 {
      try visitor.visitSingularFloatField(value: self.accuracyMeters, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Streetview_Publish_V1_Pose, rhs: Google_Streetview_Publish_V1_Pose) -> Bool {
    if lhs._latLngPair != rhs._latLngPair {return false}
    if lhs.altitude != rhs.altitude {return false}
    if lhs.heading != rhs.heading {return false}
    if lhs.pitch != rhs.pitch {return false}
    if lhs.roll != rhs.roll {return false}
    if lhs._level != rhs._level {return false}
    if lhs.accuracyMeters != rhs.accuracyMeters {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Streetview_Publish_V1_Place: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Place"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "place_id"),
    2: .same(proto: "name"),
    3: .standard(proto: "language_code"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.placeID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.languageCode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.placeID.isEmpty {
      try visitor.visitSingularStringField(value: self.placeID, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.languageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.languageCode, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Streetview_Publish_V1_Place, rhs: Google_Streetview_Publish_V1_Place) -> Bool {
    if lhs.placeID != rhs.placeID {return false}
    if lhs.name != rhs.name {return false}
    if lhs.languageCode != rhs.languageCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Streetview_Publish_V1_Connection: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Connection"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "target"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._target) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._target {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Streetview_Publish_V1_Connection, rhs: Google_Streetview_Publish_V1_Connection) -> Bool {
    if lhs._target != rhs._target {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Streetview_Publish_V1_Photo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Photo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "photo_id"),
    2: .standard(proto: "upload_reference"),
    3: .standard(proto: "download_url"),
    9: .standard(proto: "thumbnail_url"),
    11: .standard(proto: "share_link"),
    4: .same(proto: "pose"),
    5: .same(proto: "connections"),
    6: .standard(proto: "capture_time"),
    7: .same(proto: "places"),
    10: .standard(proto: "view_count"),
    12: .standard(proto: "transfer_status"),
    13: .standard(proto: "maps_publish_status"),
  ]

  fileprivate class _StorageClass {
    var _photoID: Google_Streetview_Publish_V1_PhotoId? = nil
    var _uploadReference: Google_Streetview_Publish_V1_UploadRef? = nil
    var _downloadURL: String = String()
    var _thumbnailURL: String = String()
    var _shareLink: String = String()
    var _pose: Google_Streetview_Publish_V1_Pose? = nil
    var _connections: [Google_Streetview_Publish_V1_Connection] = []
    var _captureTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _places: [Google_Streetview_Publish_V1_Place] = []
    var _viewCount: Int64 = 0
    var _transferStatus: Google_Streetview_Publish_V1_Photo.TransferStatus = .unknown
    var _mapsPublishStatus: Google_Streetview_Publish_V1_Photo.MapsPublishStatus = .unspecifiedMapsPublishStatus

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _photoID = source._photoID
      _uploadReference = source._uploadReference
      _downloadURL = source._downloadURL
      _thumbnailURL = source._thumbnailURL
      _shareLink = source._shareLink
      _pose = source._pose
      _connections = source._connections
      _captureTime = source._captureTime
      _places = source._places
      _viewCount = source._viewCount
      _transferStatus = source._transferStatus
      _mapsPublishStatus = source._mapsPublishStatus
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._photoID) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._uploadReference) }()
        case 3: try { try decoder.decodeSingularStringField(value: &_storage._downloadURL) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._pose) }()
        case 5: try { try decoder.decodeRepeatedMessageField(value: &_storage._connections) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._captureTime) }()
        case 7: try { try decoder.decodeRepeatedMessageField(value: &_storage._places) }()
        case 9: try { try decoder.decodeSingularStringField(value: &_storage._thumbnailURL) }()
        case 10: try { try decoder.decodeSingularInt64Field(value: &_storage._viewCount) }()
        case 11: try { try decoder.decodeSingularStringField(value: &_storage._shareLink) }()
        case 12: try { try decoder.decodeSingularEnumField(value: &_storage._transferStatus) }()
        case 13: try { try decoder.decodeSingularEnumField(value: &_storage._mapsPublishStatus) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._photoID {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._uploadReference {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._downloadURL.isEmpty {
        try visitor.visitSingularStringField(value: _storage._downloadURL, fieldNumber: 3)
      }
      if let v = _storage._pose {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if !_storage._connections.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._connections, fieldNumber: 5)
      }
      if let v = _storage._captureTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if !_storage._places.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._places, fieldNumber: 7)
      }
      if !_storage._thumbnailURL.isEmpty {
        try visitor.visitSingularStringField(value: _storage._thumbnailURL, fieldNumber: 9)
      }
      if _storage._viewCount != 0 {
        try visitor.visitSingularInt64Field(value: _storage._viewCount, fieldNumber: 10)
      }
      if !_storage._shareLink.isEmpty {
        try visitor.visitSingularStringField(value: _storage._shareLink, fieldNumber: 11)
      }
      if _storage._transferStatus != .unknown {
        try visitor.visitSingularEnumField(value: _storage._transferStatus, fieldNumber: 12)
      }
      if _storage._mapsPublishStatus != .unspecifiedMapsPublishStatus {
        try visitor.visitSingularEnumField(value: _storage._mapsPublishStatus, fieldNumber: 13)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Streetview_Publish_V1_Photo, rhs: Google_Streetview_Publish_V1_Photo) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._photoID != rhs_storage._photoID {return false}
        if _storage._uploadReference != rhs_storage._uploadReference {return false}
        if _storage._downloadURL != rhs_storage._downloadURL {return false}
        if _storage._thumbnailURL != rhs_storage._thumbnailURL {return false}
        if _storage._shareLink != rhs_storage._shareLink {return false}
        if _storage._pose != rhs_storage._pose {return false}
        if _storage._connections != rhs_storage._connections {return false}
        if _storage._captureTime != rhs_storage._captureTime {return false}
        if _storage._places != rhs_storage._places {return false}
        if _storage._viewCount != rhs_storage._viewCount {return false}
        if _storage._transferStatus != rhs_storage._transferStatus {return false}
        if _storage._mapsPublishStatus != rhs_storage._mapsPublishStatus {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Streetview_Publish_V1_Photo.TransferStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TRANSFER_STATUS_UNKNOWN"),
    1: .same(proto: "NEVER_TRANSFERRED"),
    2: .same(proto: "PENDING"),
    3: .same(proto: "COMPLETED"),
    4: .same(proto: "REJECTED"),
    5: .same(proto: "EXPIRED"),
    6: .same(proto: "CANCELLED"),
    7: .same(proto: "RECEIVED_VIA_TRANSFER"),
  ]
}

extension Google_Streetview_Publish_V1_Photo.MapsPublishStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED_MAPS_PUBLISH_STATUS"),
    1: .same(proto: "PUBLISHED"),
    2: .same(proto: "REJECTED_UNKNOWN"),
  ]
}
