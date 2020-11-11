// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/monitoring/dashboard/v1/xychart.proto
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

/// A chart that displays data on a 2D (X and Y axes) plane.
public struct Google_Monitoring_Dashboard_V1_XyChart {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The data displayed in this chart.
  public var dataSets: [Google_Monitoring_Dashboard_V1_XyChart.DataSet] = []

  /// The duration used to display a comparison chart. A comparison chart
  /// simultaneously shows values from two similar-length time periods
  /// (e.g., week-over-week metrics).
  /// The duration must be positive, and it can only be applied to charts with
  /// data sets of LINE plot type.
  public var timeshiftDuration: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _timeshiftDuration ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_timeshiftDuration = newValue}
  }
  /// Returns true if `timeshiftDuration` has been explicitly set.
  public var hasTimeshiftDuration: Bool {return self._timeshiftDuration != nil}
  /// Clears the value of `timeshiftDuration`. Subsequent reads from it will return its default value.
  public mutating func clearTimeshiftDuration() {self._timeshiftDuration = nil}

  /// Threshold lines drawn horizontally across the chart.
  public var thresholds: [Google_Monitoring_Dashboard_V1_Threshold] = []

  /// The properties applied to the X axis.
  public var xAxis: Google_Monitoring_Dashboard_V1_XyChart.Axis {
    get {return _xAxis ?? Google_Monitoring_Dashboard_V1_XyChart.Axis()}
    set {_xAxis = newValue}
  }
  /// Returns true if `xAxis` has been explicitly set.
  public var hasXAxis: Bool {return self._xAxis != nil}
  /// Clears the value of `xAxis`. Subsequent reads from it will return its default value.
  public mutating func clearXAxis() {self._xAxis = nil}

  /// The properties applied to the Y axis.
  public var yAxis: Google_Monitoring_Dashboard_V1_XyChart.Axis {
    get {return _yAxis ?? Google_Monitoring_Dashboard_V1_XyChart.Axis()}
    set {_yAxis = newValue}
  }
  /// Returns true if `yAxis` has been explicitly set.
  public var hasYAxis: Bool {return self._yAxis != nil}
  /// Clears the value of `yAxis`. Subsequent reads from it will return its default value.
  public mutating func clearYAxis() {self._yAxis = nil}

  /// Display options for the chart.
  public var chartOptions: Google_Monitoring_Dashboard_V1_ChartOptions {
    get {return _chartOptions ?? Google_Monitoring_Dashboard_V1_ChartOptions()}
    set {_chartOptions = newValue}
  }
  /// Returns true if `chartOptions` has been explicitly set.
  public var hasChartOptions: Bool {return self._chartOptions != nil}
  /// Clears the value of `chartOptions`. Subsequent reads from it will return its default value.
  public mutating func clearChartOptions() {self._chartOptions = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Groups a time series query definition with charting options.
  public struct DataSet {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Required. Fields for querying time series data from the
    /// Stackdriver metrics API.
    public var timeSeriesQuery: Google_Monitoring_Dashboard_V1_TimeSeriesQuery {
      get {return _storage._timeSeriesQuery ?? Google_Monitoring_Dashboard_V1_TimeSeriesQuery()}
      set {_uniqueStorage()._timeSeriesQuery = newValue}
    }
    /// Returns true if `timeSeriesQuery` has been explicitly set.
    public var hasTimeSeriesQuery: Bool {return _storage._timeSeriesQuery != nil}
    /// Clears the value of `timeSeriesQuery`. Subsequent reads from it will return its default value.
    public mutating func clearTimeSeriesQuery() {_uniqueStorage()._timeSeriesQuery = nil}

    /// How this data should be plotted on the chart.
    public var plotType: Google_Monitoring_Dashboard_V1_XyChart.DataSet.PlotType {
      get {return _storage._plotType}
      set {_uniqueStorage()._plotType = newValue}
    }

    /// A template string for naming `TimeSeries` in the resulting data set.
    /// This should be a string with interpolations of the form `${label_name}`,
    /// which will resolve to the label's value.
    public var legendTemplate: String {
      get {return _storage._legendTemplate}
      set {_uniqueStorage()._legendTemplate = newValue}
    }

    /// Optional. The lower bound on data point frequency for this data set, implemented by
    /// specifying the minimum alignment period to use in a time series query
    /// For example, if the data is published once every 10 minutes, the
    /// `min_alignment_period` should be at least 10 minutes. It would not
    /// make sense to fetch and align data at one minute intervals.
    public var minAlignmentPeriod: SwiftProtobuf.Google_Protobuf_Duration {
      get {return _storage._minAlignmentPeriod ?? SwiftProtobuf.Google_Protobuf_Duration()}
      set {_uniqueStorage()._minAlignmentPeriod = newValue}
    }
    /// Returns true if `minAlignmentPeriod` has been explicitly set.
    public var hasMinAlignmentPeriod: Bool {return _storage._minAlignmentPeriod != nil}
    /// Clears the value of `minAlignmentPeriod`. Subsequent reads from it will return its default value.
    public mutating func clearMinAlignmentPeriod() {_uniqueStorage()._minAlignmentPeriod = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    /// The types of plotting strategies for data sets.
    public enum PlotType: SwiftProtobuf.Enum {
      public typealias RawValue = Int

      /// Plot type is unspecified. The view will default to `LINE`.
      case unspecified // = 0

      /// The data is plotted as a set of lines (one line per series).
      case line // = 1

      /// The data is plotted as a set of filled areas (one area per series),
      /// with the areas stacked vertically (the base of each area is the top of
      /// its predecessor, and the base of the first area is the X axis). Since
      /// the areas do not overlap, each is filled with a different opaque color.
      case stackedArea // = 2

      /// The data is plotted as a set of rectangular boxes (one box per series),
      /// with the boxes stacked vertically (the base of each box is the top of
      /// its predecessor, and the base of the first box is the X axis). Since
      /// the boxes do not overlap, each is filled with a different opaque color.
      case stackedBar // = 3

      /// The data is plotted as a heatmap. The series being plotted must have a
      /// `DISTRIBUTION` value type. The value of each bucket in the distribution
      /// is displayed as a color. This type is not currently available in the
      /// Stackdriver Monitoring application.
      case heatmap // = 4
      case UNRECOGNIZED(Int)

      public init() {
        self = .unspecified
      }

      public init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .unspecified
        case 1: self = .line
        case 2: self = .stackedArea
        case 3: self = .stackedBar
        case 4: self = .heatmap
        default: self = .UNRECOGNIZED(rawValue)
        }
      }

      public var rawValue: Int {
        switch self {
        case .unspecified: return 0
        case .line: return 1
        case .stackedArea: return 2
        case .stackedBar: return 3
        case .heatmap: return 4
        case .UNRECOGNIZED(let i): return i
        }
      }

    }

    public init() {}

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  /// A chart axis.
  public struct Axis {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The label of the axis.
    public var label: String = String()

    /// The axis scale. By default, a linear scale is used.
    public var scale: Google_Monitoring_Dashboard_V1_XyChart.Axis.Scale = .unspecified

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    /// Types of scales used in axes.
    public enum Scale: SwiftProtobuf.Enum {
      public typealias RawValue = Int

      /// Scale is unspecified. The view will default to `LINEAR`.
      case unspecified // = 0

      /// Linear scale.
      case linear // = 1

      /// Logarithmic scale (base 10).
      case log10 // = 2
      case UNRECOGNIZED(Int)

      public init() {
        self = .unspecified
      }

      public init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .unspecified
        case 1: self = .linear
        case 2: self = .log10
        default: self = .UNRECOGNIZED(rawValue)
        }
      }

      public var rawValue: Int {
        switch self {
        case .unspecified: return 0
        case .linear: return 1
        case .log10: return 2
        case .UNRECOGNIZED(let i): return i
        }
      }

    }

    public init() {}
  }

  public init() {}

  fileprivate var _timeshiftDuration: SwiftProtobuf.Google_Protobuf_Duration? = nil
  fileprivate var _xAxis: Google_Monitoring_Dashboard_V1_XyChart.Axis? = nil
  fileprivate var _yAxis: Google_Monitoring_Dashboard_V1_XyChart.Axis? = nil
  fileprivate var _chartOptions: Google_Monitoring_Dashboard_V1_ChartOptions? = nil
}

