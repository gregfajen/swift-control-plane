//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/monitoring/dashboard/v1/dashboards_service.proto
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


/// Usage: instantiate Google_Monitoring_Dashboard_V1_DashboardsServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Monitoring_Dashboard_V1_DashboardsServiceClientProtocol: GRPCClient {
  func createDashboard(
    _ request: Google_Monitoring_Dashboard_V1_CreateDashboardRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_Dashboard_V1_CreateDashboardRequest, Google_Monitoring_Dashboard_V1_Dashboard>

  func listDashboards(
    _ request: Google_Monitoring_Dashboard_V1_ListDashboardsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_Dashboard_V1_ListDashboardsRequest, Google_Monitoring_Dashboard_V1_ListDashboardsResponse>

  func getDashboard(
    _ request: Google_Monitoring_Dashboard_V1_GetDashboardRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_Dashboard_V1_GetDashboardRequest, Google_Monitoring_Dashboard_V1_Dashboard>

  func deleteDashboard(
    _ request: Google_Monitoring_Dashboard_V1_DeleteDashboardRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_Dashboard_V1_DeleteDashboardRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func updateDashboard(
    _ request: Google_Monitoring_Dashboard_V1_UpdateDashboardRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_Dashboard_V1_UpdateDashboardRequest, Google_Monitoring_Dashboard_V1_Dashboard>

}

extension Google_Monitoring_Dashboard_V1_DashboardsServiceClientProtocol {

  /// Creates a new custom dashboard.
  ///
  /// This method requires the `monitoring.dashboards.create` permission
  /// on the specified project. For more information, see
  /// [Google Cloud IAM](https://cloud.google.com/iam).
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateDashboard.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createDashboard(
    _ request: Google_Monitoring_Dashboard_V1_CreateDashboardRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_Dashboard_V1_CreateDashboardRequest, Google_Monitoring_Dashboard_V1_Dashboard> {
    return self.makeUnaryCall(
      path: "/google.monitoring.dashboard.v1.DashboardsService/CreateDashboard",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists the existing dashboards.
  ///
  /// This method requires the `monitoring.dashboards.list` permission
  /// on the specified project. For more information, see
  /// [Google Cloud IAM](https://cloud.google.com/iam).
  ///
  /// - Parameters:
  ///   - request: Request to send to ListDashboards.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listDashboards(
    _ request: Google_Monitoring_Dashboard_V1_ListDashboardsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_Dashboard_V1_ListDashboardsRequest, Google_Monitoring_Dashboard_V1_ListDashboardsResponse> {
    return self.makeUnaryCall(
      path: "/google.monitoring.dashboard.v1.DashboardsService/ListDashboards",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Fetches a specific dashboard.
  ///
  /// This method requires the `monitoring.dashboards.get` permission
  /// on the specified dashboard. For more information, see
  /// [Google Cloud IAM](https://cloud.google.com/iam).
  ///
  /// - Parameters:
  ///   - request: Request to send to GetDashboard.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getDashboard(
    _ request: Google_Monitoring_Dashboard_V1_GetDashboardRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_Dashboard_V1_GetDashboardRequest, Google_Monitoring_Dashboard_V1_Dashboard> {
    return self.makeUnaryCall(
      path: "/google.monitoring.dashboard.v1.DashboardsService/GetDashboard",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes an existing custom dashboard.
  ///
  /// This method requires the `monitoring.dashboards.delete` permission
  /// on the specified dashboard. For more information, see
  /// [Google Cloud IAM](https://cloud.google.com/iam).
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteDashboard.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteDashboard(
    _ request: Google_Monitoring_Dashboard_V1_DeleteDashboardRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_Dashboard_V1_DeleteDashboardRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.monitoring.dashboard.v1.DashboardsService/DeleteDashboard",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Replaces an existing custom dashboard with a new definition.
  ///
  /// This method requires the `monitoring.dashboards.update` permission
  /// on the specified dashboard. For more information, see
  /// [Google Cloud IAM](https://cloud.google.com/iam).
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateDashboard.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateDashboard(
    _ request: Google_Monitoring_Dashboard_V1_UpdateDashboardRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_Dashboard_V1_UpdateDashboardRequest, Google_Monitoring_Dashboard_V1_Dashboard> {
    return self.makeUnaryCall(
      path: "/google.monitoring.dashboard.v1.DashboardsService/UpdateDashboard",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Monitoring_Dashboard_V1_DashboardsServiceClient: Google_Monitoring_Dashboard_V1_DashboardsServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.monitoring.dashboard.v1.DashboardsService service.
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
public protocol Google_Monitoring_Dashboard_V1_DashboardsServiceProvider: CallHandlerProvider {
  /// Creates a new custom dashboard.
  ///
  /// This method requires the `monitoring.dashboards.create` permission
  /// on the specified project. For more information, see
  /// [Google Cloud IAM](https://cloud.google.com/iam).
  func createDashboard(request: Google_Monitoring_Dashboard_V1_CreateDashboardRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Monitoring_Dashboard_V1_Dashboard>
  /// Lists the existing dashboards.
  ///
  /// This method requires the `monitoring.dashboards.list` permission
  /// on the specified project. For more information, see
  /// [Google Cloud IAM](https://cloud.google.com/iam).
  func listDashboards(request: Google_Monitoring_Dashboard_V1_ListDashboardsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Monitoring_Dashboard_V1_ListDashboardsResponse>
  /// Fetches a specific dashboard.
  ///
  /// This method requires the `monitoring.dashboards.get` permission
  /// on the specified dashboard. For more information, see
  /// [Google Cloud IAM](https://cloud.google.com/iam).
  func getDashboard(request: Google_Monitoring_Dashboard_V1_GetDashboardRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Monitoring_Dashboard_V1_Dashboard>
  /// Deletes an existing custom dashboard.
  ///
  /// This method requires the `monitoring.dashboards.delete` permission
  /// on the specified dashboard. For more information, see
  /// [Google Cloud IAM](https://cloud.google.com/iam).
  func deleteDashboard(request: Google_Monitoring_Dashboard_V1_DeleteDashboardRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Replaces an existing custom dashboard with a new definition.
  ///
  /// This method requires the `monitoring.dashboards.update` permission
  /// on the specified dashboard. For more information, see
  /// [Google Cloud IAM](https://cloud.google.com/iam).
  func updateDashboard(request: Google_Monitoring_Dashboard_V1_UpdateDashboardRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Monitoring_Dashboard_V1_Dashboard>
}

extension Google_Monitoring_Dashboard_V1_DashboardsServiceProvider {
  public var serviceName: Substring { return "google.monitoring.dashboard.v1.DashboardsService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateDashboard":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createDashboard(request: request, context: context)
        }
      }

    case "ListDashboards":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listDashboards(request: request, context: context)
        }
      }

    case "GetDashboard":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getDashboard(request: request, context: context)
        }
      }

    case "DeleteDashboard":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteDashboard(request: request, context: context)
        }
      }

    case "UpdateDashboard":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateDashboard(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
