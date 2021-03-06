//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/home/graph/v1/homegraph.proto
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


/// Usage: instantiate Google_Home_Graph_V1_HomeGraphApiServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Home_Graph_V1_HomeGraphApiServiceClientProtocol: GRPCClient {
  func requestSyncDevices(
    _ request: Google_Home_Graph_V1_RequestSyncDevicesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Home_Graph_V1_RequestSyncDevicesRequest, Google_Home_Graph_V1_RequestSyncDevicesResponse>

  func reportStateAndNotification(
    _ request: Google_Home_Graph_V1_ReportStateAndNotificationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Home_Graph_V1_ReportStateAndNotificationRequest, Google_Home_Graph_V1_ReportStateAndNotificationResponse>

  func deleteAgentUser(
    _ request: Google_Home_Graph_V1_DeleteAgentUserRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Home_Graph_V1_DeleteAgentUserRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func query(
    _ request: Google_Home_Graph_V1_QueryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Home_Graph_V1_QueryRequest, Google_Home_Graph_V1_QueryResponse>

  func sync(
    _ request: Google_Home_Graph_V1_SyncRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Home_Graph_V1_SyncRequest, Google_Home_Graph_V1_SyncResponse>

}

extension Google_Home_Graph_V1_HomeGraphApiServiceClientProtocol {

  /// Requests Google to send an `action.devices.SYNC`
  /// [intent](https://developers.google.com/assistant/smarthome/reference/intent/sync)
  /// to your smart home Action to update device metadata for the given user.
  ///
  ///
  /// The third-party user's identity is passed via the `agent_user_id`
  /// (see
  /// [RequestSyncDevicesRequest][google.home.graph.v1.RequestSyncDevicesRequest]).
  /// This request must be authorized using service account credentials from your
  /// Actions console project.
  ///
  /// - Parameters:
  ///   - request: Request to send to RequestSyncDevices.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func requestSyncDevices(
    _ request: Google_Home_Graph_V1_RequestSyncDevicesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Home_Graph_V1_RequestSyncDevicesRequest, Google_Home_Graph_V1_RequestSyncDevicesResponse> {
    return self.makeUnaryCall(
      path: "/google.home.graph.v1.HomeGraphApiService/RequestSyncDevices",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Reports device state and optionally sends device notifications.
  /// Called by your smart home Action when the state of a third-party device
  /// changes or you need to send a notification about the device.
  /// See [Implement Report
  /// State](https://developers.google.com/assistant/smarthome/develop/report-state)
  /// for more information.
  ///
  /// This method updates the device state according to its declared
  /// [traits](https://developers.google.com/assistant/smarthome/concepts/devices-traits).
  /// Publishing a new state value outside of these traits will result in an
  /// `INVALID_ARGUMENT` error response.
  ///
  /// The third-party user's identity is passed in via the `agent_user_id`
  /// (see
  /// [ReportStateAndNotificationRequest][google.home.graph.v1.ReportStateAndNotificationRequest]).
  /// This request must be authorized using service account credentials from your
  /// Actions console project.
  ///
  /// - Parameters:
  ///   - request: Request to send to ReportStateAndNotification.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func reportStateAndNotification(
    _ request: Google_Home_Graph_V1_ReportStateAndNotificationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Home_Graph_V1_ReportStateAndNotificationRequest, Google_Home_Graph_V1_ReportStateAndNotificationResponse> {
    return self.makeUnaryCall(
      path: "/google.home.graph.v1.HomeGraphApiService/ReportStateAndNotification",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unlinks the given third-party user from your smart home Action.
  /// All data related to this user will be deleted.
  ///
  /// For more details on how users link their accounts, see
  /// [fulfillment and
  /// authentication](https://developers.google.com/assistant/smarthome/concepts/fulfillment-authentication).
  ///
  /// The third-party user's identity is passed in via the `agent_user_id`
  /// (see
  /// [DeleteAgentUserRequest][google.home.graph.v1.DeleteAgentUserRequest]).
  /// This request must be authorized using service account credentials from your
  /// Actions console project.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteAgentUser.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteAgentUser(
    _ request: Google_Home_Graph_V1_DeleteAgentUserRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Home_Graph_V1_DeleteAgentUserRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.home.graph.v1.HomeGraphApiService/DeleteAgentUser",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the current states in Home Graph for the given set of the third-party
  /// user's devices.
  ///
  /// The third-party user's identity is passed in via the `agent_user_id`
  /// (see [QueryRequest][google.home.graph.v1.QueryRequest]).
  /// This request must be authorized using service account credentials from your
  /// Actions console project.
  ///
  /// - Parameters:
  ///   - request: Request to send to Query.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func query(
    _ request: Google_Home_Graph_V1_QueryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Home_Graph_V1_QueryRequest, Google_Home_Graph_V1_QueryResponse> {
    return self.makeUnaryCall(
      path: "/google.home.graph.v1.HomeGraphApiService/Query",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets all the devices associated with the given third-party user.
  ///
  /// The third-party user's identity is passed in via the `agent_user_id`
  /// (see [SyncRequest][google.home.graph.v1.SyncRequest]).
  /// This request must be authorized using service account credentials from your
  /// Actions console project.
  ///
  /// - Parameters:
  ///   - request: Request to send to Sync.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func sync(
    _ request: Google_Home_Graph_V1_SyncRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Home_Graph_V1_SyncRequest, Google_Home_Graph_V1_SyncResponse> {
    return self.makeUnaryCall(
      path: "/google.home.graph.v1.HomeGraphApiService/Sync",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Home_Graph_V1_HomeGraphApiServiceClient: Google_Home_Graph_V1_HomeGraphApiServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.home.graph.v1.HomeGraphApiService service.
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
public protocol Google_Home_Graph_V1_HomeGraphApiServiceProvider: CallHandlerProvider {
  /// Requests Google to send an `action.devices.SYNC`
  /// [intent](https://developers.google.com/assistant/smarthome/reference/intent/sync)
  /// to your smart home Action to update device metadata for the given user.
  ///
  ///
  /// The third-party user's identity is passed via the `agent_user_id`
  /// (see
  /// [RequestSyncDevicesRequest][google.home.graph.v1.RequestSyncDevicesRequest]).
  /// This request must be authorized using service account credentials from your
  /// Actions console project.
  func requestSyncDevices(request: Google_Home_Graph_V1_RequestSyncDevicesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Home_Graph_V1_RequestSyncDevicesResponse>
  /// Reports device state and optionally sends device notifications.
  /// Called by your smart home Action when the state of a third-party device
  /// changes or you need to send a notification about the device.
  /// See [Implement Report
  /// State](https://developers.google.com/assistant/smarthome/develop/report-state)
  /// for more information.
  ///
  /// This method updates the device state according to its declared
  /// [traits](https://developers.google.com/assistant/smarthome/concepts/devices-traits).
  /// Publishing a new state value outside of these traits will result in an
  /// `INVALID_ARGUMENT` error response.
  ///
  /// The third-party user's identity is passed in via the `agent_user_id`
  /// (see
  /// [ReportStateAndNotificationRequest][google.home.graph.v1.ReportStateAndNotificationRequest]).
  /// This request must be authorized using service account credentials from your
  /// Actions console project.
  func reportStateAndNotification(request: Google_Home_Graph_V1_ReportStateAndNotificationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Home_Graph_V1_ReportStateAndNotificationResponse>
  /// Unlinks the given third-party user from your smart home Action.
  /// All data related to this user will be deleted.
  ///
  /// For more details on how users link their accounts, see
  /// [fulfillment and
  /// authentication](https://developers.google.com/assistant/smarthome/concepts/fulfillment-authentication).
  ///
  /// The third-party user's identity is passed in via the `agent_user_id`
  /// (see
  /// [DeleteAgentUserRequest][google.home.graph.v1.DeleteAgentUserRequest]).
  /// This request must be authorized using service account credentials from your
  /// Actions console project.
  func deleteAgentUser(request: Google_Home_Graph_V1_DeleteAgentUserRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Gets the current states in Home Graph for the given set of the third-party
  /// user's devices.
  ///
  /// The third-party user's identity is passed in via the `agent_user_id`
  /// (see [QueryRequest][google.home.graph.v1.QueryRequest]).
  /// This request must be authorized using service account credentials from your
  /// Actions console project.
  func query(request: Google_Home_Graph_V1_QueryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Home_Graph_V1_QueryResponse>
  /// Gets all the devices associated with the given third-party user.
  ///
  /// The third-party user's identity is passed in via the `agent_user_id`
  /// (see [SyncRequest][google.home.graph.v1.SyncRequest]).
  /// This request must be authorized using service account credentials from your
  /// Actions console project.
  func sync(request: Google_Home_Graph_V1_SyncRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Home_Graph_V1_SyncResponse>
}

extension Google_Home_Graph_V1_HomeGraphApiServiceProvider {
  public var serviceName: Substring { return "google.home.graph.v1.HomeGraphApiService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "RequestSyncDevices":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.requestSyncDevices(request: request, context: context)
        }
      }

    case "ReportStateAndNotification":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.reportStateAndNotification(request: request, context: context)
        }
      }

    case "DeleteAgentUser":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteAgentUser(request: request, context: context)
        }
      }

    case "Query":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.query(request: request, context: context)
        }
      }

    case "Sync":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.sync(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