#if swift(>=4.2)

extension Google_Monitoring_Dashboard_V1_XyChart.DataSet.PlotType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Monitoring_Dashboard_V1_XyChart.DataSet.PlotType] = [
    .unspecified,
    .line,
    .stackedArea,
    .stackedBar,
    .heatmap,
  ]
}

extension Google_Monitoring_Dashboard_V1_XyChart.Axis.Scale: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Monitoring_Dashboard_V1_XyChart.Axis.Scale] = [
    .unspecified,
    .linear,
    .log10,
  ]
}

#endif  // swift(>=4.2)

/// Options to control visual rendering of a chart.
public struct Google_Monitoring_Dashboard_V1_ChartOptions {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The chart mode.
  public var mode: Google_Monitoring_Dashboard_V1_ChartOptions.Mode = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Chart mode options.
  public enum Mode: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Mode is unspecified. The view will default to `COLOR`.
    case unspecified // = 0

    /// The chart distinguishes data series using different color. Line
    /// colors may get reused when there are many lines in the chart.
    case color // = 1

    /// The chart uses the Stackdriver x-ray mode, in which each
    /// data set is plotted using the same semi-transparent color.
    case xRay // = 2

    /// The chart displays statistics such as average, median, 95th percentile,
    /// and more.
    case stats // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .color
      case 2: self = .xRay
      case 3: self = .stats
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .color: return 1
      case .xRay: return 2
      case .stats: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Monitoring_Dashboard_V1_ChartOptions.Mode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Monitoring_Dashboard_V1_ChartOptions.Mode] = [
    .unspecified,
    .color,
    .xRay,
    .stats,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.monitoring.dashboard.v1"

extension Google_Monitoring_Dashboard_V1_XyChart: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".XyChart"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "data_sets"),
    4: .standard(proto: "timeshift_duration"),
    5: .same(proto: "thresholds"),
    6: .standard(proto: "x_axis"),
    7: .standard(proto: "y_axis"),
    8: .standard(proto: "chart_options"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.dataSets) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._timeshiftDuration) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.thresholds) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._xAxis) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._yAxis) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._chartOptions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.dataSets.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.dataSets, fieldNumber: 1)
    }
    if let v = self._timeshiftDuration {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if !self.thresholds.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.thresholds, fieldNumber: 5)
    }
    if let v = self._xAxis {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if let v = self._yAxis {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    if let v = self._chartOptions {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Monitoring_Dashboard_V1_XyChart, rhs: Google_Monitoring_Dashboard_V1_XyChart) -> Bool {
    if lhs.dataSets != rhs.dataSets {return false}
    if lhs._timeshiftDuration != rhs._timeshiftDuration {return false}
    if lhs.thresholds != rhs.thresholds {return false}
    if lhs._xAxis != rhs._xAxis {return false}
    if lhs._yAxis != rhs._yAxis {return false}
    if lhs._chartOptions != rhs._chartOptions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Monitoring_Dashboard_V1_XyChart.DataSet: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Monitoring_Dashboard_V1_XyChart.protoMessageName + ".DataSet"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "time_series_query"),
    2: .standard(proto: "plot_type"),
    3: .standard(proto: "legend_template"),
    4: .standard(proto: "min_alignment_period"),
  ]

  fileprivate class _StorageClass {
    var _timeSeriesQuery: Google_Monitoring_Dashboard_V1_TimeSeriesQuery? = nil
    var _plotType: Google_Monitoring_Dashboard_V1_XyChart.DataSet.PlotType = .unspecified
    var _legendTemplate: String = String()
    var _minAlignmentPeriod: SwiftProtobuf.Google_Protobuf_Duration? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _timeSeriesQuery = source._timeSeriesQuery
      _plotType = source._plotType
      _legendTemplate = source._legendTemplate
      _minAlignmentPeriod = source._minAlignmentPeriod
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
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._timeSeriesQuery) }()
        case 2: try { try decoder.decodeSingularEnumField(value: &_storage._plotType) }()
        case 3: try { try decoder.decodeSingularStringField(value: &_storage._legendTemplate) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._minAlignmentPeriod) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._timeSeriesQuery {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._plotType != .unspecified {
        try visitor.visitSingularEnumField(value: _storage._plotType, fieldNumber: 2)
      }
      if !_storage._legendTemplate.isEmpty {
        try visitor.visitSingularStringField(value: _storage._legendTemplate, fieldNumber: 3)
      }
      if let v = _storage._minAlignmentPeriod {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Monitoring_Dashboard_V1_XyChart.DataSet, rhs: Google_Monitoring_Dashboard_V1_XyChart.DataSet) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._timeSeriesQuery != rhs_storage._timeSeriesQuery {return false}
        if _storage._plotType != rhs_storage._plotType {return false}
        if _storage._legendTemplate != rhs_storage._legendTemplate {return false}
        if _storage._minAlignmentPeriod != rhs_storage._minAlignmentPeriod {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Monitoring_Dashboard_V1_XyChart.DataSet.PlotType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PLOT_TYPE_UNSPECIFIED"),
    1: .same(proto: "LINE"),
    2: .same(proto: "STACKED_AREA"),
    3: .same(proto: "STACKED_BAR"),
    4: .same(proto: "HEATMAP"),
  ]
}

