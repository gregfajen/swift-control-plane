//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/dialogflow/cx/v3beta1/entity_type.proto
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


/// Usage: instantiate Google_Cloud_Dialogflow_Cx_V3beta1_EntityTypesClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Dialogflow_Cx_V3beta1_EntityTypesClientProtocol: GRPCClient {
  func listEntityTypes(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_ListEntityTypesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_ListEntityTypesRequest, Google_Cloud_Dialogflow_Cx_V3beta1_ListEntityTypesResponse>

  func getEntityType(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_GetEntityTypeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_GetEntityTypeRequest, Google_Cloud_Dialogflow_Cx_V3beta1_EntityType>

  func createEntityType(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_CreateEntityTypeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_CreateEntityTypeRequest, Google_Cloud_Dialogflow_Cx_V3beta1_EntityType>

  func updateEntityType(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_UpdateEntityTypeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_UpdateEntityTypeRequest, Google_Cloud_Dialogflow_Cx_V3beta1_EntityType>

  func deleteEntityType(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_DeleteEntityTypeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_DeleteEntityTypeRequest, SwiftProtobuf.Google_Protobuf_Empty>

}

extension Google_Cloud_Dialogflow_Cx_V3beta1_EntityTypesClientProtocol {

  /// Returns the list of all entity types in the specified agent.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListEntityTypes.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listEntityTypes(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_ListEntityTypesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_ListEntityTypesRequest, Google_Cloud_Dialogflow_Cx_V3beta1_ListEntityTypesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3beta1.EntityTypes/ListEntityTypes",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Retrieves the specified entity type.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetEntityType.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getEntityType(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_GetEntityTypeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_GetEntityTypeRequest, Google_Cloud_Dialogflow_Cx_V3beta1_EntityType> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3beta1.EntityTypes/GetEntityType",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates an entity type in the specified agent.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateEntityType.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createEntityType(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_CreateEntityTypeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_CreateEntityTypeRequest, Google_Cloud_Dialogflow_Cx_V3beta1_EntityType> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3beta1.EntityTypes/CreateEntityType",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates the specified entity type.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateEntityType.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateEntityType(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_UpdateEntityTypeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_UpdateEntityTypeRequest, Google_Cloud_Dialogflow_Cx_V3beta1_EntityType> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3beta1.EntityTypes/UpdateEntityType",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes the specified entity type.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteEntityType.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteEntityType(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_DeleteEntityTypeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_DeleteEntityTypeRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3beta1.EntityTypes/DeleteEntityType",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Dialogflow_Cx_V3beta1_EntityTypesClient: Google_Cloud_Dialogflow_Cx_V3beta1_EntityTypesClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.dialogflow.cx.v3beta1.EntityTypes service.
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
public protocol Google_Cloud_Dialogflow_Cx_V3beta1_EntityTypesProvider: CallHandlerProvider {
  /// Returns the list of all entity types in the specified agent.
  func listEntityTypes(request: Google_Cloud_Dialogflow_Cx_V3beta1_ListEntityTypesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3beta1_ListEntityTypesResponse>
  /// Retrieves the specified entity type.
  func getEntityType(request: Google_Cloud_Dialogflow_Cx_V3beta1_GetEntityTypeRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3beta1_EntityType>
  /// Creates an entity type in the specified agent.
  func createEntityType(request: Google_Cloud_Dialogflow_Cx_V3beta1_CreateEntityTypeRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3beta1_EntityType>
  /// Updates the specified entity type.
  func updateEntityType(request: Google_Cloud_Dialogflow_Cx_V3beta1_UpdateEntityTypeRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3beta1_EntityType>
  /// Deletes the specified entity type.
  func deleteEntityType(request: Google_Cloud_Dialogflow_Cx_V3beta1_DeleteEntityTypeRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
}

extension Google_Cloud_Dialogflow_Cx_V3beta1_EntityTypesProvider {
  public var serviceName: Substring { return "google.cloud.dialogflow.cx.v3beta1.EntityTypes" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListEntityTypes":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listEntityTypes(request: request, context: context)
        }
      }

    case "GetEntityType":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getEntityType(request: request, context: context)
        }
      }

    case "CreateEntityType":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createEntityType(request: request, context: context)
        }
      }

    case "UpdateEntityType":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateEntityType(request: request, context: context)
        }
      }

    case "DeleteEntityType":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteEntityType(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

