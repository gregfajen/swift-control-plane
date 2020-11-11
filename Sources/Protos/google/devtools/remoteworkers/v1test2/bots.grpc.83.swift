//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/devtools/remoteworkers/v1test2/bots.proto
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


/// Usage: instantiate Google_Devtools_Remoteworkers_V1test2_BotsClient, then call methods of this protocol to make API calls.
public protocol Google_Devtools_Remoteworkers_V1test2_BotsClientProtocol: GRPCClient {
  func createBotSession(
    _ request: Google_Devtools_Remoteworkers_V1test2_CreateBotSessionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Devtools_Remoteworkers_V1test2_CreateBotSessionRequest, Google_Devtools_Remoteworkers_V1test2_BotSession>

  func updateBotSession(
    _ request: Google_Devtools_Remoteworkers_V1test2_UpdateBotSessionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Devtools_Remoteworkers_V1test2_UpdateBotSessionRequest, Google_Devtools_Remoteworkers_V1test2_BotSession>

}

extension Google_Devtools_Remoteworkers_V1test2_BotsClientProtocol {

  /// CreateBotSession is called when the bot first joins the farm, and
  /// establishes a session ID to ensure that multiple machines do not register
  /// using the same name accidentally.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateBotSession.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createBotSession(
    _ request: Google_Devtools_Remoteworkers_V1test2_CreateBotSessionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Devtools_Remoteworkers_V1test2_CreateBotSessionRequest, Google_Devtools_Remoteworkers_V1test2_BotSession> {
    return self.makeUnaryCall(
      path: "/google.devtools.remoteworkers.v1test2.Bots/CreateBotSession",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// UpdateBotSession must be called periodically by the bot (on a schedule
  /// determined by the server) to let the server know about its status, and to
  /// pick up new lease requests from the server.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateBotSession.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateBotSession(
    _ request: Google_Devtools_Remoteworkers_V1test2_UpdateBotSessionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Devtools_Remoteworkers_V1test2_UpdateBotSessionRequest, Google_Devtools_Remoteworkers_V1test2_BotSession> {
    return self.makeUnaryCall(
      path: "/google.devtools.remoteworkers.v1test2.Bots/UpdateBotSession",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Devtools_Remoteworkers_V1test2_BotsClient: Google_Devtools_Remoteworkers_V1test2_BotsClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.devtools.remoteworkers.v1test2.Bots service.
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
public protocol Google_Devtools_Remoteworkers_V1test2_BotsProvider: CallHandlerProvider {
  /// CreateBotSession is called when the bot first joins the farm, and
  /// establishes a session ID to ensure that multiple machines do not register
  /// using the same name accidentally.
  func createBotSession(request: Google_Devtools_Remoteworkers_V1test2_CreateBotSessionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Devtools_Remoteworkers_V1test2_BotSession>
  /// UpdateBotSession must be called periodically by the bot (on a schedule
  /// determined by the server) to let the server know about its status, and to
  /// pick up new lease requests from the server.
  func updateBotSession(request: Google_Devtools_Remoteworkers_V1test2_UpdateBotSessionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Devtools_Remoteworkers_V1test2_BotSession>
}

extension Google_Devtools_Remoteworkers_V1test2_BotsProvider {
  public var serviceName: Substring { return "google.devtools.remoteworkers.v1test2.Bots" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateBotSession":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createBotSession(request: request, context: context)
        }
      }

    case "UpdateBotSession":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateBotSession(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

