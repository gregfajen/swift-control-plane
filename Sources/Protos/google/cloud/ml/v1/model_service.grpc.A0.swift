//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/ml/v1/model_service.proto
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


/// Usage: instantiate Google_Cloud_Ml_V1_ModelServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Ml_V1_ModelServiceClientProtocol: GRPCClient {
  func createModel(
    _ request: Google_Cloud_Ml_V1_CreateModelRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Ml_V1_CreateModelRequest, Google_Cloud_Ml_V1_Model>

  func listModels(
    _ request: Google_Cloud_Ml_V1_ListModelsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Ml_V1_ListModelsRequest, Google_Cloud_Ml_V1_ListModelsResponse>

  func getModel(
    _ request: Google_Cloud_Ml_V1_GetModelRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Ml_V1_GetModelRequest, Google_Cloud_Ml_V1_Model>

  func deleteModel(
    _ request: Google_Cloud_Ml_V1_DeleteModelRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Ml_V1_DeleteModelRequest, Google_Longrunning_Operation>

  func createVersion(
    _ request: Google_Cloud_Ml_V1_CreateVersionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Ml_V1_CreateVersionRequest, Google_Longrunning_Operation>

  func listVersions(
    _ request: Google_Cloud_Ml_V1_ListVersionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Ml_V1_ListVersionsRequest, Google_Cloud_Ml_V1_ListVersionsResponse>

  func getVersion(
    _ request: Google_Cloud_Ml_V1_GetVersionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Ml_V1_GetVersionRequest, Google_Cloud_Ml_V1_Version>

  func deleteVersion(
    _ request: Google_Cloud_Ml_V1_DeleteVersionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Ml_V1_DeleteVersionRequest, Google_Longrunning_Operation>

  func setDefaultVersion(
    _ request: Google_Cloud_Ml_V1_SetDefaultVersionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Ml_V1_SetDefaultVersionRequest, Google_Cloud_Ml_V1_Version>

}

extension Google_Cloud_Ml_V1_ModelServiceClientProtocol {

  /// Creates a model which will later contain one or more versions.
  ///
  /// You must add at least one version before you can request predictions from
  /// the model. Add versions by calling
  /// [projects.models.versions.create](/ml/reference/rest/v1/projects.models.versions/create).
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateModel.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createModel(
    _ request: Google_Cloud_Ml_V1_CreateModelRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Ml_V1_CreateModelRequest, Google_Cloud_Ml_V1_Model> {
    return self.makeUnaryCall(
      path: "/google.cloud.ml.v1.ModelService/CreateModel",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists the models in a project.
  ///
  /// Each project can contain multiple models, and each model can have multiple
  /// versions.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListModels.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listModels(
    _ request: Google_Cloud_Ml_V1_ListModelsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Ml_V1_ListModelsRequest, Google_Cloud_Ml_V1_ListModelsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.ml.v1.ModelService/ListModels",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets information about a model, including its name, the description (if
  /// set), and the default version (if at least one version of the model has
  /// been deployed).
  ///
  /// - Parameters:
  ///   - request: Request to send to GetModel.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getModel(
    _ request: Google_Cloud_Ml_V1_GetModelRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Ml_V1_GetModelRequest, Google_Cloud_Ml_V1_Model> {
    return self.makeUnaryCall(
      path: "/google.cloud.ml.v1.ModelService/GetModel",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a model.
  ///
  /// You can only delete a model if there are no versions in it. You can delete
  /// versions by calling
  /// [projects.models.versions.delete](/ml/reference/rest/v1/projects.models.versions/delete).
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteModel.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteModel(
    _ request: Google_Cloud_Ml_V1_DeleteModelRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Ml_V1_DeleteModelRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.ml.v1.ModelService/DeleteModel",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a new version of a model from a trained TensorFlow model.
  ///
  /// If the version created in the cloud by this call is the first deployed
  /// version of the specified model, it will be made the default version of the
  /// model. When you add a version to a model that already has one or more
  /// versions, the default version does not automatically change. If you want a
  /// new version to be the default, you must call
  /// [projects.models.versions.setDefault](/ml/reference/rest/v1/projects.models.versions/setDefault).
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateVersion.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createVersion(
    _ request: Google_Cloud_Ml_V1_CreateVersionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Ml_V1_CreateVersionRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.ml.v1.ModelService/CreateVersion",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets basic information about all the versions of a model.
  ///
  /// If you expect that a model has a lot of versions, or if you need to handle
  /// only a limited number of results at a time, you can request that the list
  /// be retrieved in batches (called pages):
  ///
  /// - Parameters:
  ///   - request: Request to send to ListVersions.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listVersions(
    _ request: Google_Cloud_Ml_V1_ListVersionsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Ml_V1_ListVersionsRequest, Google_Cloud_Ml_V1_ListVersionsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.ml.v1.ModelService/ListVersions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets information about a model version.
  ///
  /// Models can have multiple versions. You can call
  /// [projects.models.versions.list](/ml/reference/rest/v1/projects.models.versions/list)
  /// to get the same information that this method returns for all of the
  /// versions of a model.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetVersion.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getVersion(
    _ request: Google_Cloud_Ml_V1_GetVersionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Ml_V1_GetVersionRequest, Google_Cloud_Ml_V1_Version> {
    return self.makeUnaryCall(
      path: "/google.cloud.ml.v1.ModelService/GetVersion",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a model version.
  ///
  /// Each model can have multiple versions deployed and in use at any given
  /// time. Use this method to remove a single version.
  ///
  /// Note: You cannot delete the version that is set as the default version
  /// of the model unless it is the only remaining version.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteVersion.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteVersion(
    _ request: Google_Cloud_Ml_V1_DeleteVersionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Ml_V1_DeleteVersionRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.ml.v1.ModelService/DeleteVersion",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Designates a version to be the default for the model.
  ///
  /// The default version is used for prediction requests made against the model
  /// that don't specify a version.
  ///
  /// The first version to be created for a model is automatically set as the
  /// default. You must make any subsequent changes to the default version
  /// setting manually using this method.
  ///
  /// - Parameters:
  ///   - request: Request to send to SetDefaultVersion.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func setDefaultVersion(
    _ request: Google_Cloud_Ml_V1_SetDefaultVersionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Ml_V1_SetDefaultVersionRequest, Google_Cloud_Ml_V1_Version> {
    return self.makeUnaryCall(
      path: "/google.cloud.ml.v1.ModelService/SetDefaultVersion",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Ml_V1_ModelServiceClient: Google_Cloud_Ml_V1_ModelServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.ml.v1.ModelService service.
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
public protocol Google_Cloud_Ml_V1_ModelServiceProvider: CallHandlerProvider {
  /// Creates a model which will later contain one or more versions.
  ///
  /// You must add at least one version before you can request predictions from
  /// the model. Add versions by calling
  /// [projects.models.versions.create](/ml/reference/rest/v1/projects.models.versions/create).
  func createModel(request: Google_Cloud_Ml_V1_CreateModelRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Ml_V1_Model>
  /// Lists the models in a project.
  ///
  /// Each project can contain multiple models, and each model can have multiple
  /// versions.
  func listModels(request: Google_Cloud_Ml_V1_ListModelsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Ml_V1_ListModelsResponse>
  /// Gets information about a model, including its name, the description (if
  /// set), and the default version (if at least one version of the model has
  /// been deployed).
  func getModel(request: Google_Cloud_Ml_V1_GetModelRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Ml_V1_Model>
  /// Deletes a model.
  ///
  /// You can only delete a model if there are no versions in it. You can delete
  /// versions by calling
  /// [projects.models.versions.delete](/ml/reference/rest/v1/projects.models.versions/delete).
  func deleteModel(request: Google_Cloud_Ml_V1_DeleteModelRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Creates a new version of a model from a trained TensorFlow model.
  ///
  /// If the version created in the cloud by this call is the first deployed
  /// version of the specified model, it will be made the default version of the
  /// model. When you add a version to a model that already has one or more
  /// versions, the default version does not automatically change. If you want a
  /// new version to be the default, you must call
  /// [projects.models.versions.setDefault](/ml/reference/rest/v1/projects.models.versions/setDefault).
  func createVersion(request: Google_Cloud_Ml_V1_CreateVersionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Gets basic information about all the versions of a model.
  ///
  /// If you expect that a model has a lot of versions, or if you need to handle
  /// only a limited number of results at a time, you can request that the list
  /// be retrieved in batches (called pages):
  func listVersions(request: Google_Cloud_Ml_V1_ListVersionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Ml_V1_ListVersionsResponse>
  /// Gets information about a model version.
  ///
  /// Models can have multiple versions. You can call
  /// [projects.models.versions.list](/ml/reference/rest/v1/projects.models.versions/list)
  /// to get the same information that this method returns for all of the
  /// versions of a model.
  func getVersion(request: Google_Cloud_Ml_V1_GetVersionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Ml_V1_Version>
  /// Deletes a model version.
  ///
  /// Each model can have multiple versions deployed and in use at any given
  /// time. Use this method to remove a single version.
  ///
  /// Note: You cannot delete the version that is set as the default version
  /// of the model unless it is the only remaining version.
  func deleteVersion(request: Google_Cloud_Ml_V1_DeleteVersionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Designates a version to be the default for the model.
  ///
  /// The default version is used for prediction requests made against the model
  /// that don't specify a version.
  ///
  /// The first version to be created for a model is automatically set as the
  /// default. You must make any subsequent changes to the default version
  /// setting manually using this method.
  func setDefaultVersion(request: Google_Cloud_Ml_V1_SetDefaultVersionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Ml_V1_Version>
}

extension Google_Cloud_Ml_V1_ModelServiceProvider {
  public var serviceName: Substring { return "google.cloud.ml.v1.ModelService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateModel":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createModel(request: request, context: context)
        }
      }

    case "ListModels":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listModels(request: request, context: context)
        }
      }

    case "GetModel":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getModel(request: request, context: context)
        }
      }

    case "DeleteModel":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteModel(request: request, context: context)
        }
      }

    case "CreateVersion":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createVersion(request: request, context: context)
        }
      }

    case "ListVersions":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listVersions(request: request, context: context)
        }
      }

    case "GetVersion":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getVersion(request: request, context: context)
        }
      }

    case "DeleteVersion":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteVersion(request: request, context: context)
        }
      }

    case "SetDefaultVersion":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.setDefaultVersion(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
