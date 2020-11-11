//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/dialogflow/cx/v3/webhook.proto
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


/// Usage: instantiate Google_Cloud_Dialogflow_Cx_V3_WebhooksClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Dialogflow_Cx_V3_WebhooksClientProtocol: GRPCClient {
  func listWebhooks(
    _ request: Google_Cloud_Dialogflow_Cx_V3_ListWebhooksRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_ListWebhooksRequest, Google_Cloud_Dialogflow_Cx_V3_ListWebhooksResponse>

  func getWebhook(
    _ request: Google_Cloud_Dialogflow_Cx_V3_GetWebhookRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_GetWebhookRequest, Google_Cloud_Dialogflow_Cx_V3_Webhook>

  func createWebhook(
    _ request: Google_Cloud_Dialogflow_Cx_V3_CreateWebhookRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_CreateWebhookRequest, Google_Cloud_Dialogflow_Cx_V3_Webhook>

  func updateWebhook(
    _ request: Google_Cloud_Dialogflow_Cx_V3_UpdateWebhookRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_UpdateWebhookRequest, Google_Cloud_Dialogflow_Cx_V3_Webhook>

  func deleteWebhook(
    _ request: Google_Cloud_Dialogflow_Cx_V3_DeleteWebhookRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_DeleteWebhookRequest, SwiftProtobuf.Google_Protobuf_Empty>

}

extension Google_Cloud_Dialogflow_Cx_V3_WebhooksClientProtocol {

  /// Returns the list of all webhooks in the specified agent.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListWebhooks.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listWebhooks(
    _ request: Google_Cloud_Dialogflow_Cx_V3_ListWebhooksRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_ListWebhooksRequest, Google_Cloud_Dialogflow_Cx_V3_ListWebhooksResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3.Webhooks/ListWebhooks",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Retrieves the specified webhook.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetWebhook.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getWebhook(
    _ request: Google_Cloud_Dialogflow_Cx_V3_GetWebhookRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_GetWebhookRequest, Google_Cloud_Dialogflow_Cx_V3_Webhook> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3.Webhooks/GetWebhook",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a webhook in the specified agent.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateWebhook.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createWebhook(
    _ request: Google_Cloud_Dialogflow_Cx_V3_CreateWebhookRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_CreateWebhookRequest, Google_Cloud_Dialogflow_Cx_V3_Webhook> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3.Webhooks/CreateWebhook",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates the specified webhook.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateWebhook.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateWebhook(
    _ request: Google_Cloud_Dialogflow_Cx_V3_UpdateWebhookRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_UpdateWebhookRequest, Google_Cloud_Dialogflow_Cx_V3_Webhook> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3.Webhooks/UpdateWebhook",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes the specified webhook.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteWebhook.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteWebhook(
    _ request: Google_Cloud_Dialogflow_Cx_V3_DeleteWebhookRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dialogflow_Cx_V3_DeleteWebhookRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.dialogflow.cx.v3.Webhooks/DeleteWebhook",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Dialogflow_Cx_V3_WebhooksClient: Google_Cloud_Dialogflow_Cx_V3_WebhooksClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.dialogflow.cx.v3.Webhooks service.
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
public protocol Google_Cloud_Dialogflow_Cx_V3_WebhooksProvider: CallHandlerProvider {
  /// Returns the list of all webhooks in the specified agent.
  func listWebhooks(request: Google_Cloud_Dialogflow_Cx_V3_ListWebhooksRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3_ListWebhooksResponse>
  /// Retrieves the specified webhook.
  func getWebhook(request: Google_Cloud_Dialogflow_Cx_V3_GetWebhookRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3_Webhook>
  /// Creates a webhook in the specified agent.
  func createWebhook(request: Google_Cloud_Dialogflow_Cx_V3_CreateWebhookRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3_Webhook>
  /// Updates the specified webhook.
  func updateWebhook(request: Google_Cloud_Dialogflow_Cx_V3_UpdateWebhookRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dialogflow_Cx_V3_Webhook>
  /// Deletes the specified webhook.
  func deleteWebhook(request: Google_Cloud_Dialogflow_Cx_V3_DeleteWebhookRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
}

extension Google_Cloud_Dialogflow_Cx_V3_WebhooksProvider {
  public var serviceName: Substring { return "google.cloud.dialogflow.cx.v3.Webhooks" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListWebhooks":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listWebhooks(request: request, context: context)
        }
      }

    case "GetWebhook":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getWebhook(request: request, context: context)
        }
      }

    case "CreateWebhook":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createWebhook(request: request, context: context)
        }
      }

    case "UpdateWebhook":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateWebhook(request: request, context: context)
        }
      }

    case "DeleteWebhook":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteWebhook(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

