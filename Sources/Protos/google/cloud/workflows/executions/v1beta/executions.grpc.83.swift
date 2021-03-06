//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/workflows/executions/v1beta/executions.proto
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


/// Usage: instantiate Google_Cloud_Workflows_Executions_V1beta_ExecutionsClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Workflows_Executions_V1beta_ExecutionsClientProtocol: GRPCClient {
  func listExecutions(
    _ request: Google_Cloud_Workflows_Executions_V1beta_ListExecutionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Workflows_Executions_V1beta_ListExecutionsRequest, Google_Cloud_Workflows_Executions_V1beta_ListExecutionsResponse>

  func createExecution(
    _ request: Google_Cloud_Workflows_Executions_V1beta_CreateExecutionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Workflows_Executions_V1beta_CreateExecutionRequest, Google_Cloud_Workflows_Executions_V1beta_Execution>

  func getExecution(
    _ request: Google_Cloud_Workflows_Executions_V1beta_GetExecutionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Workflows_Executions_V1beta_GetExecutionRequest, Google_Cloud_Workflows_Executions_V1beta_Execution>

  func cancelExecution(
    _ request: Google_Cloud_Workflows_Executions_V1beta_CancelExecutionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Workflows_Executions_V1beta_CancelExecutionRequest, Google_Cloud_Workflows_Executions_V1beta_Execution>

}

extension Google_Cloud_Workflows_Executions_V1beta_ExecutionsClientProtocol {

  /// Returns a list of executions which belong to the workflow with
  /// the given name. The method returns executions of all workflow
  /// revisions. Returned executions are ordered by their start time (newest
  /// first).
  ///
  /// - Parameters:
  ///   - request: Request to send to ListExecutions.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listExecutions(
    _ request: Google_Cloud_Workflows_Executions_V1beta_ListExecutionsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Workflows_Executions_V1beta_ListExecutionsRequest, Google_Cloud_Workflows_Executions_V1beta_ListExecutionsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.workflows.executions.v1beta.Executions/ListExecutions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a new execution using the latest revision of the given workflow.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateExecution.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createExecution(
    _ request: Google_Cloud_Workflows_Executions_V1beta_CreateExecutionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Workflows_Executions_V1beta_CreateExecutionRequest, Google_Cloud_Workflows_Executions_V1beta_Execution> {
    return self.makeUnaryCall(
      path: "/google.cloud.workflows.executions.v1beta.Executions/CreateExecution",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns an execution of the given name.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetExecution.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getExecution(
    _ request: Google_Cloud_Workflows_Executions_V1beta_GetExecutionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Workflows_Executions_V1beta_GetExecutionRequest, Google_Cloud_Workflows_Executions_V1beta_Execution> {
    return self.makeUnaryCall(
      path: "/google.cloud.workflows.executions.v1beta.Executions/GetExecution",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Cancels an execution of the given name.
  ///
  /// - Parameters:
  ///   - request: Request to send to CancelExecution.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cancelExecution(
    _ request: Google_Cloud_Workflows_Executions_V1beta_CancelExecutionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Workflows_Executions_V1beta_CancelExecutionRequest, Google_Cloud_Workflows_Executions_V1beta_Execution> {
    return self.makeUnaryCall(
      path: "/google.cloud.workflows.executions.v1beta.Executions/CancelExecution",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Workflows_Executions_V1beta_ExecutionsClient: Google_Cloud_Workflows_Executions_V1beta_ExecutionsClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.workflows.executions.v1beta.Executions service.
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
public protocol Google_Cloud_Workflows_Executions_V1beta_ExecutionsProvider: CallHandlerProvider {
  /// Returns a list of executions which belong to the workflow with
  /// the given name. The method returns executions of all workflow
  /// revisions. Returned executions are ordered by their start time (newest
  /// first).
  func listExecutions(request: Google_Cloud_Workflows_Executions_V1beta_ListExecutionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Workflows_Executions_V1beta_ListExecutionsResponse>
  /// Creates a new execution using the latest revision of the given workflow.
  func createExecution(request: Google_Cloud_Workflows_Executions_V1beta_CreateExecutionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Workflows_Executions_V1beta_Execution>
  /// Returns an execution of the given name.
  func getExecution(request: Google_Cloud_Workflows_Executions_V1beta_GetExecutionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Workflows_Executions_V1beta_Execution>
  /// Cancels an execution of the given name.
  func cancelExecution(request: Google_Cloud_Workflows_Executions_V1beta_CancelExecutionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Workflows_Executions_V1beta_Execution>
}

extension Google_Cloud_Workflows_Executions_V1beta_ExecutionsProvider {
  public var serviceName: Substring { return "google.cloud.workflows.executions.v1beta.Executions" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListExecutions":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listExecutions(request: request, context: context)
        }
      }

    case "CreateExecution":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createExecution(request: request, context: context)
        }
      }

    case "GetExecution":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getExecution(request: request, context: context)
        }
      }

    case "CancelExecution":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.cancelExecution(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

