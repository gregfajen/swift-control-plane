//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: envoy/service/auth/v4alpha/external_auth.proto
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


/// Usage: instantiate Envoy_Service_Auth_V4alpha_AuthorizationClient, then call methods of this protocol to make API calls.
public protocol Envoy_Service_Auth_V4alpha_AuthorizationClientProtocol: GRPCClient {
  func check(
    _ request: Envoy_Service_Auth_V4alpha_CheckRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Envoy_Service_Auth_V4alpha_CheckRequest, Envoy_Service_Auth_V4alpha_CheckResponse>

}

extension Envoy_Service_Auth_V4alpha_AuthorizationClientProtocol {

  /// Performs authorization check based on the attributes associated with the
  /// incoming request, and returns status `OK` or not `OK`.
  ///
  /// - Parameters:
  ///   - request: Request to send to Check.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func check(
    _ request: Envoy_Service_Auth_V4alpha_CheckRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Envoy_Service_Auth_V4alpha_CheckRequest, Envoy_Service_Auth_V4alpha_CheckResponse> {
    return self.makeUnaryCall(
      path: "/envoy.service.auth.v4alpha.Authorization/Check",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Envoy_Service_Auth_V4alpha_AuthorizationClient: Envoy_Service_Auth_V4alpha_AuthorizationClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the envoy.service.auth.v4alpha.Authorization service.
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
public protocol Envoy_Service_Auth_V4alpha_AuthorizationProvider: CallHandlerProvider {
  /// Performs authorization check based on the attributes associated with the
  /// incoming request, and returns status `OK` or not `OK`.
  func check(request: Envoy_Service_Auth_V4alpha_CheckRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Envoy_Service_Auth_V4alpha_CheckResponse>
}

extension Envoy_Service_Auth_V4alpha_AuthorizationProvider {
  public var serviceName: Substring { return "envoy.service.auth.v4alpha.Authorization" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "Check":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.check(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