extension Google_Monitoring_Dashboard_V1_XyChart.Axis: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Monitoring_Dashboard_V1_XyChart.protoMessageName + ".Axis"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "label"),
    2: .same(proto: "scale"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.label) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.scale) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.label.isEmpty {
      try visitor.visitSingularStringField(value: self.label, fieldNumber: 1)
    }
    if self.scale != .unspecified {
      try visitor.visitSingularEnumField(value: self.scale, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Monitoring_Dashboard_V1_XyChart.Axis, rhs: Google_Monitoring_Dashboard_V1_XyChart.Axis) -> Bool {
    if lhs.label != rhs.label {return false}
    if lhs.scale != rhs.scale {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Monitoring_Dashboard_V1_XyChart.Axis.Scale: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SCALE_UNSPECIFIED"),
    1: .same(proto: "LINEAR"),
    2: .same(proto: "LOG10"),
  ]
}

extension Google_Monitoring_Dashboard_V1_ChartOptions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ChartOptions"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "mode"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.mode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.mode != .unspecified {
      try visitor.visitSingularEnumField(value: self.mode, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Monitoring_Dashboard_V1_ChartOptions, rhs: Google_Monitoring_Dashboard_V1_ChartOptions) -> Bool {
    if lhs.mode != rhs.mode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Monitoring_Dashboard_V1_ChartOptions.Mode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "MODE_UNSPECIFIED"),
    1: .same(proto: "COLOR"),
    2: .same(proto: "X_RAY"),
    3: .same(proto: "STATS"),
  ]
}
