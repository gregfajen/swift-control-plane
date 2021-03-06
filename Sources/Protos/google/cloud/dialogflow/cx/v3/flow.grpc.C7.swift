//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/dialogflow/cx/v3/flow.proto
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


/// Usage: instantiate Google_Cloud_Dialogflow_Cx_V3_FlowsClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Dialogflow_Cx_V3_FlowsClientProtocol: GRPCClient {
  func createFlow(
    _ request: Google_Cloud_Dialogflow_Cx_V3_CreateFlowRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_CreateFlowRequest, Google_Cloud_Dialogflow_Cx_V3_Flow>

  func deleteFlow(
    _ request: Google_Cloud_Dialogflow_Cx_V3_DeleteFlowRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_DeleteFlowRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func listFlows(
    _ request: Google_Cloud_Dialogflow_Cx_V3_ListFlowsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_ListFlowsRequest, Google_Cloud_Dialogflow_Cx_V3_ListFlowsResponse>

  func getFlow(
    _ request: Google_Cloud_Dialogflow_Cx_V3_GetFlowRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_GetFlowRequest, Google_Cloud_Dialogflow_Cx_V3_Flow>

  func updateFlow(
    _ request: Google_Cloud_Dialogflow_Cx_V3_UpdateFlowRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_UpdateFlowRequest, Google_Cloud_Dialogflow_Cx_V3_Flow>

  func trainFlow(
    _ request: Google_Cloud_Dialogflow_Cx_V3_TrainFlowRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_TrainFlowRequest, Google_Longrunning_Operation>

}

extension Google_Cloud_Dialogflow_Cx_V3_FlowsClientProtocol {

  /// Creates a flow in the specified agent.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateFlow.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createFlow(
    _ request: Google_Cloud_Dialogflow_Cx_V3_CreateFlowRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_CreateFlowRequest, Google_Cloud_Dialogflow_Cx_V3_Flow> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3.Flows/CreateFlow",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a specified flow.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteFlow.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteFlow(
    _ request: Google_Cloud_Dialogflow_Cx_V3_DeleteFlowRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_DeleteFlowRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3.Flows/DeleteFlow",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns the list of all flows in the specified agent.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListFlows.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listFlows(
    _ request: Google_Cloud_Dialogflow_Cx_V3_ListFlowsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_ListFlowsRequest, Google_Cloud_Dialogflow_Cx_V3_ListFlowsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3.Flows/ListFlows",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Retrieves the specified flow.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetFlow.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getFlow(
    _ request: Google_Cloud_Dialogflow_Cx_V3_GetFlowRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_GetFlowRequest, Google_Cloud_Dialogflow_Cx_V3_Flow> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3.Flows/GetFlow",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates the specified flow.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateFlow.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateFlow(
    _ request: Google_Cloud_Dialogflow_Cx_V3_UpdateFlowRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_UpdateFlowRequest, Google_Cloud_Dialogflow_Cx_V3_Flow> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3.Flows/UpdateFlow",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Trains the specified flow. Note that only the flow in 'draft' environment
  /// is trained.
  ///
  /// - Parameters:
  ///   - request: Request to send to TrainFlow.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func trainFlow(
    _ request: Google_Cloud_Dialogflow_Cx_V3_TrainFlowRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_TrainFlowRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3.Flows/TrainFlow",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Dialogflow_Cx_V3_FlowsClient: Google_Cloud_Dialogflow_Cx_V3_FlowsClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.dialogflow.cx.v3.Flows service.
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
public protocol Google_Cloud_Dialogflow_Cx_V3_FlowsProvider: CallHandlerProvider {
  /// Creates a flow in the specified agent.
  func createFlow(request: Google_Cloud_Dialogflow_Cx_V3_CreateFlowRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3_Flow>
  /// Deletes a specified flow.
  func deleteFlow(request: Google_Cloud_Dialogflow_Cx_V3_DeleteFlowRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Returns the list of all flows in the specified agent.
  func listFlows(request: Google_Cloud_Dialogflow_Cx_V3_ListFlowsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3_ListFlowsResponse>
  /// Retrieves the specified flow.
  func getFlow(request: Google_Cloud_Dialogflow_Cx_V3_GetFlowRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3_Flow>
  /// Updates the specified flow.
  func updateFlow(request: Google_Cloud_Dialogflow_Cx_V3_UpdateFlowRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3_Flow>
  /// Trains the specified flow. Note that only the flow in 'draft' environment
  /// is trained.
  func trainFlow(request: Google_Cloud_Dialogflow_Cx_V3_TrainFlowRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
}

extension Google_Cloud_Dialogflow_Cx_V3_FlowsProvider {
  public var serviceName: Substring { return "google.cloud.dialogflow.cx.v3.Flows" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateFlow":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createFlow(request: request, context: context)
        }
      }

    case "DeleteFlow":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteFlow(request: request, context: context)
        }
      }

    case "ListFlows":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listFlows(request: request, context: context)
        }
      }

    case "GetFlow":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getFlow(request: request, context: context)
        }
      }

    case "UpdateFlow":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateFlow(request: request, context: context)
        }
      }

    case "TrainFlow":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.trainFlow(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

