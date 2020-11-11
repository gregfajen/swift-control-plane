//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/recommendationengine/v1beta1/prediction_apikey_registry_service.proto
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


/// Usage: instantiate Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistryClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistryClientProtocol: GRPCClient {
  func createPredictionApiKeyRegistration(
    _ request: Google_Cloud_Recommendationengine_V1beta1_CreatePredictionApiKeyRegistrationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Recommendationengine_V1beta1_CreatePredictionApiKeyRegistrationRequest, Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistration>

  func listPredictionApiKeyRegistrations(
    _ request: Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsRequest, Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsResponse>

  func deletePredictionApiKeyRegistration(
    _ request: Google_Cloud_Recommendationengine_V1beta1_DeletePredictionApiKeyRegistrationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Recommendationengine_V1beta1_DeletePredictionApiKeyRegistrationRequest, SwiftProtobuf.Google_Protobuf_Empty>

}

extension Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistryClientProtocol {

  /// Register an API key for use with predict method.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreatePredictionApiKeyRegistration.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createPredictionApiKeyRegistration(
    _ request: Google_Cloud_Recommendationengine_V1beta1_CreatePredictionApiKeyRegistrationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Recommendationengine_V1beta1_CreatePredictionApiKeyRegistrationRequest, Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistration> {
    return self.makeUnaryCall(
      path: "/google.cloud.recommendationengine.v1beta1.PredictionApiKeyRegistry/CreatePredictionApiKeyRegistration",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// List the registered apiKeys for use with predict method.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListPredictionApiKeyRegistrations.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listPredictionApiKeyRegistrations(
    _ request: Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsRequest, Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.recommendationengine.v1beta1.PredictionApiKeyRegistry/ListPredictionApiKeyRegistrations",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unregister an apiKey from using for predict method.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeletePredictionApiKeyRegistration.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deletePredictionApiKeyRegistration(
    _ request: Google_Cloud_Recommendationengine_V1beta1_DeletePredictionApiKeyRegistrationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Recommendationengine_V1beta1_DeletePredictionApiKeyRegistrationRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.recommendationengine.v1beta1.PredictionApiKeyRegistry/DeletePredictionApiKeyRegistration",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistryClient: Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistryClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.recommendationengine.v1beta1.PredictionApiKeyRegistry service.
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
public protocol Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistryProvider: CallHandlerProvider {
  /// Register an API key for use with predict method.
  func createPredictionApiKeyRegistration(request: Google_Cloud_Recommendationengine_V1beta1_CreatePredictionApiKeyRegistrationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistration>
  /// List the registered apiKeys for use with predict method.
  func listPredictionApiKeyRegistrations(request: Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Recommendationengine_V1beta1_ListPredictionApiKeyRegistrationsResponse>
  /// Unregister an apiKey from using for predict method.
  func deletePredictionApiKeyRegistration(request: Google_Cloud_Recommendationengine_V1beta1_DeletePredictionApiKeyRegistrationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
}

extension Google_Cloud_Recommendationengine_V1beta1_PredictionApiKeyRegistryProvider {
  public var serviceName: Substring { return "google.cloud.recommendationengine.v1beta1.PredictionApiKeyRegistry" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreatePredictionApiKeyRegistration":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createPredictionApiKeyRegistration(request: request, context: context)
        }
      }

    case "ListPredictionApiKeyRegistrations":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listPredictionApiKeyRegistrations(request: request, context: context)
        }
      }

    case "DeletePredictionApiKeyRegistration":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deletePredictionApiKeyRegistration(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
