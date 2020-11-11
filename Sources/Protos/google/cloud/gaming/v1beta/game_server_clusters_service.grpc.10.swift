//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/gaming/v1beta/game_server_clusters_service.proto
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


/// Usage: instantiate Google_Cloud_Gaming_V1beta_GameServerClustersServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Gaming_V1beta_GameServerClustersServiceClientProtocol: GRPCClient {
  func listGameServerClusters(
    _ request: Google_Cloud_Gaming_V1beta_ListGameServerClustersRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_ListGameServerClustersRequest, Google_Cloud_Gaming_V1beta_ListGameServerClustersResponse>

  func getGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_GetGameServerClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_GetGameServerClusterRequest, Google_Cloud_Gaming_V1beta_GameServerCluster>

  func createGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_CreateGameServerClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_CreateGameServerClusterRequest, Google_Longrunning_Operation>

  func previewCreateGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_PreviewCreateGameServerClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_PreviewCreateGameServerClusterRequest, Google_Cloud_Gaming_V1beta_PreviewCreateGameServerClusterResponse>

  func deleteGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_DeleteGameServerClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_DeleteGameServerClusterRequest, Google_Longrunning_Operation>

  func previewDeleteGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_PreviewDeleteGameServerClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_PreviewDeleteGameServerClusterRequest, Google_Cloud_Gaming_V1beta_PreviewDeleteGameServerClusterResponse>

  func updateGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_UpdateGameServerClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_UpdateGameServerClusterRequest, Google_Longrunning_Operation>

  func previewUpdateGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_PreviewUpdateGameServerClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_PreviewUpdateGameServerClusterRequest, Google_Cloud_Gaming_V1beta_PreviewUpdateGameServerClusterResponse>

}

extension Google_Cloud_Gaming_V1beta_GameServerClustersServiceClientProtocol {

  /// Lists game server clusters in a given project and location.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListGameServerClusters.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listGameServerClusters(
    _ request: Google_Cloud_Gaming_V1beta_ListGameServerClustersRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_ListGameServerClustersRequest, Google_Cloud_Gaming_V1beta_ListGameServerClustersResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerClustersService/ListGameServerClusters",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets details of a single game server cluster.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetGameServerCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_GetGameServerClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_GetGameServerClusterRequest, Google_Cloud_Gaming_V1beta_GameServerCluster> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerClustersService/GetGameServerCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a new game server cluster in a given project and location.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateGameServerCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_CreateGameServerClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_CreateGameServerClusterRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerClustersService/CreateGameServerCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Previews creation of a new game server cluster in a given project and
  /// location.
  ///
  /// - Parameters:
  ///   - request: Request to send to PreviewCreateGameServerCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func previewCreateGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_PreviewCreateGameServerClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_PreviewCreateGameServerClusterRequest, Google_Cloud_Gaming_V1beta_PreviewCreateGameServerClusterResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerClustersService/PreviewCreateGameServerCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a single game server cluster.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteGameServerCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_DeleteGameServerClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_DeleteGameServerClusterRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerClustersService/DeleteGameServerCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Previews deletion of a single game server cluster.
  ///
  /// - Parameters:
  ///   - request: Request to send to PreviewDeleteGameServerCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func previewDeleteGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_PreviewDeleteGameServerClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_PreviewDeleteGameServerClusterRequest, Google_Cloud_Gaming_V1beta_PreviewDeleteGameServerClusterResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerClustersService/PreviewDeleteGameServerCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Patches a single game server cluster.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateGameServerCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_UpdateGameServerClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_UpdateGameServerClusterRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerClustersService/UpdateGameServerCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Previews updating a GameServerCluster.
  ///
  /// - Parameters:
  ///   - request: Request to send to PreviewUpdateGameServerCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func previewUpdateGameServerCluster(
    _ request: Google_Cloud_Gaming_V1beta_PreviewUpdateGameServerClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Gaming_V1beta_PreviewUpdateGameServerClusterRequest, Google_Cloud_Gaming_V1beta_PreviewUpdateGameServerClusterResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.gaming.v1beta.GameServerClustersService/PreviewUpdateGameServerCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Gaming_V1beta_GameServerClustersServiceClient: Google_Cloud_Gaming_V1beta_GameServerClustersServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.gaming.v1beta.GameServerClustersService service.
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
public protocol Google_Cloud_Gaming_V1beta_GameServerClustersServiceProvider: CallHandlerProvider {
  /// Lists game server clusters in a given project and location.
  func listGameServerClusters(request: Google_Cloud_Gaming_V1beta_ListGameServerClustersRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Gaming_V1beta_ListGameServerClustersResponse>
  /// Gets details of a single game server cluster.
  func getGameServerCluster(request: Google_Cloud_Gaming_V1beta_GetGameServerClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Gaming_V1beta_GameServerCluster>
  /// Creates a new game server cluster in a given project and location.
  func createGameServerCluster(request: Google_Cloud_Gaming_V1beta_CreateGameServerClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Previews creation of a new game server cluster in a given project and
  /// location.
  func previewCreateGameServerCluster(request: Google_Cloud_Gaming_V1beta_PreviewCreateGameServerClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Gaming_V1beta_PreviewCreateGameServerClusterResponse>
  /// Deletes a single game server cluster.
  func deleteGameServerCluster(request: Google_Cloud_Gaming_V1beta_DeleteGameServerClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Previews deletion of a single game server cluster.
  func previewDeleteGameServerCluster(request: Google_Cloud_Gaming_V1beta_PreviewDeleteGameServerClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Gaming_V1beta_PreviewDeleteGameServerClusterResponse>
  /// Patches a single game server cluster.
  func updateGameServerCluster(request: Google_Cloud_Gaming_V1beta_UpdateGameServerClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Previews updating a GameServerCluster.
  func previewUpdateGameServerCluster(request: Google_Cloud_Gaming_V1beta_PreviewUpdateGameServerClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Gaming_V1beta_PreviewUpdateGameServerClusterResponse>
}

extension Google_Cloud_Gaming_V1beta_GameServerClustersServiceProvider {
  public var serviceName: Substring { return "google.cloud.gaming.v1beta.GameServerClustersService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListGameServerClusters":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listGameServerClusters(request: request, context: context)
        }
      }

    case "GetGameServerCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getGameServerCluster(request: request, context: context)
        }
      }

    case "CreateGameServerCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createGameServerCluster(request: request, context: context)
        }
      }

    case "PreviewCreateGameServerCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.previewCreateGameServerCluster(request: request, context: context)
        }
      }

    case "DeleteGameServerCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteGameServerCluster(request: request, context: context)
        }
      }

    case "PreviewDeleteGameServerCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.previewDeleteGameServerCluster(request: request, context: context)
        }
      }

    case "UpdateGameServerCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateGameServerCluster(request: request, context: context)
        }
      }

    case "PreviewUpdateGameServerCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.previewUpdateGameServerCluster(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

