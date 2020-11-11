// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/retail/v2alpha/common.proto
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

/// A custom attribute that is not explicitly modeled in
/// [Product][google.cloud.retail.v2alpha.Product]].
public struct Google_Cloud_Retail_V2alpha_CustomAttribute {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The textual values of this custom attribute. For example, `["yellow",
  /// "green"]` when the key is "color".
  ///
  /// At most 400 values are allowed. Empty values are not allowed. Each value
  /// must be a UTF-8 encoded string with a length limit of 256 characters.
  /// Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// Exactly one of [text][google.cloud.retail.v2alpha.CustomAttribute.text] or
  /// [numbers][google.cloud.retail.v2alpha.CustomAttribute.numbers] should be
  /// set. Otherwise, a INVALID_ARGUMENT error is returned.
  public var text: [String] = []

  /// The numerical values of this custom attribute. For example, `[2.3, 15.4]`
  /// when the key is "lengths_cm".
  ///
  /// At most 400 values are allowed.Otherwise, an INVALID_ARGUMENT error is
  /// returned.
  ///
  /// Exactly one of [text][google.cloud.retail.v2alpha.CustomAttribute.text] or
  /// [numbers][google.cloud.retail.v2alpha.CustomAttribute.numbers] should be
  /// set. Otherwise, a INVALID_ARGUMENT error is returned.
  public var numbers: [Double] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// [Product][google.cloud.retail.v2alpha.Product] thumbnail/detail image.
public struct Google_Cloud_Retail_V2alpha_Image {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. URI of the image.
  ///
  /// This field must be a valid UTF-8 encoded URI with a length limit of 5,000
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// Google Merchant Center property
  /// [image_link](https://support.google.com/merchants/answer/6324350).
  /// Schema.org property [Product.image](http://schema.org/image).
  public var uri: String = String()

  /// Height of the image in number of pixels.
  ///
  /// This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is
  /// returned.
  public var height: Int32 = 0

