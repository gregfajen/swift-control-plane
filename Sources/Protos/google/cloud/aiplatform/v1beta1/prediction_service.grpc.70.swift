//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/aiplatform/v1beta1/prediction_service.proto
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


/// Usage: instantiate Google_Cloud_Aiplatform_V1beta1_PredictionServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Aiplatform_V1beta1_PredictionServiceClientProtocol: GRPCClient {
  func predict(
    _ request: Google_Cloud_Aiplatform_V1beta1_PredictRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_PredictRequest, Google_Cloud_Aiplatform_V1beta1_PredictResponse>

  func explain(
    _ request: Google_Cloud_Aiplatform_V1beta1_ExplainRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ExplainRequest, Google_Cloud_Aiplatform_V1beta1_ExplainResponse>

}

extension Google_Cloud_Aiplatform_V1beta1_PredictionServiceClientProtocol {

  /// Perform an online prediction.
  ///
  /// - Parameters:
  ///   - request: Request to send to Predict.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func predict(
    _ request: Google_Cloud_Aiplatform_V1beta1_PredictRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_PredictRequest, Google_Cloud_Aiplatform_V1beta1_PredictResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.PredictionService/Predict",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Perform an online explanation.
  ///
  /// If [deployed_model_id][google.cloud.aiplatform.v1beta1.ExplainRequest.deployed_model_id] is specified,
  /// the corresponding DeployModel must have
  /// [explanation_spec][google.cloud.aiplatform.v1beta1.DeployedModel.explanation_spec]
  /// populated. If [deployed_model_id][google.cloud.aiplatform.v1beta1.ExplainRequest.deployed_model_id]
  /// is not specified, all DeployedModels must have
  /// [explanation_spec][google.cloud.aiplatform.v1beta1.DeployedModel.explanation_spec]
  /// populated. Only deployed AutoML tabular Models have
  /// explanation_spec.
  ///
  /// - Parameters:
  ///   - request: Request to send to Explain.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func explain(
    _ request: Google_Cloud_Aiplatform_V1beta1_ExplainRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ExplainRequest, Google_Cloud_Aiplatform_V1beta1_ExplainResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.PredictionService/Explain",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Aiplatform_V1beta1_PredictionServiceClient: Google_Cloud_Aiplatform_V1beta1_PredictionServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.aiplatform.v1beta1.PredictionService service.
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
public protocol Google_Cloud_Aiplatform_V1beta1_PredictionServiceProvider: CallHandlerProvider {
  /// Perform an online prediction.
  func predict(request: Google_Cloud_Aiplatform_V1beta1_PredictRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_PredictResponse>
  /// Perform an online explanation.
  ///
  /// If [deployed_model_id][google.cloud.aiplatform.v1beta1.ExplainRequest.deployed_model_id] is specified,
  /// the corresponding DeployModel must have
  /// [explanation_spec][google.cloud.aiplatform.v1beta1.DeployedModel.explanation_spec]
  /// populated. If [deployed_model_id][google.cloud.aiplatform.v1beta1.ExplainRequest.deployed_model_id]
  /// is not specified, all DeployedModels must have
  /// [explanation_spec][google.cloud.aiplatform.v1beta1.DeployedModel.explanation_spec]
  /// populated. Only deployed AutoML tabular Models have
  /// explanation_spec.
  func explain(request: Google_Cloud_Aiplatform_V1beta1_ExplainRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_ExplainResponse>
}

extension Google_Cloud_Aiplatform_V1beta1_PredictionServiceProvider {
  public var serviceName: Substring { return "google.cloud.aiplatform.v1beta1.PredictionService" }

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

    case "Explain":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.explain(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

