//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/texttospeech/v1/cloud_tts.proto
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


/// Usage: instantiate Google_Cloud_Texttospeech_V1_TextToSpeechClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Texttospeech_V1_TextToSpeechClientProtocol: GRPCClient {
  func listVoices(
    _ request: Google_Cloud_Texttospeech_V1_ListVoicesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Texttospeech_V1_ListVoicesRequest, Google_Cloud_Texttospeech_V1_ListVoicesResponse>

  func synthesizeSpeech(
    _ request: Google_Cloud_Texttospeech_V1_SynthesizeSpeechRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Texttospeech_V1_SynthesizeSpeechRequest, Google_Cloud_Texttospeech_V1_SynthesizeSpeechResponse>

}

extension Google_Cloud_Texttospeech_V1_TextToSpeechClientProtocol {

  /// Returns a list of Voice supported for synthesis.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListVoices.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listVoices(
    _ request: Google_Cloud_Texttospeech_V1_ListVoicesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Texttospeech_V1_ListVoicesRequest, Google_Cloud_Texttospeech_V1_ListVoicesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.texttospeech.v1.TextToSpeech/ListVoices",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Synthesizes speech synchronously: receive results after all text input
  /// has been processed.
  ///
  /// - Parameters:
  ///   - request: Request to send to SynthesizeSpeech.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func synthesizeSpeech(
    _ request: Google_Cloud_Texttospeech_V1_SynthesizeSpeechRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Texttospeech_V1_SynthesizeSpeechRequest, Google_Cloud_Texttospeech_V1_SynthesizeSpeechResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.texttospeech.v1.TextToSpeech/SynthesizeSpeech",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Texttospeech_V1_TextToSpeechClient: Google_Cloud_Texttospeech_V1_TextToSpeechClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.texttospeech.v1.TextToSpeech service.
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
public protocol Google_Cloud_Texttospeech_V1_TextToSpeechProvider: CallHandlerProvider {
  /// Returns a list of Voice supported for synthesis.
  func listVoices(request: Google_Cloud_Texttospeech_V1_ListVoicesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Texttospeech_V1_ListVoicesResponse>
  /// Synthesizes speech synchronously: receive results after all text input
  /// has been processed.
  func synthesizeSpeech(request: Google_Cloud_Texttospeech_V1_SynthesizeSpeechRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Texttospeech_V1_SynthesizeSpeechResponse>
}

extension Google_Cloud_Texttospeech_V1_TextToSpeechProvider {
  public var serviceName: Substring { return "google.cloud.texttospeech.v1.TextToSpeech" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListVoices":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listVoices(request: request, context: context)
        }
      }

    case "SynthesizeSpeech":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.synthesizeSpeech(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

