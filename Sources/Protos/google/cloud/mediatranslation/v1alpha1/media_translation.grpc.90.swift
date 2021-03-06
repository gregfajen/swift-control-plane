//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/mediatranslation/v1alpha1/media_translation.proto
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


/// Usage: instantiate Google_Cloud_Mediatranslation_V1alpha1_SpeechTranslationServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Mediatranslation_V1alpha1_SpeechTranslationServiceClientProtocol: GRPCClient {
  func streamingTranslateSpeech(
    callOptions: CallOptions?,
    handler: @escaping (Google_Cloud_Mediatranslation_V1alpha1_StreamingTranslateSpeechResponse) -> Void
  ) -> BidirectionalStreamingCall<Google_Cloud_Mediatranslation_V1alpha1_StreamingTranslateSpeechRequest, Google_Cloud_Mediatranslation_V1alpha1_StreamingTranslateSpeechResponse>

}

extension Google_Cloud_Mediatranslation_V1alpha1_SpeechTranslationServiceClientProtocol {

  /// Performs bidirectional streaming speech translation: receive results while
  /// sending audio. This method is only available via the gRPC API (not REST).
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func streamingTranslateSpeech(
    callOptions: CallOptions? = nil,
    handler: @escaping (Google_Cloud_Mediatranslation_V1alpha1_StreamingTranslateSpeechResponse) -> Void
  ) -> BidirectionalStreamingCall<Google_Cloud_Mediatranslation_V1alpha1_StreamingTranslateSpeechRequest, Google_Cloud_Mediatranslation_V1alpha1_StreamingTranslateSpeechResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/google.cloud.mediatranslation.v1alpha1.SpeechTranslationService/StreamingTranslateSpeech",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }
}

public final class Google_Cloud_Mediatranslation_V1alpha1_SpeechTranslationServiceClient: Google_Cloud_Mediatranslation_V1alpha1_SpeechTranslationServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.mediatranslation.v1alpha1.SpeechTranslationService service.
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
public protocol Google_Cloud_Mediatranslation_V1alpha1_SpeechTranslationServiceProvider: CallHandlerProvider {
  /// Performs bidirectional streaming speech translation: receive results while
  /// sending audio. This method is only available via the gRPC API (not REST).
  func streamingTranslateSpeech(context: StreamingResponseCallContext<Google_Cloud_Mediatranslation_V1alpha1_StreamingTranslateSpeechResponse>) -> EventLoopFuture<(StreamEvent<Google_Cloud_Mediatranslation_V1alpha1_StreamingTranslateSpeechRequest>) -> Void>
}

extension Google_Cloud_Mediatranslation_V1alpha1_SpeechTranslationServiceProvider {
  public var serviceName: Substring { return "google.cloud.mediatranslation.v1alpha1.SpeechTranslationService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "StreamingTranslateSpeech":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.streamingTranslateSpeech(context: context)
      }

    default: return nil
    }
  }
}

