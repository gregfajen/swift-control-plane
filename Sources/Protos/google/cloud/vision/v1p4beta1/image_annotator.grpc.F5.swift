//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/vision/v1p4beta1/image_annotator.proto
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


/// Usage: instantiate Google_Cloud_Vision_V1p4beta1_ImageAnnotatorClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Vision_V1p4beta1_ImageAnnotatorClientProtocol: GRPCClient {
  func batchAnnotateImages(
    _ request: Google_Cloud_Vision_V1p4beta1_BatchAnnotateImagesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Vision_V1p4beta1_BatchAnnotateImagesRequest, Google_Cloud_Vision_V1p4beta1_BatchAnnotateImagesResponse>

  func batchAnnotateFiles(
    _ request: Google_Cloud_Vision_V1p4beta1_BatchAnnotateFilesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Vision_V1p4beta1_BatchAnnotateFilesRequest, Google_Cloud_Vision_V1p4beta1_BatchAnnotateFilesResponse>

  func asyncBatchAnnotateImages(
    _ request: Google_Cloud_Vision_V1p4beta1_AsyncBatchAnnotateImagesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Vision_V1p4beta1_AsyncBatchAnnotateImagesRequest, Google_Longrunning_Operation>

  func asyncBatchAnnotateFiles(
    _ request: Google_Cloud_Vision_V1p4beta1_AsyncBatchAnnotateFilesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Vision_V1p4beta1_AsyncBatchAnnotateFilesRequest, Google_Longrunning_Operation>

}

extension Google_Cloud_Vision_V1p4beta1_ImageAnnotatorClientProtocol {

  /// Run image detection and annotation for a batch of images.
  ///
  /// - Parameters:
  ///   - request: Request to send to BatchAnnotateImages.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func batchAnnotateImages(
    _ request: Google_Cloud_Vision_V1p4beta1_BatchAnnotateImagesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Vision_V1p4beta1_BatchAnnotateImagesRequest, Google_Cloud_Vision_V1p4beta1_BatchAnnotateImagesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.vision.v1p4beta1.ImageAnnotator/BatchAnnotateImages",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Service that performs image detection and annotation for a batch of files.
  /// Now only "application/pdf", "image/tiff" and "image/gif" are supported.
  ///
  /// This service will extract at most 5 (customers can specify which 5 in
  /// AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each
  /// file provided and perform detection and annotation for each image
  /// extracted.
  ///
  /// - Parameters:
  ///   - request: Request to send to BatchAnnotateFiles.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func batchAnnotateFiles(
    _ request: Google_Cloud_Vision_V1p4beta1_BatchAnnotateFilesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Vision_V1p4beta1_BatchAnnotateFilesRequest, Google_Cloud_Vision_V1p4beta1_BatchAnnotateFilesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.vision.v1p4beta1.ImageAnnotator/BatchAnnotateFiles",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Run asynchronous image detection and annotation for a list of images.
  ///
  /// Progress and results can be retrieved through the
  /// `google.longrunning.Operations` interface.
  /// `Operation.metadata` contains `OperationMetadata` (metadata).
  /// `Operation.response` contains `AsyncBatchAnnotateImagesResponse` (results).
  ///
  /// This service will write image annotation outputs to json files in customer
  /// GCS bucket, each json file containing BatchAnnotateImagesResponse proto.
  ///
  /// - Parameters:
  ///   - request: Request to send to AsyncBatchAnnotateImages.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func asyncBatchAnnotateImages(
    _ request: Google_Cloud_Vision_V1p4beta1_AsyncBatchAnnotateImagesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Vision_V1p4beta1_AsyncBatchAnnotateImagesRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.vision.v1p4beta1.ImageAnnotator/AsyncBatchAnnotateImages",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Run asynchronous image detection and annotation for a list of generic
  /// files, such as PDF files, which may contain multiple pages and multiple
  /// images per page. Progress and results can be retrieved through the
  /// `google.longrunning.Operations` interface.
  /// `Operation.metadata` contains `OperationMetadata` (metadata).
  /// `Operation.response` contains `AsyncBatchAnnotateFilesResponse` (results).
  ///
  /// - Parameters:
  ///   - request: Request to send to AsyncBatchAnnotateFiles.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func asyncBatchAnnotateFiles(
    _ request: Google_Cloud_Vision_V1p4beta1_AsyncBatchAnnotateFilesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Vision_V1p4beta1_AsyncBatchAnnotateFilesRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.vision.v1p4beta1.ImageAnnotator/AsyncBatchAnnotateFiles",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Vision_V1p4beta1_ImageAnnotatorClient: Google_Cloud_Vision_V1p4beta1_ImageAnnotatorClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.vision.v1p4beta1.ImageAnnotator service.
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
public protocol Google_Cloud_Vision_V1p4beta1_ImageAnnotatorProvider: CallHandlerProvider {
  /// Run image detection and annotation for a batch of images.
  func batchAnnotateImages(request: Google_Cloud_Vision_V1p4beta1_BatchAnnotateImagesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Vision_V1p4beta1_BatchAnnotateImagesResponse>
  /// Service that performs image detection and annotation for a batch of files.
  /// Now only "application/pdf", "image/tiff" and "image/gif" are supported.
  ///
  /// This service will extract at most 5 (customers can specify which 5 in
  /// AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each
  /// file provided and perform detection and annotation for each image
  /// extracted.
  func batchAnnotateFiles(request: Google_Cloud_Vision_V1p4beta1_BatchAnnotateFilesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Vision_V1p4beta1_BatchAnnotateFilesResponse>
  /// Run asynchronous image detection and annotation for a list of images.
  ///
  /// Progress and results can be retrieved through the
  /// `google.longrunning.Operations` interface.
  /// `Operation.metadata` contains `OperationMetadata` (metadata).
  /// `Operation.response` contains `AsyncBatchAnnotateImagesResponse` (results).
  ///
  /// This service will write image annotation outputs to json files in customer
  /// GCS bucket, each json file containing BatchAnnotateImagesResponse proto.
  func asyncBatchAnnotateImages(request: Google_Cloud_Vision_V1p4beta1_AsyncBatchAnnotateImagesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Run asynchronous image detection and annotation for a list of generic
  /// files, such as PDF files, which may contain multiple pages and multiple
  /// images per page. Progress and results can be retrieved through the
  /// `google.longrunning.Operations` interface.
  /// `Operation.metadata` contains `OperationMetadata` (metadata).
  /// `Operation.response` contains `AsyncBatchAnnotateFilesResponse` (results).
  func asyncBatchAnnotateFiles(request: Google_Cloud_Vision_V1p4beta1_AsyncBatchAnnotateFilesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
}

extension Google_Cloud_Vision_V1p4beta1_ImageAnnotatorProvider {
  public var serviceName: Substring { return "google.cloud.vision.v1p4beta1.ImageAnnotator" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "BatchAnnotateImages":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.batchAnnotateImages(request: request, context: context)
        }
      }

    case "BatchAnnotateFiles":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.batchAnnotateFiles(request: request, context: context)
        }
      }

    case "AsyncBatchAnnotateImages":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.asyncBatchAnnotateImages(request: request, context: context)
        }
      }

    case "AsyncBatchAnnotateFiles":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.asyncBatchAnnotateFiles(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
