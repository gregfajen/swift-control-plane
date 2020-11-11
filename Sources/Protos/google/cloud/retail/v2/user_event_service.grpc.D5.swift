//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/retail/v2/user_event_service.proto
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


/// Usage: instantiate Google_Cloud_Retail_V2_UserEventServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Retail_V2_UserEventServiceClientProtocol: GRPCClient {
  func writeUserEvent(
    _ request: Google_Cloud_Retail_V2_WriteUserEventRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Retail_V2_WriteUserEventRequest, Google_Cloud_Retail_V2_UserEvent>

  func collectUserEvent(
    _ request: Google_Cloud_Retail_V2_CollectUserEventRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Retail_V2_CollectUserEventRequest, Google_Api_HttpBody>

  func purgeUserEvents(
    _ request: Google_Cloud_Retail_V2_PurgeUserEventsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Retail_V2_PurgeUserEventsRequest, Google_Longrunning_Operation>

  func importUserEvents(
    _ request: Google_Cloud_Retail_V2_ImportUserEventsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Retail_V2_ImportUserEventsRequest, Google_Longrunning_Operation>

  func rejoinUserEvents(
    _ request: Google_Cloud_Retail_V2_RejoinUserEventsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Retail_V2_RejoinUserEventsRequest, Google_Longrunning_Operation>

}

extension Google_Cloud_Retail_V2_UserEventServiceClientProtocol {

  /// Writes a single user event.
  ///
  /// - Parameters:
  ///   - request: Request to send to WriteUserEvent.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func writeUserEvent(
    _ request: Google_Cloud_Retail_V2_WriteUserEventRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Retail_V2_WriteUserEventRequest, Google_Cloud_Retail_V2_UserEvent> {
    return self.makeUnaryCall(
      path: "/google.cloud.retail.v2.UserEventService/WriteUserEvent",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Writes a single user event from the browser. This uses a GET request to
  /// due to browser restriction of POST-ing to a 3rd party domain.
  ///
  /// This method is used only by the Recommendations AI JavaScript pixel and
  /// Google Tag Manager. Users should not call this method directly.
  ///
  /// - Parameters:
  ///   - request: Request to send to CollectUserEvent.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func collectUserEvent(
    _ request: Google_Cloud_Retail_V2_CollectUserEventRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Retail_V2_CollectUserEventRequest, Google_Api_HttpBody> {
    return self.makeUnaryCall(
      path: "/google.cloud.retail.v2.UserEventService/CollectUserEvent",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes permanently all user events specified by the filter provided.
  /// Depending on the number of events specified by the filter, this operation
  /// could take hours or days to complete. To test a filter, use the list
  /// command first.
  ///
  /// - Parameters:
  ///   - request: Request to send to PurgeUserEvents.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func purgeUserEvents(
    _ request: Google_Cloud_Retail_V2_PurgeUserEventsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Retail_V2_PurgeUserEventsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.retail.v2.UserEventService/PurgeUserEvents",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Bulk import of User events. Request processing might be
  /// synchronous. Events that already exist are skipped.
  /// Use this method for backfilling historical user events.
  ///
  /// Operation.response is of type ImportResponse. Note that it is
  /// possible for a subset of the items to be successfully inserted.
  /// Operation.metadata is of type ImportMetadata.
  ///
  /// - Parameters:
  ///   - request: Request to send to ImportUserEvents.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func importUserEvents(
    _ request: Google_Cloud_Retail_V2_ImportUserEventsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Retail_V2_ImportUserEventsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.retail.v2.UserEventService/ImportUserEvents",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Triggers a user event rejoin operation with latest catalog data. Events
  /// will not be annotated with detailed catalog information if catalog item is
  /// missing at the time the user event is ingested, and these events are stored
  /// as unjoined events with a limited usage on training and serving. This API
  /// can be used to trigger a 'join' operation on specified events with latest
  /// version of catalog items. It can also be used to correct events joined with
  /// wrong catalog items.
  ///
  /// - Parameters:
  ///   - request: Request to send to RejoinUserEvents.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func rejoinUserEvents(
    _ request: Google_Cloud_Retail_V2_RejoinUserEventsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Retail_V2_RejoinUserEventsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.retail.v2.UserEventService/RejoinUserEvents",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Retail_V2_UserEventServiceClient: Google_Cloud_Retail_V2_UserEventServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.retail.v2.UserEventService service.
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
public protocol Google_Cloud_Retail_V2_UserEventServiceProvider: CallHandlerProvider {
  /// Writes a single user event.
  func writeUserEvent(request: Google_Cloud_Retail_V2_WriteUserEventRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Retail_V2_UserEvent>
  /// Writes a single user event from the browser. This uses a GET request to
  /// due to browser restriction of POST-ing to a 3rd party domain.
  ///
  /// This method is used only by the Recommendations AI JavaScript pixel and
  /// Google Tag Manager. Users should not call this method directly.
  func collectUserEvent(request: Google_Cloud_Retail_V2_CollectUserEventRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Api_HttpBody>
  /// Deletes permanently all user events specified by the filter provided.
  /// Depending on the number of events specified by the filter, this operation
  /// could take hours or days to complete. To test a filter, use the list
  /// command first.
  func purgeUserEvents(request: Google_Cloud_Retail_V2_PurgeUserEventsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Bulk import of User events. Request processing might be
  /// synchronous. Events that already exist are skipped.
  /// Use this method for backfilling historical user events.
  ///
  /// Operation.response is of type ImportResponse. Note that it is
  /// possible for a subset of the items to be successfully inserted.
  /// Operation.metadata is of type ImportMetadata.
  func importUserEvents(request: Google_Cloud_Retail_V2_ImportUserEventsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Triggers a user event rejoin operation with latest catalog data. Events
  /// will not be annotated with detailed catalog information if catalog item is
  /// missing at the time the user event is ingested, and these events are stored
  /// as unjoined events with a limited usage on training and serving. This API
  /// can be used to trigger a 'join' operation on specified events with latest
  /// version of catalog items. It can also be used to correct events joined with
  /// wrong catalog items.
  func rejoinUserEvents(request: Google_Cloud_Retail_V2_RejoinUserEventsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
}

extension Google_Cloud_Retail_V2_UserEventServiceProvider {
  public var serviceName: Substring { return "google.cloud.retail.v2.UserEventService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "WriteUserEvent":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.writeUserEvent(request: request, context: context)
        }
      }

    case "CollectUserEvent":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.collectUserEvent(request: request, context: context)
        }
      }

    case "PurgeUserEvents":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.purgeUserEvents(request: request, context: context)
        }
      }

    case "ImportUserEvents":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.importUserEvents(request: request, context: context)
        }
      }

    case "RejoinUserEvents":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.rejoinUserEvents(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

