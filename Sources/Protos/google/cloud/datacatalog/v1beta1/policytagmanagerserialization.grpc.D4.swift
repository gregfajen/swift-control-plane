//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/datacatalog/v1beta1/policytagmanagerserialization.proto
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


/// Usage: instantiate Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerSerializationClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerSerializationClientProtocol: GRPCClient {
  func importTaxonomies(
    _ request: Google_Cloud_Datacatalog_V1beta1_ImportTaxonomiesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_ImportTaxonomiesRequest, Google_Cloud_Datacatalog_V1beta1_ImportTaxonomiesResponse>

  func exportTaxonomies(
    _ request: Google_Cloud_Datacatalog_V1beta1_ExportTaxonomiesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_ExportTaxonomiesRequest, Google_Cloud_Datacatalog_V1beta1_ExportTaxonomiesResponse>

}

extension Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerSerializationClientProtocol {

  /// Imports all taxonomies and their policy tags to a project as new
  /// taxonomies.
  ///
  /// This method provides a bulk taxonomy / policy tag creation using nested
  /// proto structure.
  ///
  /// - Parameters:
  ///   - request: Request to send to ImportTaxonomies.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func importTaxonomies(
    _ request: Google_Cloud_Datacatalog_V1beta1_ImportTaxonomiesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_ImportTaxonomiesRequest, Google_Cloud_Datacatalog_V1beta1_ImportTaxonomiesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManagerSerialization/ImportTaxonomies",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Exports all taxonomies and their policy tags in a project.
  ///
  /// This method generates SerializedTaxonomy protos with nested policy tags
  /// that can be used as an input for future ImportTaxonomies calls.
  ///
  /// - Parameters:
  ///   - request: Request to send to ExportTaxonomies.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func exportTaxonomies(
    _ request: Google_Cloud_Datacatalog_V1beta1_ExportTaxonomiesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_ExportTaxonomiesRequest, Google_Cloud_Datacatalog_V1beta1_ExportTaxonomiesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManagerSerialization/ExportTaxonomies",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerSerializationClient: Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerSerializationClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.datacatalog.v1beta1.PolicyTagManagerSerialization service.
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
public protocol Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerSerializationProvider: CallHandlerProvider {
  /// Imports all taxonomies and their policy tags to a project as new
  /// taxonomies.
  ///
  /// This method provides a bulk taxonomy / policy tag creation using nested
  /// proto structure.
  func importTaxonomies(request: Google_Cloud_Datacatalog_V1beta1_ImportTaxonomiesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Datacatalog_V1beta1_ImportTaxonomiesResponse>
  /// Exports all taxonomies and their policy tags in a project.
  ///
  /// This method generates SerializedTaxonomy protos with nested policy tags
  /// that can be used as an input for future ImportTaxonomies calls.
  func exportTaxonomies(request: Google_Cloud_Datacatalog_V1beta1_ExportTaxonomiesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Datacatalog_V1beta1_ExportTaxonomiesResponse>
}

extension Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerSerializationProvider {
  public var serviceName: Substring { return "google.cloud.datacatalog.v1beta1.PolicyTagManagerSerialization" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ImportTaxonomies":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.importTaxonomies(request: request, context: context)
        }
      }

    case "ExportTaxonomies":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.exportTaxonomies(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