  /// Width of the image in number of pixels.
  ///
  /// This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is
  /// returned.
  public var width: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The price information of a [Product][google.cloud.retail.v2alpha.Product].
public struct Google_Cloud_Retail_V2alpha_PriceInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The 3-letter currency code defined in [ISO
  /// 4217][https://www.iso.org/iso-4217-currency-codes.html].
  ///
  /// If this field is an unrecognizable currency code, an INVALID_ARGUMENT
  /// error is returned.
  public var currencyCode: String = String()

  /// Price of the product.
  ///
  /// Google Merchant Center property
  /// [price](https://support.google.com/merchants/answer/6324371).
  /// Schema.org property
  /// [Offer.priceSpecification](https://schema.org/priceSpecification).
  public var price: Float = 0

  /// Price of the product without any discount. If zero, by default set to be
  /// the [price][google.cloud.retail.v2alpha.PriceInfo.price].
  public var originalPrice: Float = 0

  /// The costs associated with the sale of a particular product. Used for gross
  /// profit reporting.
  ///
  /// * Profit = [price][google.cloud.retail.v2alpha.PriceInfo.price] -
  /// [cost][google.cloud.retail.v2alpha.PriceInfo.cost]
  ///
  /// Google Merchant Center property
  /// [cost_of_goods_sold](https://support.google.com/merchants/answer/9017895)
  public var cost: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Information of an end user.
public struct Google_Cloud_Retail_V2alpha_UserInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Highly recommended for logged-in users. Unique identifier for logged-in
  /// user, such as a user name.
  ///
  /// The field must be a UTF-8 encoded string with a length limit of 128
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  public var userID: String = String()

  /// The end user's IP address. This field is used to extract location
  /// information for personalization.
  ///
  /// This field must be either an IPv4 address (e.g. "104.133.9.80") or an IPv6
  /// address (e.g. "2001:0db8:85a3:0000:0000:8a2e:0370:7334"). Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  ///
  /// This should not be set when using the JavaScript tag in
  /// [UserEventService.CollectUserEvent][google.cloud.retail.v2alpha.UserEventService.CollectUserEvent]
  /// or if
  /// [direct_user_request][google.cloud.retail.v2alpha.UserInfo.direct_user_request]
  /// is set. Otherwise, a FAILED_PRECONDITION error is returned.
  public var ipAddress: String = String()

  /// User agent as included in the HTTP header.
  ///
  /// The field must be a UTF-8 encoded string with a length limit of 1,000
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// This should not be set when using the client side event reporting with
  /// GTM or JavaScript tag in
  /// [UserEventService.CollectUserEvent][google.cloud.retail.v2alpha.UserEventService.CollectUserEvent]
  /// or if
  /// [direct_user_request][google.cloud.retail.v2alpha.UserInfo.direct_user_request]
  /// is set. Otherwise, a FAILED_PRECONDITION error is returned.
  public var userAgent: String = String()

  /// True if the request is made directly from the end user, in which case the
  /// [ip_address][google.cloud.retail.v2alpha.UserInfo.ip_address] and
  /// [user_agent][google.cloud.retail.v2alpha.UserInfo.user_agent] can be
  /// populated from the HTTP request. This flag should be set only if the API
  /// request is made directly from the end user such as a mobile app (and not if
  /// a gateway or a server is processing and pushing the user events).
  ///
  /// This should not be set when using the JavaScript tag in
  /// [UserEventService.CollectUserEvent][google.cloud.retail.v2alpha.UserEventService.CollectUserEvent].
  /// Otherwise, a FAILED_PRECONDITION error is returned.
  public var directUserRequest: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.retail.v2alpha"

extension Google_Cloud_Retail_V2alpha_CustomAttribute: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CustomAttribute"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "text"),
    2: .same(proto: "numbers"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.text) }()
      case 2: try { try decoder.decodeRepeatedDoubleField(value: &self.numbers) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.text.isEmpty {
      try visitor.visitRepeatedStringField(value: self.text, fieldNumber: 1)
    }
    if !self.numbers.isEmpty {
      try visitor.visitPackedDoubleField(value: self.numbers, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2alpha_CustomAttribute, rhs: Google_Cloud_Retail_V2alpha_CustomAttribute) -> Bool {
    if lhs.text != rhs.text {return false}
    if lhs.numbers != rhs.numbers {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Retail_V2alpha_Image: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Image"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uri"),
    2: .same(proto: "height"),
    3: .same(proto: "width"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.uri) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.height) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.width) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.uri.isEmpty {
      try visitor.visitSingularStringField(value: self.uri, fieldNumber: 1)
    }
    if self.height != 0 {
      try visitor.visitSingularInt32Field(value: self.height, fieldNumber: 2)
    }
    if self.width != 0 {
      try visitor.visitSingularInt32Field(value: self.width, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2alpha_Image, rhs: Google_Cloud_Retail_V2alpha_Image) -> Bool {
    if lhs.uri != rhs.uri {return false}
    if lhs.height != rhs.height {return false}
    if lhs.width != rhs.width {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Retail_V2alpha_PriceInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PriceInfo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "currency_code"),
    2: .same(proto: "price"),
    3: .standard(proto: "original_price"),
    4: .same(proto: "cost"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.currencyCode) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.price) }()
      case 3: try { try decoder.decodeSingularFloatField(value: &self.originalPrice) }()
      case 4: try { try decoder.decodeSingularFloatField(value: &self.cost) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.currencyCode.isEmpty {
      try visitor.visitSingularStringField(value: self.currencyCode, fieldNumber: 1)
    }
    if self.price != 0 {
      try visitor.visitSingularFloatField(value: self.price, fieldNumber: 2)
    }
    if self.originalPrice != 0 {
      try visitor.visitSingularFloatField(value: self.originalPrice, fieldNumber: 3)
    }
    if self.cost != 0 {
      try visitor.visitSingularFloatField(value: self.cost, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2alpha_PriceInfo, rhs: Google_Cloud_Retail_V2alpha_PriceInfo) -> Bool {
    if lhs.currencyCode != rhs.currencyCode {return false}
    if lhs.price != rhs.price {return false}
    if lhs.originalPrice != rhs.originalPrice {return false}
    if lhs.cost != rhs.cost {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Retail_V2alpha_UserInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UserInfo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_id"),
    2: .standard(proto: "ip_address"),
    3: .standard(proto: "user_agent"),
    4: .standard(proto: "direct_user_request"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.userID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.ipAddress) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.userAgent) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.directUserRequest) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.userID.isEmpty {
      try visitor.visitSingularStringField(value: self.userID, fieldNumber: 1)
    }
    if !self.ipAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.ipAddress, fieldNumber: 2)
    }
    if !self.userAgent.isEmpty {
      try visitor.visitSingularStringField(value: self.userAgent, fieldNumber: 3)
    }
    if self.directUserRequest != false {
      try visitor.visitSingularBoolField(value: self.directUserRequest, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2alpha_UserInfo, rhs: Google_Cloud_Retail_V2alpha_UserInfo) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs.ipAddress != rhs.ipAddress {return false}
    if lhs.userAgent != rhs.userAgent {return false}
    if lhs.directUserRequest != rhs.directUserRequest {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
