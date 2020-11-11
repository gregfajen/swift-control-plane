//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/gaming/v1beta/game_server_deployments_service.proto
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


/// Usage: instantiate Google_Cloud_Gaming_V1beta_GameServerDeploymentsServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Gaming_V1beta_GameServerDeploymentsServiceClientProtocol: GRPCClient {
  func listGameServerDeployments(
    _ request: Google_Cloud_Gaming_V1beta_ListGameServerDeploymentsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_ListGameServerDeploymentsRequest, Google_Cloud_Gaming_V1beta_ListGameServerDeploymentsResponse>

  func getGameServerDeployment(
    _ request: Google_Cloud_Gaming_V1beta_GetGameServerDeploymentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_GetGameServerDeploymentRequest, Google_Cloud_Gaming_V1beta_GameServerDeployment>

  func createGameServerDeployment(
    _ request: Google_Cloud_Gaming_V1beta_CreateGameServerDeploymentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_CreateGameServerDeploymentRequest, Google_Longrunning_Operation>

  func deleteGameServerDeployment(
    _ request: Google_Cloud_Gaming_V1beta_DeleteGameServerDeploymentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_DeleteGameServerDeploymentRequest, Google_Longrunning_Operation>

  func updateGameServerDeployment(
    _ request: Google_Cloud_Gaming_V1beta_UpdateGameServerDeploymentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_UpdateGameServerDeploymentRequest, Google_Longrunning_Operation>

  func getGameServerDeploymentRollout(
    _ request: Google_Cloud_Gaming_V1beta_GetGameServerDeploymentRolloutRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_GetGameServerDeploymentRolloutRequest, Google_Cloud_Gaming_V1beta_GameServerDeploymentRollout>

  func updateGameServerDeploymentRollout(
    _ request: Google_Cloud_Gaming_V1beta_UpdateGameServerDeploymentRolloutRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_UpdateGameServerDeploymentRolloutRequest, Google_Longrunning_Operation>

  func previewGameServerDeploymentRollout(
    _ request: Google_Cloud_Gaming_V1beta_PreviewGameServerDeploymentRolloutRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_PreviewGameServerDeploymentRolloutRequest, Google_Cloud_Gaming_V1beta_PreviewGameServerDeploymentRolloutResponse>

  func fetchDeploymentState(
    _ request: Google_Cloud_Gaming_V1beta_FetchDeploymentStateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_FetchDeploymentStateRequest, Google_Cloud_Gaming_V1beta_FetchDeploymentStateResponse>

}

extension Google_Cloud_Gaming_V1beta_GameServerDeploymentsServiceClientProtocol {

  /// Lists game server deployments in a given project and location.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListGameServerDeployments.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listGameServerDeployments(
    _ request: Google_Cloud_Gaming_V1beta_ListGameServerDeploymentsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_ListGameServerDeploymentsRequest, Google_Cloud_Gaming_V1beta_ListGameServerDeploymentsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerDeploymentsService/ListGameServerDeployments",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets details of a single game server deployment.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetGameServerDeployment.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getGameServerDeployment(
    _ request: Google_Cloud_Gaming_V1beta_GetGameServerDeploymentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_GetGameServerDeploymentRequest, Google_Cloud_Gaming_V1beta_GameServerDeployment> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerDeploymentsService/GetGameServerDeployment",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a new game server deployment in a given project and location.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateGameServerDeployment.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createGameServerDeployment(
    _ request: Google_Cloud_Gaming_V1beta_CreateGameServerDeploymentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_CreateGameServerDeploymentRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerDeploymentsService/CreateGameServerDeployment",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a single game server deployment.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteGameServerDeployment.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteGameServerDeployment(
    _ request: Google_Cloud_Gaming_V1beta_DeleteGameServerDeploymentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_DeleteGameServerDeploymentRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerDeploymentsService/DeleteGameServerDeployment",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Patches a game server deployment.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateGameServerDeployment.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateGameServerDeployment(
    _ request: Google_Cloud_Gaming_V1beta_UpdateGameServerDeploymentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_UpdateGameServerDeploymentRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerDeploymentsService/UpdateGameServerDeployment",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets details a single game server deployment rollout.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetGameServerDeploymentRollout.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getGameServerDeploymentRollout(
    _ request: Google_Cloud_Gaming_V1beta_GetGameServerDeploymentRolloutRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_GetGameServerDeploymentRolloutRequest, Google_Cloud_Gaming_V1beta_GameServerDeploymentRollout> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerDeploymentsService/GetGameServerDeploymentRollout",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Patches a single game server deployment rollout.
  /// The method will not return an error if the update does not affect any
  /// existing realms. For example - if the default_game_server_config is changed
  /// but all existing realms use the override, that is valid. Similarly, if a
  /// non existing realm is explicitly called out in game_server_config_overrides
  /// field, that will also not result in an error.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateGameServerDeploymentRollout.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateGameServerDeploymentRollout(
    _ request: Google_Cloud_Gaming_V1beta_UpdateGameServerDeploymentRolloutRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_UpdateGameServerDeploymentRolloutRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerDeploymentsService/UpdateGameServerDeploymentRollout",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Previews the game server deployment rollout. This API does not mutate the
  /// rollout resource.
  ///
  /// - Parameters:
  ///   - request: Request to send to PreviewGameServerDeploymentRollout.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func previewGameServerDeploymentRollout(
    _ request: Google_Cloud_Gaming_V1beta_PreviewGameServerDeploymentRolloutRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_PreviewGameServerDeploymentRolloutRequest, Google_Cloud_Gaming_V1beta_PreviewGameServerDeploymentRolloutResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerDeploymentsService/PreviewGameServerDeploymentRollout",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Retrieves information about the current state of the game server
  /// deployment. Gathers all the Agones fleets and Agones autoscalers,
  /// including fleets running an older version of the game server deployment.
  ///
  /// - Parameters:
  ///   - request: Request to send to FetchDeploymentState.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func fetchDeploymentState(
    _ request: Google_Cloud_Gaming_V1beta_FetchDeploymentStateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_FetchDeploymentStateRequest, Google_Cloud_Gaming_V1beta_FetchDeploymentStateResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerDeploymentsService/FetchDeploymentState",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Gaming_V1beta_GameServerDeploymentsServiceClient: Google_Cloud_Gaming_V1beta_GameServerDeploymentsServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.gaming.v1beta.GameServerDeploymentsService service.
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
public protocol Google_Cloud_Gaming_V1beta_GameServerDeploymentsServiceProvider: CallHandlerProvider {
  /// Lists game server deployments in a given project and location.
  func listGameServerDeployments(request: Google_Cloud_Gaming_V1beta_ListGameServerDeploymentsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Gaming_V1beta_ListGameServerDeploymentsResponse>
  /// Gets details of a single game server deployment.
  func getGameServerDeployment(request: Google_Cloud_Gaming_V1beta_GetGameServerDeploymentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Gaming_V1beta_GameServerDeployment>
  /// Creates a new game server deployment in a given project and location.
  func createGameServerDeployment(request: Google_Cloud_Gaming_V1beta_CreateGameServerDeploymentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Deletes a single game server deployment.
  func deleteGameServerDeployment(request: Google_Cloud_Gaming_V1beta_DeleteGameServerDeploymentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Patches a game server deployment.
  func updateGameServerDeployment(request: Google_Cloud_Gaming_V1beta_UpdateGameServerDeploymentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Gets details a single game server deployment rollout.
  func getGameServerDeploymentRollout(request: Google_Cloud_Gaming_V1beta_GetGameServerDeploymentRolloutRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Gaming_V1beta_GameServerDeploymentRollout>
  /// Patches a single game server deployment rollout.
  /// The method will not return an error if the update does not affect any
  /// existing realms. For example - if the default_game_server_config is changed
  /// but all existing realms use the override, that is valid. Similarly, if a
  /// non existing realm is explicitly called out in game_server_config_overrides
  /// field, that will also not result in an error.
  func updateGameServerDeploymentRollout(request: Google_Cloud_Gaming_V1beta_UpdateGameServerDeploymentRolloutRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Previews the game server deployment rollout. This API does not mutate the
  /// rollout resource.
  func previewGameServerDeploymentRollout(request: Google_Cloud_Gaming_V1beta_PreviewGameServerDeploymentRolloutRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Gaming_V1beta_PreviewGameServerDeploymentRolloutResponse>
  /// Retrieves information about the current state of the game server
  /// deployment. Gathers all the Agones fleets and Agones autoscalers,
  /// including fleets running an older version of the game server deployment.
  func fetchDeploymentState(request: Google_Cloud_Gaming_V1beta_FetchDeploymentStateRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Gaming_V1beta_FetchDeploymentStateResponse>
}

extension Google_Cloud_Gaming_V1beta_GameServerDeploymentsServiceProvider {
  public var serviceName: Substring { return "google.cloud.gaming.v1beta.GameServerDeploymentsService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListGameServerDeployments":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listGameServerDeployments(request: request, context: context)
        }
      }

    case "GetGameServerDeployment":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getGameServerDeployment(request: request, context: context)
        }
      }

    case "CreateGameServerDeployment":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createGameServerDeployment(request: request, context: context)
        }
      }

    case "DeleteGameServerDeployment":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteGameServerDeployment(request: request, context: context)
        }
      }

    case "UpdateGameServerDeployment":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateGameServerDeployment(request: request, context: context)
        }
      }

    case "GetGameServerDeploymentRollout":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getGameServerDeploymentRollout(request: request, context: context)
        }
      }

    case "UpdateGameServerDeploymentRollout":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateGameServerDeploymentRollout(request: request, context: context)
        }
      }

    case "PreviewGameServerDeploymentRollout":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.previewGameServerDeploymentRollout(request: request, context: context)
        }
      }

    case "FetchDeploymentState":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.fetchDeploymentState(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

