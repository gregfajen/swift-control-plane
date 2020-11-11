//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/language/v1beta2/language_service.proto
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


/// Usage: instantiate Google_Cloud_Language_V1beta2_LanguageServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Language_V1beta2_LanguageServiceClientProtocol: GRPCClient {
  func analyzeSentiment(
    _ request: Google_Cloud_Language_V1beta2_AnalyzeSentimentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Language_V1beta2_AnalyzeSentimentRequest, Google_Cloud_Language_V1beta2_AnalyzeSentimentResponse>

  func analyzeEntities(
    _ request: Google_Cloud_Language_V1beta2_AnalyzeEntitiesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Language_V1beta2_AnalyzeEntitiesRequest, Google_Cloud_Language_V1beta2_AnalyzeEntitiesResponse>

  func analyzeEntitySentiment(
    _ request: Google_Cloud_Language_V1beta2_AnalyzeEntitySentimentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Language_V1beta2_AnalyzeEntitySentimentRequest, Google_Cloud_Language_V1beta2_AnalyzeEntitySentimentResponse>

  func analyzeSyntax(
    _ request: Google_Cloud_Language_V1beta2_AnalyzeSyntaxRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Language_V1beta2_AnalyzeSyntaxRequest, Google_Cloud_Language_V1beta2_AnalyzeSyntaxResponse>

  func classifyText(
    _ request: Google_Cloud_Language_V1beta2_ClassifyTextRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Language_V1beta2_ClassifyTextRequest, Google_Cloud_Language_V1beta2_ClassifyTextResponse>

  func annotateText(
    _ request: Google_Cloud_Language_V1beta2_AnnotateTextRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Language_V1beta2_AnnotateTextRequest, Google_Cloud_Language_V1beta2_AnnotateTextResponse>

}

extension Google_Cloud_Language_V1beta2_LanguageServiceClientProtocol {

  /// Analyzes the sentiment of the provided text.
  ///
  /// - Parameters:
  ///   - request: Request to send to AnalyzeSentiment.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func analyzeSentiment(
    _ request: Google_Cloud_Language_V1beta2_AnalyzeSentimentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Language_V1beta2_AnalyzeSentimentRequest, Google_Cloud_Language_V1beta2_AnalyzeSentimentResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.language.v1beta2.LanguageService/AnalyzeSentiment",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Finds named entities (currently proper names and common nouns) in the text
  /// along with entity types, salience, mentions for each entity, and
  /// other properties.
  ///
  /// - Parameters:
  ///   - request: Request to send to AnalyzeEntities.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func analyzeEntities(
    _ request: Google_Cloud_Language_V1beta2_AnalyzeEntitiesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Language_V1beta2_AnalyzeEntitiesRequest, Google_Cloud_Language_V1beta2_AnalyzeEntitiesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.language.v1beta2.LanguageService/AnalyzeEntities",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Finds entities, similar to [AnalyzeEntities][google.cloud.language.v1beta2.LanguageService.AnalyzeEntities] in the text and analyzes
  /// sentiment associated with each entity and its mentions.
  ///
  /// - Parameters:
  ///   - request: Request to send to AnalyzeEntitySentiment.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func analyzeEntitySentiment(
    _ request: Google_Cloud_Language_V1beta2_AnalyzeEntitySentimentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Language_V1beta2_AnalyzeEntitySentimentRequest, Google_Cloud_Language_V1beta2_AnalyzeEntitySentimentResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.language.v1beta2.LanguageService/AnalyzeEntitySentiment",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Analyzes the syntax of the text and provides sentence boundaries and
  /// tokenization along with part-of-speech tags, dependency trees, and other
  /// properties.
  ///
  /// - Parameters:
  ///   - request: Request to send to AnalyzeSyntax.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func analyzeSyntax(
    _ request: Google_Cloud_Language_V1beta2_AnalyzeSyntaxRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Language_V1beta2_AnalyzeSyntaxRequest, Google_Cloud_Language_V1beta2_AnalyzeSyntaxResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.language.v1beta2.LanguageService/AnalyzeSyntax",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Classifies a document into categories.
  ///
  /// - Parameters:
  ///   - request: Request to send to ClassifyText.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func classifyText(
    _ request: Google_Cloud_Language_V1beta2_ClassifyTextRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Language_V1beta2_ClassifyTextRequest, Google_Cloud_Language_V1beta2_ClassifyTextResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.language.v1beta2.LanguageService/ClassifyText",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// A convenience method that provides all syntax, sentiment, entity, and
  /// classification features in one call.
  ///
  /// - Parameters:
  ///   - request: Request to send to AnnotateText.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func annotateText(
    _ request: Google_Cloud_Language_V1beta2_AnnotateTextRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Language_V1beta2_AnnotateTextRequest, Google_Cloud_Language_V1beta2_AnnotateTextResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.language.v1beta2.LanguageService/AnnotateText",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Language_V1beta2_LanguageServiceClient: Google_Cloud_Language_V1beta2_LanguageServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.language.v1beta2.LanguageService service.
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
public protocol Google_Cloud_Language_V1beta2_LanguageServiceProvider: CallHandlerProvider {
  /// Analyzes the sentiment of the provided text.
  func analyzeSentiment(request: Google_Cloud_Language_V1beta2_AnalyzeSentimentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Language_V1beta2_AnalyzeSentimentResponse>
  /// Finds named entities (currently proper names and common nouns) in the text
  /// along with entity types, salience, mentions for each entity, and
  /// other properties.
  func analyzeEntities(request: Google_Cloud_Language_V1beta2_AnalyzeEntitiesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Language_V1beta2_AnalyzeEntitiesResponse>
  /// Finds entities, similar to [AnalyzeEntities][google.cloud.language.v1beta2.LanguageService.AnalyzeEntities] in the text and analyzes
  /// sentiment associated with each entity and its mentions.
  func analyzeEntitySentiment(request: Google_Cloud_Language_V1beta2_AnalyzeEntitySentimentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Language_V1beta2_AnalyzeEntitySentimentResponse>
  /// Analyzes the syntax of the text and provides sentence boundaries and
  /// tokenization along with part-of-speech tags, dependency trees, and other
  /// properties.
  func analyzeSyntax(request: Google_Cloud_Language_V1beta2_AnalyzeSyntaxRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Language_V1beta2_AnalyzeSyntaxResponse>
  /// Classifies a document into categories.
  func classifyText(request: Google_Cloud_Language_V1beta2_ClassifyTextRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Language_V1beta2_ClassifyTextResponse>
  /// A convenience method that provides all syntax, sentiment, entity, and
  /// classification features in one call.
  func annotateText(request: Google_Cloud_Language_V1beta2_AnnotateTextRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Language_V1beta2_AnnotateTextResponse>
}

extension Google_Cloud_Language_V1beta2_LanguageServiceProvider {
  public var serviceName: Substring { return "google.cloud.language.v1beta2.LanguageService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "AnalyzeSentiment":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.analyzeSentiment(request: request, context: context)
        }
      }

    case "AnalyzeEntities":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.analyzeEntities(request: request, context: context)
        }
      }

    case "AnalyzeEntitySentiment":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.analyzeEntitySentiment(request: request, context: context)
        }
      }

    case "AnalyzeSyntax":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.analyzeSyntax(request: request, context: context)
        }
      }

    case "ClassifyText":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.classifyText(request: request, context: context)
        }
      }

    case "AnnotateText":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.annotateText(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

