//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/bigquery/datatransfer/v1/datatransfer.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
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
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate Google_Cloud_Bigquery_Datatransfer_V1_DataTransferServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Bigquery_Datatransfer_V1_DataTransferServiceClientProtocol: GRPCClient {
  func getDataSource(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_GetDataSourceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_GetDataSourceRequest, Google_Cloud_Bigquery_Datatransfer_V1_DataSource>

  func listDataSources(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_ListDataSourcesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_ListDataSourcesRequest, Google_Cloud_Bigquery_Datatransfer_V1_ListDataSourcesResponse>

  func createTransferConfig(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_CreateTransferConfigRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_CreateTransferConfigRequest, Google_Cloud_Bigquery_Datatransfer_V1_TransferConfig>

  func updateTransferConfig(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_UpdateTransferConfigRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_UpdateTransferConfigRequest, Google_Cloud_Bigquery_Datatransfer_V1_TransferConfig>

  func deleteTransferConfig(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_DeleteTransferConfigRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_DeleteTransferConfigRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func getTransferConfig(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_GetTransferConfigRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_GetTransferConfigRequest, Google_Cloud_Bigquery_Datatransfer_V1_TransferConfig>

  func listTransferConfigs(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_ListTransferConfigsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_ListTransferConfigsRequest, Google_Cloud_Bigquery_Datatransfer_V1_ListTransferConfigsResponse>

  func scheduleTransferRuns(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_ScheduleTransferRunsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_ScheduleTransferRunsRequest, Google_Cloud_Bigquery_Datatransfer_V1_ScheduleTransferRunsResponse>

  func startManualTransferRuns(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_StartManualTransferRunsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_StartManualTransferRunsRequest, Google_Cloud_Bigquery_Datatransfer_V1_StartManualTransferRunsResponse>

  func getTransferRun(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_GetTransferRunRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_GetTransferRunRequest, Google_Cloud_Bigquery_Datatransfer_V1_TransferRun>

  func deleteTransferRun(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_DeleteTransferRunRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_DeleteTransferRunRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func listTransferRuns(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_ListTransferRunsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_ListTransferRunsRequest, Google_Cloud_Bigquery_Datatransfer_V1_ListTransferRunsResponse>

  func listTransferLogs(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_ListTransferLogsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_ListTransferLogsRequest, Google_Cloud_Bigquery_Datatransfer_V1_ListTransferLogsResponse>

  func checkValidCreds(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_CheckValidCredsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_CheckValidCredsRequest, Google_Cloud_Bigquery_Datatransfer_V1_CheckValidCredsResponse>

}

extension Google_Cloud_Bigquery_Datatransfer_V1_DataTransferServiceClientProtocol {

  /// Retrieves a supported data source and returns its settings,
  /// which can be used for UI rendering.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetDataSource.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getDataSource(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_GetDataSourceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_GetDataSourceRequest, Google_Cloud_Bigquery_Datatransfer_V1_DataSource> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/GetDataSource",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists supported data sources and returns their settings,
  /// which can be used for UI rendering.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListDataSources.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listDataSources(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_ListDataSourcesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_ListDataSourcesRequest, Google_Cloud_Bigquery_Datatransfer_V1_ListDataSourcesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/ListDataSources",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a new data transfer configuration.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateTransferConfig.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createTransferConfig(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_CreateTransferConfigRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_CreateTransferConfigRequest, Google_Cloud_Bigquery_Datatransfer_V1_TransferConfig> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/CreateTransferConfig",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a data transfer configuration.
  /// All fields must be set, even if they are not updated.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateTransferConfig.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateTransferConfig(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_UpdateTransferConfigRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_UpdateTransferConfigRequest, Google_Cloud_Bigquery_Datatransfer_V1_TransferConfig> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/UpdateTransferConfig",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a data transfer configuration,
  /// including any associated transfer runs and logs.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteTransferConfig.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteTransferConfig(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_DeleteTransferConfigRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_DeleteTransferConfigRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/DeleteTransferConfig",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns information about a data transfer config.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetTransferConfig.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getTransferConfig(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_GetTransferConfigRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_GetTransferConfigRequest, Google_Cloud_Bigquery_Datatransfer_V1_TransferConfig> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/GetTransferConfig",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns information about all data transfers in the project.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListTransferConfigs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listTransferConfigs(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_ListTransferConfigsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_ListTransferConfigsRequest, Google_Cloud_Bigquery_Datatransfer_V1_ListTransferConfigsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/ListTransferConfigs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates transfer runs for a time range [start_time, end_time].
  /// For each date - or whatever granularity the data source supports - in the
  /// range, one transfer run is created.
  /// Note that runs are created per UTC time in the time range.
  /// DEPRECATED: use StartManualTransferRuns instead.
  ///
  /// - Parameters:
  ///   - request: Request to send to ScheduleTransferRuns.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func scheduleTransferRuns(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_ScheduleTransferRunsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_ScheduleTransferRunsRequest, Google_Cloud_Bigquery_Datatransfer_V1_ScheduleTransferRunsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/ScheduleTransferRuns",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Start manual transfer runs to be executed now with schedule_time equal to
  /// current time. The transfer runs can be created for a time range where the
  /// run_time is between start_time (inclusive) and end_time (exclusive), or for
  /// a specific run_time.
  ///
  /// - Parameters:
  ///   - request: Request to send to StartManualTransferRuns.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func startManualTransferRuns(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_StartManualTransferRunsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_StartManualTransferRunsRequest, Google_Cloud_Bigquery_Datatransfer_V1_StartManualTransferRunsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/StartManualTransferRuns",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns information about the particular transfer run.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetTransferRun.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getTransferRun(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_GetTransferRunRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_GetTransferRunRequest, Google_Cloud_Bigquery_Datatransfer_V1_TransferRun> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/GetTransferRun",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes the specified transfer run.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteTransferRun.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteTransferRun(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_DeleteTransferRunRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_DeleteTransferRunRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/DeleteTransferRun",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns information about running and completed jobs.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListTransferRuns.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listTransferRuns(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_ListTransferRunsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_ListTransferRunsRequest, Google_Cloud_Bigquery_Datatransfer_V1_ListTransferRunsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/ListTransferRuns",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns user facing log messages for the data transfer run.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListTransferLogs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listTransferLogs(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_ListTransferLogsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_ListTransferLogsRequest, Google_Cloud_Bigquery_Datatransfer_V1_ListTransferLogsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/ListTransferLogs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns true if valid credentials exist for the given data source and
  /// requesting user.
  /// Some data sources doesn't support service account, so we need to talk to
  /// them on behalf of the end user. This API just checks whether we have OAuth
  /// token for the particular user, which is a pre-requisite before user can
  /// create a transfer config.
  ///
  /// - Parameters:
  ///   - request: Request to send to CheckValidCreds.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func checkValidCreds(
    _ request: Google_Cloud_Bigquery_Datatransfer_V1_CheckValidCredsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Datatransfer_V1_CheckValidCredsRequest, Google_Cloud_Bigquery_Datatransfer_V1_CheckValidCredsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.datatransfer.v1.DataTransferService/CheckValidCreds",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Bigquery_Datatransfer_V1_DataTransferServiceClient: Google_Cloud_Bigquery_Datatransfer_V1_DataTransferServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.bigquery.datatransfer.v1.DataTransferService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}

/// To build a server, implement a class that conforms to this protocol.
public protocol Google_Cloud_Bigquery_Datatransfer_V1_DataTransferServiceProvider: CallHandlerProvider {
  /// Retrieves a supported data source and returns its settings,
  /// which can be used for UI rendering.
  func getDataSource(request: Google_Cloud_Bigquery_Datatransfer_V1_GetDataSourceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Datatransfer_V1_DataSource>
  /// Lists supported data sources and returns their settings,
  /// which can be used for UI rendering.
  func listDataSources(request: Google_Cloud_Bigquery_Datatransfer_V1_ListDataSourcesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Datatransfer_V1_ListDataSourcesResponse>
  /// Creates a new data transfer configuration.
  func createTransferConfig(request: Google_Cloud_Bigquery_Datatransfer_V1_CreateTransferConfigRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Datatransfer_V1_TransferConfig>
  /// Updates a data transfer configuration.
  /// All fields must be set, even if they are not updated.
  func updateTransferConfig(request: Google_Cloud_Bigquery_Datatransfer_V1_UpdateTransferConfigRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Datatransfer_V1_TransferConfig>
  /// Deletes a data transfer configuration,
  /// including any associated transfer runs and logs.
  func deleteTransferConfig(request: Google_Cloud_Bigquery_Datatransfer_V1_DeleteTransferConfigRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Returns information about a data transfer config.
  func getTransferConfig(request: Google_Cloud_Bigquery_Datatransfer_V1_GetTransferConfigRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Datatransfer_V1_TransferConfig>
  /// Returns information about all data transfers in the project.
  func listTransferConfigs(request: Google_Cloud_Bigquery_Datatransfer_V1_ListTransferConfigsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Datatransfer_V1_ListTransferConfigsResponse>
  /// Creates transfer runs for a time range [start_time, end_time].
  /// For each date - or whatever granularity the data source supports - in the
  /// range, one transfer run is created.
  /// Note that runs are created per UTC time in the time range.
  /// DEPRECATED: use StartManualTransferRuns instead.
  func scheduleTransferRuns(request: Google_Cloud_Bigquery_Datatransfer_V1_ScheduleTransferRunsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Datatransfer_V1_ScheduleTransferRunsResponse>
  /// Start manual transfer runs to be executed now with schedule_time equal to
  /// current time. The transfer runs can be created for a time range where the
  /// run_time is between start_time (inclusive) and end_time (exclusive), or for
  /// a specific run_time.
  func startManualTransferRuns(request: Google_Cloud_Bigquery_Datatransfer_V1_StartManualTransferRunsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Datatransfer_V1_StartManualTransferRunsResponse>
  /// Returns information about the particular transfer run.
  func getTransferRun(request: Google_Cloud_Bigquery_Datatransfer_V1_GetTransferRunRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Datatransfer_V1_TransferRun>
  /// Deletes the specified transfer run.
  func deleteTransferRun(request: Google_Cloud_Bigquery_Datatransfer_V1_DeleteTransferRunRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Returns information about running and completed jobs.
  func listTransferRuns(request: Google_Cloud_Bigquery_Datatransfer_V1_ListTransferRunsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Datatransfer_V1_ListTransferRunsResponse>
  /// Returns user facing log messages for the data transfer run.
  func listTransferLogs(request: Google_Cloud_Bigquery_Datatransfer_V1_ListTransferLogsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Datatransfer_V1_ListTransferLogsResponse>
  /// Returns true if valid credentials exist for the given data source and
  /// requesting user.
  /// Some data sources doesn't support service account, so we need to talk to
  /// them on behalf of the end user. This API just checks whether we have OAuth
  /// token for the particular user, which is a pre-requisite before user can
  /// create a transfer config.
  func checkValidCreds(request: Google_Cloud_Bigquery_Datatransfer_V1_CheckValidCredsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Datatransfer_V1_CheckValidCredsResponse>
}

extension Google_Cloud_Bigquery_Datatransfer_V1_DataTransferServiceProvider {
  public var serviceName: Substring { return "google.cloud.bigquery.datatransfer.v1.DataTransferService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "GetDataSource":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getDataSource(request: request, context: context)
        }
      }

    case "ListDataSources":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listDataSources(request: request, context: context)
        }
      }

    case "CreateTransferConfig":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createTransferConfig(request: request, context: context)
        }
      }

    case "UpdateTransferConfig":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateTransferConfig(request: request, context: context)
        }
      }

    case "DeleteTransferConfig":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteTransferConfig(request: request, context: context)
        }
      }

    case "GetTransferConfig":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getTransferConfig(request: request, context: context)
        }
      }

    case "ListTransferConfigs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listTransferConfigs(request: request, context: context)
        }
      }

    case "ScheduleTransferRuns":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.scheduleTransferRuns(request: request, context: context)
        }
      }

    case "StartManualTransferRuns":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.startManualTransferRuns(request: request, context: context)
        }
      }

    case "GetTransferRun":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getTransferRun(request: request, context: context)
        }
      }

    case "DeleteTransferRun":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteTransferRun(request: request, context: context)
        }
      }

    case "ListTransferRuns":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listTransferRuns(request: request, context: context)
        }
      }

    case "ListTransferLogs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listTransferLogs(request: request, context: context)
        }
      }

    case "CheckValidCreds":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.checkValidCreds(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

