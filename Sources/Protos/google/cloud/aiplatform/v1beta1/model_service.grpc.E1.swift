//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/aiplatform/v1beta1/model_service.proto
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


/// Usage: instantiate Google_Cloud_Aiplatform_V1beta1_ModelServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Aiplatform_V1beta1_ModelServiceClientProtocol: GRPCClient {
  func uploadModel(
    _ request: Google_Cloud_Aiplatform_V1beta1_UploadModelRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_UploadModelRequest, Google_Longrunning_Operation>

  func getModel(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetModelRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetModelRequest, Google_Cloud_Aiplatform_V1beta1_Model>

  func listModels(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListModelsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListModelsRequest, Google_Cloud_Aiplatform_V1beta1_ListModelsResponse>

  func updateModel(
    _ request: Google_Cloud_Aiplatform_V1beta1_UpdateModelRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_UpdateModelRequest, Google_Cloud_Aiplatform_V1beta1_Model>

  func deleteModel(
    _ request: Google_Cloud_Aiplatform_V1beta1_DeleteModelRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_DeleteModelRequest, Google_Longrunning_Operation>

  func exportModel(
    _ request: Google_Cloud_Aiplatform_V1beta1_ExportModelRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ExportModelRequest, Google_Longrunning_Operation>

  func getModelEvaluation(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetModelEvaluationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetModelEvaluationRequest, Google_Cloud_Aiplatform_V1beta1_ModelEvaluation>

  func listModelEvaluations(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationsRequest, Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationsResponse>

  func getModelEvaluationSlice(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetModelEvaluationSliceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetModelEvaluationSliceRequest, Google_Cloud_Aiplatform_V1beta1_ModelEvaluationSlice>

  func listModelEvaluationSlices(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationSlicesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationSlicesRequest, Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationSlicesResponse>

}

extension Google_Cloud_Aiplatform_V1beta1_ModelServiceClientProtocol {

  /// Uploads a Model artifact into AI Platform.
  ///
  /// - Parameters:
  ///   - request: Request to send to UploadModel.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func uploadModel(
    _ request: Google_Cloud_Aiplatform_V1beta1_UploadModelRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_UploadModelRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.ModelService/UploadModel",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a Model.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetModel.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getModel(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetModelRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetModelRequest, Google_Cloud_Aiplatform_V1beta1_Model> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.ModelService/GetModel",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists Models in a Location.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListModels.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listModels(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListModelsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListModelsRequest, Google_Cloud_Aiplatform_V1beta1_ListModelsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.ModelService/ListModels",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a Model.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateModel.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateModel(
    _ request: Google_Cloud_Aiplatform_V1beta1_UpdateModelRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_UpdateModelRequest, Google_Cloud_Aiplatform_V1beta1_Model> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.ModelService/UpdateModel",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a Model.
  /// Note: Model can only be deleted if there are no DeployedModels created
  /// from it.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteModel.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteModel(
    _ request: Google_Cloud_Aiplatform_V1beta1_DeleteModelRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_DeleteModelRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.ModelService/DeleteModel",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Exports a trained, exportable, Model to a location specified by the
  /// user. A Model is considered to be exportable if it has at least one
  /// [supported export format][google.cloud.aiplatform.v1beta1.Model.supported_export_formats].
  ///
  /// - Parameters:
  ///   - request: Request to send to ExportModel.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func exportModel(
    _ request: Google_Cloud_Aiplatform_V1beta1_ExportModelRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ExportModelRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.ModelService/ExportModel",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a ModelEvaluation.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetModelEvaluation.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getModelEvaluation(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetModelEvaluationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetModelEvaluationRequest, Google_Cloud_Aiplatform_V1beta1_ModelEvaluation> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.ModelService/GetModelEvaluation",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists ModelEvaluations in a Model.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListModelEvaluations.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listModelEvaluations(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationsRequest, Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.ModelService/ListModelEvaluations",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a ModelEvaluationSlice.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetModelEvaluationSlice.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getModelEvaluationSlice(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetModelEvaluationSliceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetModelEvaluationSliceRequest, Google_Cloud_Aiplatform_V1beta1_ModelEvaluationSlice> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.ModelService/GetModelEvaluationSlice",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists ModelEvaluationSlices in a ModelEvaluation.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListModelEvaluationSlices.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listModelEvaluationSlices(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationSlicesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationSlicesRequest, Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationSlicesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.ModelService/ListModelEvaluationSlices",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Aiplatform_V1beta1_ModelServiceClient: Google_Cloud_Aiplatform_V1beta1_ModelServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.aiplatform.v1beta1.ModelService service.
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
public protocol Google_Cloud_Aiplatform_V1beta1_ModelServiceProvider: CallHandlerProvider {
  /// Uploads a Model artifact into AI Platform.
  func uploadModel(request: Google_Cloud_Aiplatform_V1beta1_UploadModelRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Gets a Model.
  func getModel(request: Google_Cloud_Aiplatform_V1beta1_GetModelRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_Model>
  /// Lists Models in a Location.
  func listModels(request: Google_Cloud_Aiplatform_V1beta1_ListModelsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_ListModelsResponse>
  /// Updates a Model.
  func updateModel(request: Google_Cloud_Aiplatform_V1beta1_UpdateModelRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_Model>
  /// Deletes a Model.
  /// Note: Model can only be deleted if there are no DeployedModels created
  /// from it.
  func deleteModel(request: Google_Cloud_Aiplatform_V1beta1_DeleteModelRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Exports a trained, exportable, Model to a location specified by the
  /// user. A Model is considered to be exportable if it has at least one
  /// [supported export format][google.cloud.aiplatform.v1beta1.Model.supported_export_formats].
  func exportModel(request: Google_Cloud_Aiplatform_V1beta1_ExportModelRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Gets a ModelEvaluation.
  func getModelEvaluation(request: Google_Cloud_Aiplatform_V1beta1_GetModelEvaluationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_ModelEvaluation>
  /// Lists ModelEvaluations in a Model.
  func listModelEvaluations(request: Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationsResponse>
  /// Gets a ModelEvaluationSlice.
  func getModelEvaluationSlice(request: Google_Cloud_Aiplatform_V1beta1_GetModelEvaluationSliceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_ModelEvaluationSlice>
  /// Lists ModelEvaluationSlices in a ModelEvaluation.
  func listModelEvaluationSlices(request: Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationSlicesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_ListModelEvaluationSlicesResponse>
}

extension Google_Cloud_Aiplatform_V1beta1_ModelServiceProvider {
  public var serviceName: Substring { return "google.cloud.aiplatform.v1beta1.ModelService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "UploadModel":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.uploadModel(request: request, context: context)
        }
      }

    case "GetModel":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getModel(request: request, context: context)
        }
      }

    case "ListModels":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listModels(request: request, context: context)
        }
      }

    case "UpdateModel":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateModel(request: request, context: context)
        }
      }

    case "DeleteModel":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteModel(request: request, context: context)
        }
      }

    case "ExportModel":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.exportModel(request: request, context: context)
        }
      }

    case "GetModelEvaluation":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getModelEvaluation(request: request, context: context)
        }
      }

    case "ListModelEvaluations":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listModelEvaluations(request: request, context: context)
        }
      }

    case "GetModelEvaluationSlice":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getModelEvaluationSlice(request: request, context: context)
        }
      }

    case "ListModelEvaluationSlices":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listModelEvaluationSlices(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
