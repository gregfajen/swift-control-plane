//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/documentai/v1beta2/document_understanding.proto
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


/// Usage: instantiate Google_Cloud_Documentai_V1beta2_DocumentUnderstandingServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Documentai_V1beta2_DocumentUnderstandingServiceClientProtocol: GRPCClient {
  func batchProcessDocuments(
    _ request: Google_Cloud_Documentai_V1beta2_BatchProcessDocumentsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Documentai_V1beta2_BatchProcessDocumentsRequest, Google_Longrunning_Operation>

  func processDocument(
    _ request: Google_Cloud_Documentai_V1beta2_ProcessDocumentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Documentai_V1beta2_ProcessDocumentRequest, Google_Cloud_Documentai_V1beta2_Document>

}

extension Google_Cloud_Documentai_V1beta2_DocumentUnderstandingServiceClientProtocol {

  /// LRO endpoint to batch process many documents. The output is written
  /// to Cloud Storage as JSON in the [Document] format.
  ///
  /// - Parameters:
  ///   - request: Request to send to BatchProcessDocuments.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func batchProcessDocuments(
    _ request: Google_Cloud_Documentai_V1beta2_BatchProcessDocumentsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Documentai_V1beta2_BatchProcessDocumentsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.documentai.v1beta2.DocumentUnderstandingService/BatchProcessDocuments",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Processes a single document.
  ///
  /// - Parameters:
  ///   - request: Request to send to ProcessDocument.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func processDocument(
    _ request: Google_Cloud_Documentai_V1beta2_ProcessDocumentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Documentai_V1beta2_ProcessDocumentRequest, Google_Cloud_Documentai_V1beta2_Document> {
    return self.makeUnaryCall(
      path: "/google.cloud.documentai.v1beta2.DocumentUnderstandingService/ProcessDocument",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Documentai_V1beta2_DocumentUnderstandingServiceClient: Google_Cloud_Documentai_V1beta2_DocumentUnderstandingServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.documentai.v1beta2.DocumentUnderstandingService service.
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
public protocol Google_Cloud_Documentai_V1beta2_DocumentUnderstandingServiceProvider: CallHandlerProvider {
  /// LRO endpoint to batch process many documents. The output is written
  /// to Cloud Storage as JSON in the [Document] format.
  func batchProcessDocuments(request: Google_Cloud_Documentai_V1beta2_BatchProcessDocumentsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Processes a single document.
  func processDocument(request: Google_Cloud_Documentai_V1beta2_ProcessDocumentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Documentai_V1beta2_Document>
}

extension Google_Cloud_Documentai_V1beta2_DocumentUnderstandingServiceProvider {
  public var serviceName: Substring { return "google.cloud.documentai.v1beta2.DocumentUnderstandingService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "BatchProcessDocuments":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.batchProcessDocuments(request: request, context: context)
        }
      }

    case "ProcessDocument":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.processDocument(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
