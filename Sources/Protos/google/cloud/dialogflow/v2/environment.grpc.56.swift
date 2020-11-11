//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/dialogflow/v2/environment.proto
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


/// Usage: instantiate Google_Cloud_Dialogflow_V2_EnvironmentsClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Dialogflow_V2_EnvironmentsClientProtocol: GRPCClient {
  func listEnvironments(
    _ request: Google_Cloud_Dialogflow_V2_ListEnvironmentsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_V2_ListEnvironmentsRequest, Google_Cloud_Dialogflow_V2_ListEnvironmentsResponse>

}

extension Google_Cloud_Dialogflow_V2_EnvironmentsClientProtocol {

  /// Returns the list of all non-draft environments of the specified agent.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListEnvironments.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listEnvironments(
    _ request: Google_Cloud_Dialogflow_V2_ListEnvironmentsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_V2_ListEnvironmentsRequest, Google_Cloud_Dialogflow_V2_ListEnvironmentsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.v2.Environments/ListEnvironments",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Dialogflow_V2_EnvironmentsClient: Google_Cloud_Dialogflow_V2_EnvironmentsClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.dialogflow.v2.Environments service.
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
public protocol Google_Cloud_Dialogflow_V2_EnvironmentsProvider: CallHandlerProvider {
  /// Returns the list of all non-draft environments of the specified agent.
  func listEnvironments(request: Google_Cloud_Dialogflow_V2_ListEnvironmentsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_V2_ListEnvironmentsResponse>
}

extension Google_Cloud_Dialogflow_V2_EnvironmentsProvider {
  public var serviceName: Substring { return "google.cloud.dialogflow.v2.Environments" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListEnvironments":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listEnvironments(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
