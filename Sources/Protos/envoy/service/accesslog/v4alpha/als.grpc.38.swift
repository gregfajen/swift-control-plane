//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: envoy/service/accesslog/v4alpha/als.proto
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


/// Usage: instantiate Envoy_Service_Accesslog_V4alpha_AccessLogServiceClient, then call methods of this protocol to make API calls.
public protocol Envoy_Service_Accesslog_V4alpha_AccessLogServiceClientProtocol: GRPCClient {
  func streamAccessLogs(
    callOptions: CallOptions?
  ) -> ClientStreamingCall<Envoy_Service_Accesslog_V4alpha_StreamAccessLogsMessage, Envoy_Service_Accesslog_V4alpha_StreamAccessLogsResponse>

}

extension Envoy_Service_Accesslog_V4alpha_AccessLogServiceClientProtocol {

  /// Envoy will connect and send StreamAccessLogsMessage messages forever. It does not expect any
  /// response to be sent as nothing would be done in the case of failure. The server should
  /// disconnect if it expects Envoy to reconnect. In the future we may decide to add a different
  /// API for "critical" access logs in which Envoy will buffer access logs for some period of time
  /// until it gets an ACK so it could then retry. This API is designed for high throughput with the
  /// expectation that it might be lossy.
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata, status and response.
  public func streamAccessLogs(
    callOptions: CallOptions? = nil
  ) -> ClientStreamingCall<Envoy_Service_Accesslog_V4alpha_StreamAccessLogsMessage, Envoy_Service_Accesslog_V4alpha_StreamAccessLogsResponse> {
    return self.makeClientStreamingCall(
      path: "/envoy.service.accesslog.v4alpha.AccessLogService/StreamAccessLogs",
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Envoy_Service_Accesslog_V4alpha_AccessLogServiceClient: Envoy_Service_Accesslog_V4alpha_AccessLogServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the envoy.service.accesslog.v4alpha.AccessLogService service.
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
public protocol Envoy_Service_Accesslog_V4alpha_AccessLogServiceProvider: CallHandlerProvider {
  /// Envoy will connect and send StreamAccessLogsMessage messages forever. It does not expect any
  /// response to be sent as nothing would be done in the case of failure. The server should
  /// disconnect if it expects Envoy to reconnect. In the future we may decide to add a different
  /// API for "critical" access logs in which Envoy will buffer access logs for some period of time
  /// until it gets an ACK so it could then retry. This API is designed for high throughput with the
  /// expectation that it might be lossy.
  func streamAccessLogs(context: UnaryResponseCallContext<Envoy_Service_Accesslog_V4alpha_StreamAccessLogsResponse>) -> EventLoopFuture<(StreamEvent<Envoy_Service_Accesslog_V4alpha_StreamAccessLogsMessage>) -> Void>
}

extension Envoy_Service_Accesslog_V4alpha_AccessLogServiceProvider {
  public var serviceName: Substring { return "envoy.service.accesslog.v4alpha.AccessLogService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "StreamAccessLogs":
      return CallHandlerFactory.makeClientStreaming(callHandlerContext: callHandlerContext) { context in
        return self.streamAccessLogs(context: context)
      }

    default: return nil
    }
  }
}

