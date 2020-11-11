//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: envoy/service/tap/v4alpha/tap.proto
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


/// Usage: instantiate Envoy_Service_Tap_V4alpha_TapSinkServiceClient, then call methods of this protocol to make API calls.
public protocol Envoy_Service_Tap_V4alpha_TapSinkServiceClientProtocol: GRPCClient {
  func streamTaps(
    callOptions: CallOptions?
  ) -> ClientStreamingCall<Envoy_Service_Tap_V4alpha_StreamTapsRequest, Envoy_Service_Tap_V4alpha_StreamTapsResponse>

}

extension Envoy_Service_Tap_V4alpha_TapSinkServiceClientProtocol {

  /// Envoy will connect and send StreamTapsRequest messages forever. It does not expect any
  /// response to be sent as nothing would be done in the case of failure. The server should
  /// disconnect if it expects Envoy to reconnect.
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata, status and response.
  public func streamTaps(
    callOptions: CallOptions? = nil
  ) -> ClientStreamingCall<Envoy_Service_Tap_V4alpha_StreamTapsRequest, Envoy_Service_Tap_V4alpha_StreamTapsResponse> {
    return self.makeClientStreamingCall(
      path: "/envoy.service.tap.v4alpha.TapSinkService/StreamTaps",
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Envoy_Service_Tap_V4alpha_TapSinkServiceClient: Envoy_Service_Tap_V4alpha_TapSinkServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the envoy.service.tap.v4alpha.TapSinkService service.
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
public protocol Envoy_Service_Tap_V4alpha_TapSinkServiceProvider: CallHandlerProvider {
  /// Envoy will connect and send StreamTapsRequest messages forever. It does not expect any
  /// response to be sent as nothing would be done in the case of failure. The server should
  /// disconnect if it expects Envoy to reconnect.
  func streamTaps(context: UnaryResponseCallContext<Envoy_Service_Tap_V4alpha_StreamTapsResponse>) -> EventLoopFuture<(StreamEvent<Envoy_Service_Tap_V4alpha_StreamTapsRequest>) -> Void>
}

extension Envoy_Service_Tap_V4alpha_TapSinkServiceProvider {
  public var serviceName: Substring { return "envoy.service.tap.v4alpha.TapSinkService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "StreamTaps":
      return CallHandlerFactory.makeClientStreaming(callHandlerContext: callHandlerContext) { context in
        return self.streamTaps(context: context)
      }

    default: return nil
    }
  }
}

