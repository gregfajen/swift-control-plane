//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/assistant/embedded/v1alpha1/embedded_assistant.proto
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


/// Usage: instantiate Google_Assistant_Embedded_V1alpha1_EmbeddedAssistantClient, then call methods of this protocol to make API calls.
public protocol Google_Assistant_Embedded_V1alpha1_EmbeddedAssistantClientProtocol: GRPCClient {
  func converse(
    callOptions: CallOptions?,
    handler: @escaping (Google_Assistant_Embedded_V1alpha1_ConverseResponse) -> Void
  ) -> BidirectionalStreamingCall<Google_Assistant_Embedded_V1alpha1_ConverseRequest, Google_Assistant_Embedded_V1alpha1_ConverseResponse>

}

extension Google_Assistant_Embedded_V1alpha1_EmbeddedAssistantClientProtocol {

  /// Initiates or continues a conversation with the embedded assistant service.
  /// Each call performs one round-trip, sending an audio request to the service
  /// and receiving the audio response. Uses bidirectional streaming to receive
  /// results, such as the `END_OF_UTTERANCE` event, while sending audio.
  ///
  /// A conversation is one or more gRPC connections, each consisting of several
  /// streamed requests and responses.
  /// For example, the user says *Add to my shopping list* and the assistant
  /// responds *What do you want to add?*. The sequence of streamed requests and
  /// responses in the first gRPC message could be:
  ///
  /// *   ConverseRequest.config
  /// *   ConverseRequest.audio_in
  /// *   ConverseRequest.audio_in
  /// *   ConverseRequest.audio_in
  /// *   ConverseRequest.audio_in
  /// *   ConverseResponse.event_type.END_OF_UTTERANCE
  /// *   ConverseResponse.result.microphone_mode.DIALOG_FOLLOW_ON
  /// *   ConverseResponse.audio_out
  /// *   ConverseResponse.audio_out
  /// *   ConverseResponse.audio_out
  ///
  /// The user then says *bagels* and the assistant responds
  /// *OK, I've added bagels to your shopping list*. This is sent as another gRPC
  /// connection call to the `Converse` method, again with streamed requests and
  /// responses, such as:
  ///
  /// *   ConverseRequest.config
  /// *   ConverseRequest.audio_in
  /// *   ConverseRequest.audio_in
  /// *   ConverseRequest.audio_in
  /// *   ConverseResponse.event_type.END_OF_UTTERANCE
  /// *   ConverseResponse.result.microphone_mode.CLOSE_MICROPHONE
  /// *   ConverseResponse.audio_out
  /// *   ConverseResponse.audio_out
  /// *   ConverseResponse.audio_out
  /// *   ConverseResponse.audio_out
  ///
  /// Although the precise order of responses is not guaranteed, sequential
  /// ConverseResponse.audio_out messages will always contain sequential portions
  /// of audio.
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func converse(
    callOptions: CallOptions? = nil,
    handler: @escaping (Google_Assistant_Embedded_V1alpha1_ConverseResponse) -> Void
  ) -> BidirectionalStreamingCall<Google_Assistant_Embedded_V1alpha1_ConverseRequest, Google_Assistant_Embedded_V1alpha1_ConverseResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/google.assistant.embedded.v1alpha1.EmbeddedAssistant/Converse",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }
}

public final class Google_Assistant_Embedded_V1alpha1_EmbeddedAssistantClient: Google_Assistant_Embedded_V1alpha1_EmbeddedAssistantClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.assistant.embedded.v1alpha1.EmbeddedAssistant service.
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
public protocol Google_Assistant_Embedded_V1alpha1_EmbeddedAssistantProvider: CallHandlerProvider {
  /// Initiates or continues a conversation with the embedded assistant service.
  /// Each call performs one round-trip, sending an audio request to the service
  /// and receiving the audio response. Uses bidirectional streaming to receive
  /// results, such as the `END_OF_UTTERANCE` event, while sending audio.
  ///
  /// A conversation is one or more gRPC connections, each consisting of several
  /// streamed requests and responses.
  /// For example, the user says *Add to my shopping list* and the assistant
  /// responds *What do you want to add?*. The sequence of streamed requests and
  /// responses in the first gRPC message could be:
  ///
  /// *   ConverseRequest.config
  /// *   ConverseRequest.audio_in
  /// *   ConverseRequest.audio_in
  /// *   ConverseRequest.audio_in
  /// *   ConverseRequest.audio_in
  /// *   ConverseResponse.event_type.END_OF_UTTERANCE
  /// *   ConverseResponse.result.microphone_mode.DIALOG_FOLLOW_ON
  /// *   ConverseResponse.audio_out
  /// *   ConverseResponse.audio_out
  /// *   ConverseResponse.audio_out
  ///
  /// The user then says *bagels* and the assistant responds
  /// *OK, I've added bagels to your shopping list*. This is sent as another gRPC
  /// connection call to the `Converse` method, again with streamed requests and
  /// responses, such as:
  ///
  /// *   ConverseRequest.config
  /// *   ConverseRequest.audio_in
  /// *   ConverseRequest.audio_in
  /// *   ConverseRequest.audio_in
  /// *   ConverseResponse.event_type.END_OF_UTTERANCE
  /// *   ConverseResponse.result.microphone_mode.CLOSE_MICROPHONE
  /// *   ConverseResponse.audio_out
  /// *   ConverseResponse.audio_out
  /// *   ConverseResponse.audio_out
  /// *   ConverseResponse.audio_out
  ///
  /// Although the precise order of responses is not guaranteed, sequential
  /// ConverseResponse.audio_out messages will always contain sequential portions
  /// of audio.
  func converse(context: StreamingResponseCallContext<Google_Assistant_Embedded_V1alpha1_ConverseResponse>) -> EventLoopFuture<(StreamEvent<Google_Assistant_Embedded_V1alpha1_ConverseRequest>) -> Void>
}

extension Google_Assistant_Embedded_V1alpha1_EmbeddedAssistantProvider {
  public var serviceName: Substring { return "google.assistant.embedded.v1alpha1.EmbeddedAssistant" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "Converse":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.converse(context: context)
      }

    default: return nil
    }
  }
}
