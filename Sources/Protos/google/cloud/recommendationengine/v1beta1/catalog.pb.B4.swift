// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/recommendationengine/v1beta1/catalog.proto
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

/// CatalogItem captures all metadata information of items to be recommended.
public struct Google_Cloud_Recommendationengine_V1beta1_CatalogItem {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Catalog item identifier. UTF-8 encoded string with a length limit
  /// of 128 bytes.
  ///
  /// This id must be unique among all catalog items within the same catalog. It
  /// should also be used when logging user events in order for the user events
  /// to be joined with the Catalog.
  public var id: String {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  /// Required. Catalog item categories. This field is repeated for supporting
  /// one catalog item belonging to several parallel category hierarchies.
  ///
  /// For example, if a shoes product belongs to both
  /// ["Shoes & Accessories" -> "Shoes"] and
  /// ["Sports & Fitness" -> "Athletic Clothing" -> "Shoes"], it could be
  /// represented as:
  ///
  ///      "categoryHierarchies": [
  ///        { "categories": ["Shoes & Accessories", "Shoes"]},
  ///        { "categories": ["Sports & Fitness", "Athletic Clothing", "Shoes"] }
  ///      ]
  public var categoryHierarchies: [Google_Cloud_Recommendationengine_V1beta1_CatalogItem.CategoryHierarchy] {
    get {return _storage._categoryHierarchies}
    set {_uniqueStorage()._categoryHierarchies = newValue}
  }

  /// Required. Catalog item title. UTF-8 encoded string with a length limit of 1
  /// KiB.
  public var title: String {
    get {return _storage._title}
    set {_uniqueStorage()._title = newValue}
  }

  /// Optional. Catalog item description. UTF-8 encoded string with a length
  /// limit of 5 KiB.
  public var description_p: String {
    get {return _storage._description_p}
    set {_uniqueStorage()._description_p = newValue}
  }

  /// Optional. Highly encouraged. Extra catalog item attributes to be
  /// included in the recommendation model. For example, for retail products,
  /// this could include the store name, vendor, style, color, etc. These are
  /// very strong signals for recommendation model, thus we highly recommend
  /// providing the item attributes here.
  public var itemAttributes: Google_Cloud_Recommendationengine_V1beta1_FeatureMap {
    get {return _storage._itemAttributes ?? Google_Cloud_Recommendationengine_V1beta1_FeatureMap()}
    set {_uniqueStorage()._itemAttributes = newValue}
  }
  /// Returns true if `itemAttributes` has been explicitly set.
  public var hasItemAttributes: Bool {return _storage._itemAttributes != nil}
  /// Clears the value of `itemAttributes`. Subsequent reads from it will return its default value.
  public mutating func clearItemAttributes() {_uniqueStorage()._itemAttributes = nil}

  /// Optional. Language of the title/description/item_attributes. Use language
  /// tags defined by BCP 47. https://www.rfc-editor.org/rfc/bcp/bcp47.txt. Our
  /// supported language codes include 'en', 'es', 'fr', 'de', 'ar', 'fa', 'zh',
  /// 'ja', 'ko', 'sv', 'ro', 'nl'. For other languages, contact
  /// your Google account manager.
  public var languageCode: String {
    get {return _storage._languageCode}
    set {_uniqueStorage()._languageCode = newValue}
  }

  /// Optional. Filtering tags associated with the catalog item. Each tag should
  /// be a UTF-8 encoded string with a length limit of 1 KiB.
  ///
  /// This tag can be used for filtering recommendation results by passing the
  /// tag as part of the predict request filter.
  public var tags: [String] {
    get {return _storage._tags}
    set {_uniqueStorage()._tags = newValue}
  }

  /// Optional. Variant group identifier for prediction results. UTF-8 encoded
  /// string with a length limit of 128 bytes.
  ///
  /// This field must be enabled before it can be used. [Learn
  /// more](/recommendations-ai/docs/catalog#item-group-id).
  public var itemGroupID: String {
    get {return _storage._itemGroupID}
    set {_uniqueStorage()._itemGroupID = newValue}
  }

  /// Extra catalog item metadata for different recommendation types.
  public var recommendationType: OneOf_RecommendationType? {
    get {return _storage._recommendationType}
    set {_uniqueStorage()._recommendationType = newValue}
  }

  /// Optional. Metadata specific to retail products.
  public var productMetadata: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem {
    get {
      if case .productMetadata(let v)? = _storage._recommendationType {return v}
      return Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem()
    }
    set {_uniqueStorage()._recommendationType = .productMetadata(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Extra catalog item metadata for different recommendation types.
  public enum OneOf_RecommendationType: Equatable {
    /// Optional. Metadata specific to retail products.
    case productMetadata(Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Recommendationengine_V1beta1_CatalogItem.OneOf_RecommendationType, rhs: Google_Cloud_Recommendationengine_V1beta1_CatalogItem.OneOf_RecommendationType) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.productMetadata, .productMetadata): return {
        guard case .productMetadata(let l) = lhs, case .productMetadata(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  /// Category represents catalog item category hierarchy.
  public struct CategoryHierarchy {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Required. Catalog item categories. Each category should be a UTF-8
    /// encoded string with a length limit of 2 KiB.
    ///
    /// Note that the order in the list denotes the specificity (from least to
    /// most specific).
    public var categories: [String] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// ProductCatalogItem captures item metadata specific to retail products.
public struct Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Product price. Only one of 'exactPrice'/'priceRange' can be provided.
  public var price: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.OneOf_Price? = nil

  /// Optional. The exact product price.
  public var exactPrice: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.ExactPrice {
    get {
      if case .exactPrice(let v)? = price {return v}
      return Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.ExactPrice()
    }
    set {price = .exactPrice(newValue)}
  }

  /// Optional. The product price range.
  public var priceRange: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.PriceRange {
    get {
      if case .priceRange(let v)? = price {return v}
      return Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.PriceRange()
    }
    set {price = .priceRange(newValue)}
  }

  /// Optional. A map to pass the costs associated with the product.
  ///
  /// For example:
  /// {"manufacturing": 45.5} The profit of selling this item is computed like
  /// so:
  ///
  /// * If 'exactPrice' is provided, profit = displayPrice - sum(costs)
  /// * If 'priceRange' is provided, profit = minPrice - sum(costs)
  public var costs: Dictionary<String,Float> = [:]

  /// Optional. Only required if the price is set. Currency code for price/costs. Use
  /// three-character ISO-4217 code.
  public var currencyCode: String = String()

  /// Optional. Online stock state of the catalog item. Default is `IN_STOCK`.
  public var stockState: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.StockState = .unspecified

  /// Optional. The available quantity of the item.
  public var availableQuantity: Int64 = 0

  /// Optional. Canonical URL directly linking to the item detail page with a
  /// length limit of 5 KiB..
  public var canonicalProductUri: String = String()

  /// Optional. Product images for the catalog item.
  public var images: [Google_Cloud_Recommendationengine_V1beta1_Image] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Product price. Only one of 'exactPrice'/'priceRange' can be provided.
  public enum OneOf_Price: Equatable {
    /// Optional. The exact product price.
    case exactPrice(Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.ExactPrice)
    /// Optional. The product price range.
    case priceRange(Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.PriceRange)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.OneOf_Price, rhs: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.OneOf_Price) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.exactPrice, .exactPrice): return {
        guard case .exactPrice(let l) = lhs, case .exactPrice(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.priceRange, .priceRange): return {
        guard case .priceRange(let l) = lhs, case .priceRange(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  /// Item stock state. If this field is unspecified, the item is
  /// assumed to be in stock.
  public enum StockState: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Default item stock status. Should never be used.
    case unspecified // = 0

    /// Item in stock.
    public static let inStock = unspecified

    /// Item out of stock.
    case outOfStock // = 1

    /// Item that is in pre-order state.
    case preorder // = 2

    /// Item that is back-ordered (i.e. temporarily out of stock).
    case backorder // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .outOfStock
      case 2: self = .preorder
      case 3: self = .backorder
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .outOfStock: return 1
      case .preorder: return 2
      case .backorder: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Exact product price.
  public struct ExactPrice {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Optional. Display price of the product.
    public var displayPrice: Float = 0

    /// Optional. Price of the product without any discount. If zero, by default
    /// set to be the 'displayPrice'.
    public var originalPrice: Float = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// Product price range when there are a range of prices for different
  /// variations of the same product.
  public struct PriceRange {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Required. The minimum product price.
    public var min: Float = 0

    /// Required. The maximum product price.
    public var max: Float = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.StockState: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.StockState] = [
    .unspecified,
    .outOfStock,
    .preorder,
    .backorder,
  ]
}

#endif  // swift(>=4.2)

/// Catalog item thumbnail/detail image.
public struct Google_Cloud_Recommendationengine_V1beta1_Image {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. URL of the image with a length limit of 5 KiB.
  public var uri: String = String()

  /// Optional. Height of the image in number of pixels.
  public var height: Int32 = 0

  /// Optional. Width of the image in number of pixels.
  public var width: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.recommendationengine.v1beta1"

extension Google_Cloud_Recommendationengine_V1beta1_CatalogItem: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CatalogItem"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "category_hierarchies"),
    3: .same(proto: "title"),
    4: .same(proto: "description"),
    5: .standard(proto: "item_attributes"),
    6: .standard(proto: "language_code"),
    8: .same(proto: "tags"),
    9: .standard(proto: "item_group_id"),
    10: .standard(proto: "product_metadata"),
  ]

  fileprivate class _StorageClass {
    var _id: String = String()
    var _categoryHierarchies: [Google_Cloud_Recommendationengine_V1beta1_CatalogItem.CategoryHierarchy] = []
    var _title: String = String()
    var _description_p: String = String()
    var _itemAttributes: Google_Cloud_Recommendationengine_V1beta1_FeatureMap? = nil
    var _languageCode: String = String()
    var _tags: [String] = []
    var _itemGroupID: String = String()
    var _recommendationType: Google_Cloud_Recommendationengine_V1beta1_CatalogItem.OneOf_RecommendationType?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _categoryHierarchies = source._categoryHierarchies
      _title = source._title
      _description_p = source._description_p
      _itemAttributes = source._itemAttributes
      _languageCode = source._languageCode
      _tags = source._tags
      _itemGroupID = source._itemGroupID
      _recommendationType = source._recommendationType
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
        case 1: try { try decoder.decodeSingularStringField(value: &_storage._id) }()
        case 2: try { try decoder.decodeRepeatedMessageField(value: &_storage._categoryHierarchies) }()
        case 3: try { try decoder.decodeSingularStringField(value: &_storage._title) }()
        case 4: try { try decoder.decodeSingularStringField(value: &_storage._description_p) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._itemAttributes) }()
        case 6: try { try decoder.decodeSingularStringField(value: &_storage._languageCode) }()
        case 8: try { try decoder.decodeRepeatedStringField(value: &_storage._tags) }()
        case 9: try { try decoder.decodeSingularStringField(value: &_storage._itemGroupID) }()
        case 10: try {
          var v: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem?
          if let current = _storage._recommendationType {
            try decoder.handleConflictingOneOf()
            if case .productMetadata(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._recommendationType = .productMetadata(v)}
        }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._id.isEmpty {
        try visitor.visitSingularStringField(value: _storage._id, fieldNumber: 1)
      }
      if !_storage._categoryHierarchies.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._categoryHierarchies, fieldNumber: 2)
      }
      if !_storage._title.isEmpty {
        try visitor.visitSingularStringField(value: _storage._title, fieldNumber: 3)
      }
      if !_storage._description_p.isEmpty {
        try visitor.visitSingularStringField(value: _storage._description_p, fieldNumber: 4)
      }
      if let v = _storage._itemAttributes {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if !_storage._languageCode.isEmpty {
        try visitor.visitSingularStringField(value: _storage._languageCode, fieldNumber: 6)
      }
      if !_storage._tags.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._tags, fieldNumber: 8)
      }
      if !_storage._itemGroupID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._itemGroupID, fieldNumber: 9)
      }
      if case .productMetadata(let v)? = _storage._recommendationType {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Recommendationengine_V1beta1_CatalogItem, rhs: Google_Cloud_Recommendationengine_V1beta1_CatalogItem) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._id != rhs_storage._id {return false}
        if _storage._categoryHierarchies != rhs_storage._categoryHierarchies {return false}
        if _storage._title != rhs_storage._title {return false}
        if _storage._description_p != rhs_storage._description_p {return false}
        if _storage._itemAttributes != rhs_storage._itemAttributes {return false}
        if _storage._languageCode != rhs_storage._languageCode {return false}
        if _storage._tags != rhs_storage._tags {return false}
        if _storage._itemGroupID != rhs_storage._itemGroupID {return false}
        if _storage._recommendationType != rhs_storage._recommendationType {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Recommendationengine_V1beta1_CatalogItem.CategoryHierarchy: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Recommendationengine_V1beta1_CatalogItem.protoMessageName + ".CategoryHierarchy"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "categories"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.categories) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.categories.isEmpty {
      try visitor.visitRepeatedStringField(value: self.categories, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Recommendationengine_V1beta1_CatalogItem.CategoryHierarchy, rhs: Google_Cloud_Recommendationengine_V1beta1_CatalogItem.CategoryHierarchy) -> Bool {
    if lhs.categories != rhs.categories {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ProductCatalogItem"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "exact_price"),
    2: .standard(proto: "price_range"),
    3: .same(proto: "costs"),
    4: .standard(proto: "currency_code"),
    5: .standard(proto: "stock_state"),
    6: .standard(proto: "available_quantity"),
    7: .standard(proto: "canonical_product_uri"),
    8: .same(proto: "images"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.ExactPrice?
        if let current = self.price {
          try decoder.handleConflictingOneOf()
          if case .exactPrice(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.price = .exactPrice(v)}
      }()
      case 2: try {
        var v: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.PriceRange?
        if let current = self.price {
          try decoder.handleConflictingOneOf()
          if case .priceRange(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.price = .priceRange(v)}
      }()
      case 3: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufFloat>.self, value: &self.costs) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.currencyCode) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.stockState) }()
      case 6: try { try decoder.decodeSingularInt64Field(value: &self.availableQuantity) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.canonicalProductUri) }()
      case 8: try { try decoder.decodeRepeatedMessageField(value: &self.images) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.price {
    case .exactPrice?: try {
      guard case .exactPrice(let v)? = self.price else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .priceRange?: try {
      guard case .priceRange(let v)? = self.price else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    if !self.costs.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufFloat>.self, value: self.costs, fieldNumber: 3)
    }
    if !self.currencyCode.isEmpty {
      try visitor.visitSingularStringField(value: self.currencyCode, fieldNumber: 4)
    }
    if self.stockState != .unspecified {
      try visitor.visitSingularEnumField(value: self.stockState, fieldNumber: 5)
    }
    if self.availableQuantity != 0 {
      try visitor.visitSingularInt64Field(value: self.availableQuantity, fieldNumber: 6)
    }
    if !self.canonicalProductUri.isEmpty {
      try visitor.visitSingularStringField(value: self.canonicalProductUri, fieldNumber: 7)
    }
    if !self.images.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.images, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem, rhs: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem) -> Bool {
    if lhs.price != rhs.price {return false}
    if lhs.costs != rhs.costs {return false}
    if lhs.currencyCode != rhs.currencyCode {return false}
    if lhs.stockState != rhs.stockState {return false}
    if lhs.availableQuantity != rhs.availableQuantity {return false}
    if lhs.canonicalProductUri != rhs.canonicalProductUri {return false}
    if lhs.images != rhs.images {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.StockState: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .aliased(proto: "STOCK_STATE_UNSPECIFIED", aliases: ["IN_STOCK"]),
    1: .same(proto: "OUT_OF_STOCK"),
    2: .same(proto: "PREORDER"),
    3: .same(proto: "BACKORDER"),
  ]
}

extension Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.ExactPrice: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.protoMessageName + ".ExactPrice"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "display_price"),
    2: .standard(proto: "original_price"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFloatField(value: &self.displayPrice) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.originalPrice) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.displayPrice != 0 {
      try visitor.visitSingularFloatField(value: self.displayPrice, fieldNumber: 1)
    }
    if self.originalPrice != 0 {
      try visitor.visitSingularFloatField(value: self.originalPrice, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.ExactPrice, rhs: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.ExactPrice) -> Bool {
    if lhs.displayPrice != rhs.displayPrice {return false}
    if lhs.originalPrice != rhs.originalPrice {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.PriceRange: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.protoMessageName + ".PriceRange"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "min"),
    2: .same(proto: "max"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFloatField(value: &self.min) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.max) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.min != 0 {
      try visitor.visitSingularFloatField(value: self.min, fieldNumber: 1)
    }
    if self.max != 0 {
      try visitor.visitSingularFloatField(value: self.max, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.PriceRange, rhs: Google_Cloud_Recommendationengine_V1beta1_ProductCatalogItem.PriceRange) -> Bool {
    if lhs.min != rhs.min {return false}
    if lhs.max != rhs.max {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Recommendationengine_V1beta1_Image: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
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

  public static func ==(lhs: Google_Cloud_Recommendationengine_V1beta1_Image, rhs: Google_Cloud_Recommendationengine_V1beta1_Image) -> Bool {
    if lhs.uri != rhs.uri {return false}
    if lhs.height != rhs.height {return false}
    if lhs.width != rhs.width {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
