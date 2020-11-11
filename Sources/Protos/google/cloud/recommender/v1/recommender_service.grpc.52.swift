//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/recommender/v1/recommender_service.proto
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


/// Usage: instantiate Google_Cloud_Recommender_V1_RecommenderClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Recommender_V1_RecommenderClientProtocol: GRPCClient {
  func listInsights(
    _ request: Google_Cloud_Recommender_V1_ListInsightsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Recommender_V1_ListInsightsRequest, Google_Cloud_Recommender_V1_ListInsightsResponse>

  func getInsight(
    _ request: Google_Cloud_Recommender_V1_GetInsightRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Recommender_V1_GetInsightRequest, Google_Cloud_Recommender_V1_Insight>

  func markInsightAccepted(
    _ request: Google_Cloud_Recommender_V1_MarkInsightAcceptedRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Recommender_V1_MarkInsightAcceptedRequest, Google_Cloud_Recommender_V1_Insight>

  func listRecommendations(
    _ request: Google_Cloud_Recommender_V1_ListRecommendationsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Recommender_V1_ListRecommendationsRequest, Google_Cloud_Recommender_V1_ListRecommendationsResponse>

  func getRecommendation(
    _ request: Google_Cloud_Recommender_V1_GetRecommendationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Recommender_V1_GetRecommendationRequest, Google_Cloud_Recommender_V1_Recommendation>

  func markRecommendationClaimed(
    _ request: Google_Cloud_Recommender_V1_MarkRecommendationClaimedRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Recommender_V1_MarkRecommendationClaimedRequest, Google_Cloud_Recommender_V1_Recommendation>

  func markRecommendationSucceeded(
    _ request: Google_Cloud_Recommender_V1_MarkRecommendationSucceededRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Recommender_V1_MarkRecommendationSucceededRequest, Google_Cloud_Recommender_V1_Recommendation>

  func markRecommendationFailed(
    _ request: Google_Cloud_Recommender_V1_MarkRecommendationFailedRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Recommender_V1_MarkRecommendationFailedRequest, Google_Cloud_Recommender_V1_Recommendation>

}

extension Google_Cloud_Recommender_V1_RecommenderClientProtocol {

  /// Lists insights for a Cloud project. Requires the recommender.*.list IAM
  /// permission for the specified insight type.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListInsights.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listInsights(
    _ request: Google_Cloud_Recommender_V1_ListInsightsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Recommender_V1_ListInsightsRequest, Google_Cloud_Recommender_V1_ListInsightsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.recommender.v1.Recommender/ListInsights",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the requested insight. Requires the recommender.*.get IAM permission
  /// for the specified insight type.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetInsight.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getInsight(
    _ request: Google_Cloud_Recommender_V1_GetInsightRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Recommender_V1_GetInsightRequest, Google_Cloud_Recommender_V1_Insight> {
    return self.makeUnaryCall(
      path: "/google.cloud.recommender.v1.Recommender/GetInsight",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Marks the Insight State as Accepted. Users can use this method to
  /// indicate to the Recommender API that they have applied some action based
  /// on the insight. This stops the insight content from being updated.
  ///
  /// MarkInsightAccepted can be applied to insights in ACTIVE state. Requires
  /// the recommender.*.update IAM permission for the specified insight.
  ///
  /// - Parameters:
  ///   - request: Request to send to MarkInsightAccepted.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func markInsightAccepted(
    _ request: Google_Cloud_Recommender_V1_MarkInsightAcceptedRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Recommender_V1_MarkInsightAcceptedRequest, Google_Cloud_Recommender_V1_Insight> {
    return self.makeUnaryCall(
      path: "/google.cloud.recommender.v1.Recommender/MarkInsightAccepted",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists recommendations for a Cloud project. Requires the recommender.*.list
  /// IAM permission for the specified recommender.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListRecommendations.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listRecommendations(
    _ request: Google_Cloud_Recommender_V1_ListRecommendationsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Recommender_V1_ListRecommendationsRequest, Google_Cloud_Recommender_V1_ListRecommendationsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.recommender.v1.Recommender/ListRecommendations",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the requested recommendation. Requires the recommender.*.get
  /// IAM permission for the specified recommender.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetRecommendation.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getRecommendation(
    _ request: Google_Cloud_Recommender_V1_GetRecommendationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Recommender_V1_GetRecommendationRequest, Google_Cloud_Recommender_V1_Recommendation> {
    return self.makeUnaryCall(
      path: "/google.cloud.recommender.v1.Recommender/GetRecommendation",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Marks the Recommendation State as Claimed. Users can use this method to
  /// indicate to the Recommender API that they are starting to apply the
  /// recommendation themselves. This stops the recommendation content from being
  /// updated. Associated insights are frozen and placed in the ACCEPTED state.
  ///
  /// MarkRecommendationClaimed can be applied to recommendations in CLAIMED,
  /// SUCCEEDED, FAILED, or ACTIVE state.
  ///
  /// Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  ///
  /// - Parameters:
  ///   - request: Request to send to MarkRecommendationClaimed.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func markRecommendationClaimed(
    _ request: Google_Cloud_Recommender_V1_MarkRecommendationClaimedRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Recommender_V1_MarkRecommendationClaimedRequest, Google_Cloud_Recommender_V1_Recommendation> {
    return self.makeUnaryCall(
      path: "/google.cloud.recommender.v1.Recommender/MarkRecommendationClaimed",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Marks the Recommendation State as Succeeded. Users can use this method to
  /// indicate to the Recommender API that they have applied the recommendation
  /// themselves, and the operation was successful. This stops the recommendation
  /// content from being updated. Associated insights are frozen and placed in
  /// the ACCEPTED state.
  ///
  /// MarkRecommendationSucceeded can be applied to recommendations in ACTIVE,
  /// CLAIMED, SUCCEEDED, or FAILED state.
  ///
  /// Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  ///
  /// - Parameters:
  ///   - request: Request to send to MarkRecommendationSucceeded.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func markRecommendationSucceeded(
    _ request: Google_Cloud_Recommender_V1_MarkRecommendationSucceededRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Recommender_V1_MarkRecommendationSucceededRequest, Google_Cloud_Recommender_V1_Recommendation> {
    return self.makeUnaryCall(
      path: "/google.cloud.recommender.v1.Recommender/MarkRecommendationSucceeded",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Marks the Recommendation State as Failed. Users can use this method to
  /// indicate to the Recommender API that they have applied the recommendation
  /// themselves, and the operation failed. This stops the recommendation content
  /// from being updated. Associated insights are frozen and placed in the
  /// ACCEPTED state.
  ///
  /// MarkRecommendationFailed can be applied to recommendations in ACTIVE,
  /// CLAIMED, SUCCEEDED, or FAILED state.
  ///
  /// Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  ///
  /// - Parameters:
  ///   - request: Request to send to MarkRecommendationFailed.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func markRecommendationFailed(
    _ request: Google_Cloud_Recommender_V1_MarkRecommendationFailedRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Recommender_V1_MarkRecommendationFailedRequest, Google_Cloud_Recommender_V1_Recommendation> {
    return self.makeUnaryCall(
      path: "/google.cloud.recommender.v1.Recommender/MarkRecommendationFailed",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Recommender_V1_RecommenderClient: Google_Cloud_Recommender_V1_RecommenderClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.recommender.v1.Recommender service.
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
public protocol Google_Cloud_Recommender_V1_RecommenderProvider: CallHandlerProvider {
  /// Lists insights for a Cloud project. Requires the recommender.*.list IAM
  /// permission for the specified insight type.
  func listInsights(request: Google_Cloud_Recommender_V1_ListInsightsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Recommender_V1_ListInsightsResponse>
  /// Gets the requested insight. Requires the recommender.*.get IAM permission
  /// for the specified insight type.
  func getInsight(request: Google_Cloud_Recommender_V1_GetInsightRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Recommender_V1_Insight>
  /// Marks the Insight State as Accepted. Users can use this method to
  /// indicate to the Recommender API that they have applied some action based
  /// on the insight. This stops the insight content from being updated.
  ///
  /// MarkInsightAccepted can be applied to insights in ACTIVE state. Requires
  /// the recommender.*.update IAM permission for the specified insight.
  func markInsightAccepted(request: Google_Cloud_Recommender_V1_MarkInsightAcceptedRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Recommender_V1_Insight>
  /// Lists recommendations for a Cloud project. Requires the recommender.*.list
  /// IAM permission for the specified recommender.
  func listRecommendations(request: Google_Cloud_Recommender_V1_ListRecommendationsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Recommender_V1_ListRecommendationsResponse>
  /// Gets the requested recommendation. Requires the recommender.*.get
  /// IAM permission for the specified recommender.
  func getRecommendation(request: Google_Cloud_Recommender_V1_GetRecommendationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Recommender_V1_Recommendation>
  /// Marks the Recommendation State as Claimed. Users can use this method to
  /// indicate to the Recommender API that they are starting to apply the
  /// recommendation themselves. This stops the recommendation content from being
  /// updated. Associated insights are frozen and placed in the ACCEPTED state.
  ///
  /// MarkRecommendationClaimed can be applied to recommendations in CLAIMED,
  /// SUCCEEDED, FAILED, or ACTIVE state.
  ///
  /// Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  func markRecommendationClaimed(request: Google_Cloud_Recommender_V1_MarkRecommendationClaimedRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Recommender_V1_Recommendation>
  /// Marks the Recommendation State as Succeeded. Users can use this method to
  /// indicate to the Recommender API that they have applied the recommendation
  /// themselves, and the operation was successful. This stops the recommendation
  /// content from being updated. Associated insights are frozen and placed in
  /// the ACCEPTED state.
  ///
  /// MarkRecommendationSucceeded can be applied to recommendations in ACTIVE,
  /// CLAIMED, SUCCEEDED, or FAILED state.
  ///
  /// Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  func markRecommendationSucceeded(request: Google_Cloud_Recommender_V1_MarkRecommendationSucceededRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Recommender_V1_Recommendation>
  /// Marks the Recommendation State as Failed. Users can use this method to
  /// indicate to the Recommender API that they have applied the recommendation
  /// themselves, and the operation failed. This stops the recommendation content
  /// from being updated. Associated insights are frozen and placed in the
  /// ACCEPTED state.
  ///
  /// MarkRecommendationFailed can be applied to recommendations in ACTIVE,
  /// CLAIMED, SUCCEEDED, or FAILED state.
  ///
  /// Requires the recommender.*.update IAM permission for the specified
  /// recommender.
  func markRecommendationFailed(request: Google_Cloud_Recommender_V1_MarkRecommendationFailedRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Recommender_V1_Recommendation>
}

extension Google_Cloud_Recommender_V1_RecommenderProvider {
  public var serviceName: Substring { return "google.cloud.recommender.v1.Recommender" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListInsights":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listInsights(request: request, context: context)
        }
      }

    case "GetInsight":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getInsight(request: request, context: context)
        }
      }

    case "MarkInsightAccepted":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.markInsightAccepted(request: request, context: context)
        }
      }

    case "ListRecommendations":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listRecommendations(request: request, context: context)
        }
      }

    case "GetRecommendation":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getRecommendation(request: request, context: context)
        }
      }

    case "MarkRecommendationClaimed":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.markRecommendationClaimed(request: request, context: context)
        }
      }

    case "MarkRecommendationSucceeded":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.markRecommendationSucceeded(request: request, context: context)
        }
      }

    case "MarkRecommendationFailed":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.markRecommendationFailed(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
