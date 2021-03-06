//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/gaming/v1/game_server_configs_service.proto
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


/// Usage: instantiate Google_Cloud_Gaming_V1_GameServerConfigsServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Gaming_V1_GameServerConfigsServiceClientProtocol: GRPCClient {
  func listGameServerConfigs(
    _ request: Google_Cloud_Gaming_V1_ListGameServerConfigsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1_ListGameServerConfigsRequest, Google_Cloud_Gaming_V1_ListGameServerConfigsResponse>

  func getGameServerConfig(
    _ request: Google_Cloud_Gaming_V1_GetGameServerConfigRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1_GetGameServerConfigRequest, Google_Cloud_Gaming_V1_GameServerConfig>

  func createGameServerConfig(
    _ request: Google_Cloud_Gaming_V1_CreateGameServerConfigRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1_CreateGameServerConfigRequest, Google_Longrunning_Operation>

  func deleteGameServerConfig(
    _ request: Google_Cloud_Gaming_V1_DeleteGameServerConfigRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1_DeleteGameServerConfigRequest, Google_Longrunning_Operation>

}

extension Google_Cloud_Gaming_V1_GameServerConfigsServiceClientProtocol {

  /// Lists game server configs in a given project, location, and game server
  /// deployment.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListGameServerConfigs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listGameServerConfigs(
    _ request: Google_Cloud_Gaming_V1_ListGameServerConfigsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1_ListGameServerConfigsRequest, Google_Cloud_Gaming_V1_ListGameServerConfigsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1.GameServerConfigsService/ListGameServerConfigs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets details of a single game server config.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetGameServerConfig.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getGameServerConfig(
    _ request: Google_Cloud_Gaming_V1_GetGameServerConfigRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1_GetGameServerConfigRequest, Google_Cloud_Gaming_V1_GameServerConfig> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1.GameServerConfigsService/GetGameServerConfig",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a new game server config in a given project, location, and game
  /// server deployment. Game server configs are immutable, and are not applied
  /// until referenced in the game server deployment rollout resource.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateGameServerConfig.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createGameServerConfig(
    _ request: Google_Cloud_Gaming_V1_CreateGameServerConfigRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1_CreateGameServerConfigRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1.GameServerConfigsService/CreateGameServerConfig",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a single game server config. The deletion will fail if the game
  /// server config is referenced in a game server deployment rollout.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteGameServerConfig.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteGameServerConfig(
    _ request: Google_Cloud_Gaming_V1_DeleteGameServerConfigRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1_DeleteGameServerConfigRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1.GameServerConfigsService/DeleteGameServerConfig",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Gaming_V1_GameServerConfigsServiceClient: Google_Cloud_Gaming_V1_GameServerConfigsServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.gaming.v1.GameServerConfigsService service.
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
public protocol Google_Cloud_Gaming_V1_GameServerConfigsServiceProvider: CallHandlerProvider {
  /// Lists game server configs in a given project, location, and game server
  /// deployment.
  func listGameServerConfigs(request: Google_Cloud_Gaming_V1_ListGameServerConfigsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Gaming_V1_ListGameServerConfigsResponse>
  /// Gets details of a single game server config.
  func getGameServerConfig(request: Google_Cloud_Gaming_V1_GetGameServerConfigRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Gaming_V1_GameServerConfig>
  /// Creates a new game server config in a given project, location, and game
  /// server deployment. Game server configs are immutable, and are not applied
  /// until referenced in the game server deployment rollout resource.
  func createGameServerConfig(request: Google_Cloud_Gaming_V1_CreateGameServerConfigRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Deletes a single game server config. The deletion will fail if the game
  /// server config is referenced in a game server deployment rollout.
  func deleteGameServerConfig(request: Google_Cloud_Gaming_V1_DeleteGameServerConfigRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
}

extension Google_Cloud_Gaming_V1_GameServerConfigsServiceProvider {
  public var serviceName: Substring { return "google.cloud.gaming.v1.GameServerConfigsService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListGameServerConfigs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listGameServerConfigs(request: request, context: context)
        }
      }

    case "GetGameServerConfig":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getGameServerConfig(request: request, context: context)
        }
      }

    case "CreateGameServerConfig":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createGameServerConfig(request: request, context: context)
        }
      }

    case "DeleteGameServerConfig":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteGameServerConfig(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

