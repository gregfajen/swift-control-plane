//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: envoy/service/ratelimit/v3/rls.proto
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
import Foundation
import GRPC
import NIO
import NIOHTTP1
import SwiftProtobuf


/// Usage: instantiate Envoy_Service_Ratelimit_V3_RateLimitServiceClient, then call methods of this protocol to make API calls.
public protocol Envoy_Service_Ratelimit_V3_RateLimitServiceClientProtocol {
  func shouldRateLimit(_ request: Envoy_Service_Ratelimit_V3_RateLimitRequest, callOptions: CallOptions?) -> UnaryCall<Envoy_Service_Ratelimit_V3_RateLimitRequest, Envoy_Service_Ratelimit_V3_RateLimitResponse>
}

public final class Envoy_Service_Ratelimit_V3_RateLimitServiceClient: GRPCClient, Envoy_Service_Ratelimit_V3_RateLimitServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the envoy.service.ratelimit.v3.RateLimitService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }

  /// Determine whether rate limiting should take place.
  ///
  /// - Parameters:
  ///   - request: Request to send to ShouldRateLimit.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func shouldRateLimit(_ request: Envoy_Service_Ratelimit_V3_RateLimitRequest, callOptions: CallOptions? = nil) -> UnaryCall<Envoy_Service_Ratelimit_V3_RateLimitRequest, Envoy_Service_Ratelimit_V3_RateLimitResponse> {
    return self.makeUnaryCall(path: "/envoy.service.ratelimit.v3.RateLimitService/ShouldRateLimit",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

}

/// To build a server, implement a class that conforms to this protocol.
public protocol Envoy_Service_Ratelimit_V3_RateLimitServiceProvider: CallHandlerProvider {
  /// Determine whether rate limiting should take place.
  func shouldRateLimit(request: Envoy_Service_Ratelimit_V3_RateLimitRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Envoy_Service_Ratelimit_V3_RateLimitResponse>
}

extension Envoy_Service_Ratelimit_V3_RateLimitServiceProvider {
  public var serviceName: String { return "envoy.service.ratelimit.v3.RateLimitService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: String, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ShouldRateLimit":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.shouldRateLimit(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}


// Provides conformance to `GRPCPayload` for request and response messages
extension Envoy_Service_Ratelimit_V3_RateLimitRequest: GRPCProtobufPayload {}
extension Envoy_Service_Ratelimit_V3_RateLimitResponse: GRPCProtobufPayload {}

