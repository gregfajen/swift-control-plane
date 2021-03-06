//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/translate/v3/translation_service.proto
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


/// Usage: instantiate Google_Cloud_Translation_V3_TranslationServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Translation_V3_TranslationServiceClientProtocol: GRPCClient {
  func translateText(
    _ request: Google_Cloud_Translation_V3_TranslateTextRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Translation_V3_TranslateTextRequest, Google_Cloud_Translation_V3_TranslateTextResponse>

  func detectLanguage(
    _ request: Google_Cloud_Translation_V3_DetectLanguageRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Translation_V3_DetectLanguageRequest, Google_Cloud_Translation_V3_DetectLanguageResponse>

  func getSupportedLanguages(
    _ request: Google_Cloud_Translation_V3_GetSupportedLanguagesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Translation_V3_GetSupportedLanguagesRequest, Google_Cloud_Translation_V3_SupportedLanguages>

  func batchTranslateText(
    _ request: Google_Cloud_Translation_V3_BatchTranslateTextRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Translation_V3_BatchTranslateTextRequest, Google_Longrunning_Operation>

  func createGlossary(
    _ request: Google_Cloud_Translation_V3_CreateGlossaryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Translation_V3_CreateGlossaryRequest, Google_Longrunning_Operation>

  func listGlossaries(
    _ request: Google_Cloud_Translation_V3_ListGlossariesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Translation_V3_ListGlossariesRequest, Google_Cloud_Translation_V3_ListGlossariesResponse>

  func getGlossary(
    _ request: Google_Cloud_Translation_V3_GetGlossaryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Translation_V3_GetGlossaryRequest, Google_Cloud_Translation_V3_Glossary>

  func deleteGlossary(
    _ request: Google_Cloud_Translation_V3_DeleteGlossaryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Translation_V3_DeleteGlossaryRequest, Google_Longrunning_Operation>

}

extension Google_Cloud_Translation_V3_TranslationServiceClientProtocol {

  /// Translates input text and returns translated text.
  ///
  /// - Parameters:
  ///   - request: Request to send to TranslateText.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func translateText(
    _ request: Google_Cloud_Translation_V3_TranslateTextRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Translation_V3_TranslateTextRequest, Google_Cloud_Translation_V3_TranslateTextResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.translation.v3.TranslationService/TranslateText",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Detects the language of text within a request.
  ///
  /// - Parameters:
  ///   - request: Request to send to DetectLanguage.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func detectLanguage(
    _ request: Google_Cloud_Translation_V3_DetectLanguageRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Translation_V3_DetectLanguageRequest, Google_Cloud_Translation_V3_DetectLanguageResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.translation.v3.TranslationService/DetectLanguage",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns a list of supported languages for translation.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetSupportedLanguages.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getSupportedLanguages(
    _ request: Google_Cloud_Translation_V3_GetSupportedLanguagesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Translation_V3_GetSupportedLanguagesRequest, Google_Cloud_Translation_V3_SupportedLanguages> {
    return self.makeUnaryCall(
      path: "/google.cloud.translation.v3.TranslationService/GetSupportedLanguages",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Translates a large volume of text in asynchronous batch mode.
  /// This function provides real-time output as the inputs are being processed.
  /// If caller cancels a request, the partial results (for an input file, it's
  /// all or nothing) may still be available on the specified output location.
  ///
  /// This call returns immediately and you can
  /// use google.longrunning.Operation.name to poll the status of the call.
  ///
  /// - Parameters:
  ///   - request: Request to send to BatchTranslateText.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func batchTranslateText(
    _ request: Google_Cloud_Translation_V3_BatchTranslateTextRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Translation_V3_BatchTranslateTextRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.translation.v3.TranslationService/BatchTranslateText",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a glossary and returns the long-running operation. Returns
  /// NOT_FOUND, if the project doesn't exist.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateGlossary.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createGlossary(
    _ request: Google_Cloud_Translation_V3_CreateGlossaryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Translation_V3_CreateGlossaryRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.translation.v3.TranslationService/CreateGlossary",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists glossaries in a project. Returns NOT_FOUND, if the project doesn't
  /// exist.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListGlossaries.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listGlossaries(
    _ request: Google_Cloud_Translation_V3_ListGlossariesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Translation_V3_ListGlossariesRequest, Google_Cloud_Translation_V3_ListGlossariesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.translation.v3.TranslationService/ListGlossaries",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a glossary. Returns NOT_FOUND, if the glossary doesn't
  /// exist.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetGlossary.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getGlossary(
    _ request: Google_Cloud_Translation_V3_GetGlossaryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Translation_V3_GetGlossaryRequest, Google_Cloud_Translation_V3_Glossary> {
    return self.makeUnaryCall(
      path: "/google.cloud.translation.v3.TranslationService/GetGlossary",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a glossary, or cancels glossary construction
  /// if the glossary isn't created yet.
  /// Returns NOT_FOUND, if the glossary doesn't exist.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteGlossary.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteGlossary(
    _ request: Google_Cloud_Translation_V3_DeleteGlossaryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Translation_V3_DeleteGlossaryRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.translation.v3.TranslationService/DeleteGlossary",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Translation_V3_TranslationServiceClient: Google_Cloud_Translation_V3_TranslationServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.translation.v3.TranslationService service.
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
public protocol Google_Cloud_Translation_V3_TranslationServiceProvider: CallHandlerProvider {
  /// Translates input text and returns translated text.
  func translateText(request: Google_Cloud_Translation_V3_TranslateTextRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Translation_V3_TranslateTextResponse>
  /// Detects the language of text within a request.
  func detectLanguage(request: Google_Cloud_Translation_V3_DetectLanguageRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Translation_V3_DetectLanguageResponse>
  /// Returns a list of supported languages for translation.
  func getSupportedLanguages(request: Google_Cloud_Translation_V3_GetSupportedLanguagesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Translation_V3_SupportedLanguages>
  /// Translates a large volume of text in asynchronous batch mode.
  /// This function provides real-time output as the inputs are being processed.
  /// If caller cancels a request, the partial results (for an input file, it's
  /// all or nothing) may still be available on the specified output location.
  ///
  /// This call returns immediately and you can
  /// use google.longrunning.Operation.name to poll the status of the call.
  func batchTranslateText(request: Google_Cloud_Translation_V3_BatchTranslateTextRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Creates a glossary and returns the long-running operation. Returns
  /// NOT_FOUND, if the project doesn't exist.
  func createGlossary(request: Google_Cloud_Translation_V3_CreateGlossaryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Lists glossaries in a project. Returns NOT_FOUND, if the project doesn't
  /// exist.
  func listGlossaries(request: Google_Cloud_Translation_V3_ListGlossariesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Translation_V3_ListGlossariesResponse>
  /// Gets a glossary. Returns NOT_FOUND, if the glossary doesn't
  /// exist.
  func getGlossary(request: Google_Cloud_Translation_V3_GetGlossaryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Translation_V3_Glossary>
  /// Deletes a glossary, or cancels glossary construction
  /// if the glossary isn't created yet.
  /// Returns NOT_FOUND, if the glossary doesn't exist.
  func deleteGlossary(request: Google_Cloud_Translation_V3_DeleteGlossaryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
}

extension Google_Cloud_Translation_V3_TranslationServiceProvider {
  public var serviceName: Substring { return "google.cloud.translation.v3.TranslationService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "TranslateText":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.translateText(request: request, context: context)
        }
      }

    case "DetectLanguage":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.detectLanguage(request: request, context: context)
        }
      }

    case "GetSupportedLanguages":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getSupportedLanguages(request: request, context: context)
        }
      }

    case "BatchTranslateText":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.batchTranslateText(request: request, context: context)
        }
      }

    case "CreateGlossary":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createGlossary(request: request, context: context)
        }
      }

    case "ListGlossaries":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listGlossaries(request: request, context: context)
        }
      }

    case "GetGlossary":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getGlossary(request: request, context: context)
        }
      }

    case "DeleteGlossary":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteGlossary(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

