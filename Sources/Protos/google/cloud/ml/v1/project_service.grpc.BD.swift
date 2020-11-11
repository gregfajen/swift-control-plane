//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/ml/v1/project_service.proto
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


/// Usage: instantiate Google_Cloud_Ml_V1_ProjectManagementServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Ml_V1_ProjectManagementServiceClientProtocol: GRPCClient {
  func getConfig(
    _ request: Google_Cloud_Ml_V1_GetConfigRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Ml_V1_GetConfigRequest, Google_Cloud_Ml_V1_GetConfigResponse>

}

extension Google_Cloud_Ml_V1_ProjectManagementServiceClientProtocol {

  /// Get the service account information associated with your project. You need
  /// this information in order to grant the service account persmissions for
  /// the Google Cloud Storage location where you put your model training code
  /// for training the model with Google Cloud Machine Learning.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetConfig.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getConfig(
    _ request: Google_Cloud_Ml_V1_GetConfigRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Ml_V1_GetConfigRequest, Google_Cloud_Ml_V1_GetConfigResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.ml.v1.ProjectManagementService/GetConfig",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Ml_V1_ProjectManagementServiceClient: Google_Cloud_Ml_V1_ProjectManagementServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.ml.v1.ProjectManagementService service.
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
public protocol Google_Cloud_Ml_V1_ProjectManagementServiceProvider: CallHandlerProvider {
  /// Get the service account information associated with your project. You need
  /// this information in order to grant the service account persmissions for
  /// the Google Cloud Storage location where you put your model training code
  /// for training the model with Google Cloud Machine Learning.
  func getConfig(request: Google_Cloud_Ml_V1_GetConfigRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Ml_V1_GetConfigResponse>
}

extension Google_Cloud_Ml_V1_ProjectManagementServiceProvider {
  public var serviceName: Substring { return "google.cloud.ml.v1.ProjectManagementService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "GetConfig":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getConfig(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

