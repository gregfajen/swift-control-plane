//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/dialogflow/cx/v3beta1/session.proto
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


/// Usage: instantiate Google_Cloud_Dialogflow_Cx_V3beta1_SessionsClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Dialogflow_Cx_V3beta1_SessionsClientProtocol: GRPCClient {
  func detectIntent(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_DetectIntentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_DetectIntentRequest, Google_Cloud_Dialogflow_Cx_V3beta1_DetectIntentResponse>

  func streamingDetectIntent(
    callOptions: CallOptions?,
    handler: @escaping (Google_Cloud_Dialogflow_Cx_V3beta1_StreamingDetectIntentResponse) -> Void
  ) -> BidirectionalStreamingCall<Google_Cloud_Dialogflow_Cx_V3beta1_StreamingDetectIntentRequest, Google_Cloud_Dialogflow_Cx_V3beta1_StreamingDetectIntentResponse>

  func matchIntent(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_MatchIntentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_MatchIntentRequest, Google_Cloud_Dialogflow_Cx_V3beta1_MatchIntentResponse>

  func fulfillIntent(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_FulfillIntentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_FulfillIntentRequest, Google_Cloud_Dialogflow_Cx_V3beta1_FulfillIntentResponse>

}

extension Google_Cloud_Dialogflow_Cx_V3beta1_SessionsClientProtocol {

  /// Processes a natural language query and returns structured, actionable data
  /// as a result. This method is not idempotent, because it may cause session
  /// entity types to be updated, which in turn might affect results of future
  /// queries.
  ///
  /// - Parameters:
  ///   - request: Request to send to DetectIntent.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func detectIntent(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_DetectIntentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_DetectIntentRequest, Google_Cloud_Dialogflow_Cx_V3beta1_DetectIntentResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3beta1.Sessions/DetectIntent",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Processes a natural language query in audio format in a streaming fashion
  /// and returns structured, actionable data as a result. This method is only
  /// available via the gRPC API (not REST).
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func streamingDetectIntent(
    callOptions: CallOptions? = nil,
    handler: @escaping (Google_Cloud_Dialogflow_Cx_V3beta1_StreamingDetectIntentResponse) -> Void
  ) -> BidirectionalStreamingCall<Google_Cloud_Dialogflow_Cx_V3beta1_StreamingDetectIntentRequest, Google_Cloud_Dialogflow_Cx_V3beta1_StreamingDetectIntentResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/google.cloud.dialogflow.cx.v3beta1.Sessions/StreamingDetectIntent",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  /// Returns preliminary intent match results, doesn't change the session
  /// status.
  ///
  /// - Parameters:
  ///   - request: Request to send to MatchIntent.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func matchIntent(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_MatchIntentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_MatchIntentRequest, Google_Cloud_Dialogflow_Cx_V3beta1_MatchIntentResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3beta1.Sessions/MatchIntent",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Fulfills a matched intent returned by [MatchIntent][google.cloud.dialogflow.cx.v3beta1.Sessions.MatchIntent].
  /// Must be called after [MatchIntent][google.cloud.dialogflow.cx.v3beta1.Sessions.MatchIntent], with input from
  /// [MatchIntentResponse][google.cloud.dialogflow.cx.v3beta1.MatchIntentResponse]. Otherwise, the behavior is undefined.
  ///
  /// - Parameters:
  ///   - request: Request to send to FulfillIntent.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func fulfillIntent(
    _ request: Google_Cloud_Dialogflow_Cx_V3beta1_FulfillIntentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3beta1_FulfillIntentRequest, Google_Cloud_Dialogflow_Cx_V3beta1_FulfillIntentResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3beta1.Sessions/FulfillIntent",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Dialogflow_Cx_V3beta1_SessionsClient: Google_Cloud_Dialogflow_Cx_V3beta1_SessionsClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.dialogflow.cx.v3beta1.Sessions service.
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
public protocol Google_Cloud_Dialogflow_Cx_V3beta1_SessionsProvider: CallHandlerProvider {
  /// Processes a natural language query and returns structured, actionable data
  /// as a result. This method is not idempotent, because it may cause session
  /// entity types to be updated, which in turn might affect results of future
  /// queries.
  func detectIntent(request: Google_Cloud_Dialogflow_Cx_V3beta1_DetectIntentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3beta1_DetectIntentResponse>
  /// Processes a natural language query in audio format in a streaming fashion
  /// and returns structured, actionable data as a result. This method is only
  /// available via the gRPC API (not REST).
  func streamingDetectIntent(context: StreamingResponseCallContext<Google_Cloud_Dialogflow_Cx_V3beta1_StreamingDetectIntentResponse>) -> EventLoopFuture<(StreamEvent<Google_Cloud_Dialogflow_Cx_V3beta1_StreamingDetectIntentRequest>) -> Void>
  /// Returns preliminary intent match results, doesn't change the session
  /// status.
  func matchIntent(request: Google_Cloud_Dialogflow_Cx_V3beta1_MatchIntentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3beta1_MatchIntentResponse>
  /// Fulfills a matched intent returned by [MatchIntent][google.cloud.dialogflow.cx.v3beta1.Sessions.MatchIntent].
  /// Must be called after [MatchIntent][google.cloud.dialogflow.cx.v3beta1.Sessions.MatchIntent], with input from
  /// [MatchIntentResponse][google.cloud.dialogflow.cx.v3beta1.MatchIntentResponse]. Otherwise, the behavior is undefined.
  func fulfillIntent(request: Google_Cloud_Dialogflow_Cx_V3beta1_FulfillIntentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3beta1_FulfillIntentResponse>
}

extension Google_Cloud_Dialogflow_Cx_V3beta1_SessionsProvider {
  public var serviceName: Substring { return "google.cloud.dialogflow.cx.v3beta1.Sessions" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "DetectIntent":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.detectIntent(request: request, context: context)
        }
      }

    case "StreamingDetectIntent":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.streamingDetectIntent(context: context)
      }

    case "MatchIntent":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.matchIntent(request: request, context: context)
        }
      }

    case "FulfillIntent":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.fulfillIntent(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
