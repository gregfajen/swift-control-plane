//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/retail/v2beta/prediction_service.proto
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


/// Usage: instantiate Google_Cloud_Retail_V2beta_PredictionServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Retail_V2beta_PredictionServiceClientProtocol: GRPCClient {
  func predict(
    _ request: Google_Cloud_Retail_V2beta_PredictRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_PredictRequest, Google_Cloud_Retail_V2beta_PredictResponse>

}

extension Google_Cloud_Retail_V2beta_PredictionServiceClientProtocol {

  /// Makes a recommendation prediction.
  ///
  /// - Parameters:
  ///   - request: Request to send to Predict.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func predict(
    _ request: Google_Cloud_Retail_V2beta_PredictRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_PredictRequest, Google_Cloud_Retail_V2beta_PredictResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.retail.v2beta.PredictionService/Predict",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Retail_V2beta_PredictionServiceClient: Google_Cloud_Retail_V2beta_PredictionServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.retail.v2beta.PredictionService service.
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
public protocol Google_Cloud_Retail_V2beta_PredictionServiceProvider: CallHandlerProvider {
  /// Makes a recommendation prediction.
  func predict(request: Google_Cloud_Retail_V2beta_PredictRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Retail_V2beta_PredictResponse>
}

extension Google_Cloud_Retail_V2beta_PredictionServiceProvider {
  public var serviceName: Substring { return "google.cloud.retail.v2beta.PredictionService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "Predict":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.predict(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

