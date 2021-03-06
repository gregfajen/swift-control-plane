//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/retail/v2beta/product_service.proto
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


/// Usage: instantiate Google_Cloud_Retail_V2beta_ProductServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Retail_V2beta_ProductServiceClientProtocol: GRPCClient {
  func createProduct(
    _ request: Google_Cloud_Retail_V2beta_CreateProductRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_CreateProductRequest, Google_Cloud_Retail_V2beta_Product>

  func getProduct(
    _ request: Google_Cloud_Retail_V2beta_GetProductRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_GetProductRequest, Google_Cloud_Retail_V2beta_Product>

  func updateProduct(
    _ request: Google_Cloud_Retail_V2beta_UpdateProductRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_UpdateProductRequest, Google_Cloud_Retail_V2beta_Product>

  func deleteProduct(
    _ request: Google_Cloud_Retail_V2beta_DeleteProductRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_DeleteProductRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func purgeProducts(
    _ request: Google_Cloud_Retail_V2beta_PurgeProductsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_PurgeProductsRequest, Google_Longrunning_Operation>

  func importProducts(
    _ request: Google_Cloud_Retail_V2beta_ImportProductsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_ImportProductsRequest, Google_Longrunning_Operation>

  func exportProducts(
    _ request: Google_Cloud_Retail_V2beta_ExportProductsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_ExportProductsRequest, Google_Longrunning_Operation>

}

extension Google_Cloud_Retail_V2beta_ProductServiceClientProtocol {

  /// Creates a [Product][google.cloud.retail.v2beta.Product].
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateProduct.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createProduct(
    _ request: Google_Cloud_Retail_V2beta_CreateProductRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_CreateProductRequest, Google_Cloud_Retail_V2beta_Product> {
    return self.makeUnaryCall(
      path: "/google.cloud.retail.v2beta.ProductService/CreateProduct",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a [Product][google.cloud.retail.v2beta.Product].
  ///
  /// - Parameters:
  ///   - request: Request to send to GetProduct.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getProduct(
    _ request: Google_Cloud_Retail_V2beta_GetProductRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_GetProductRequest, Google_Cloud_Retail_V2beta_Product> {
    return self.makeUnaryCall(
      path: "/google.cloud.retail.v2beta.ProductService/GetProduct",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a [Product][google.cloud.retail.v2beta.Product]. Non-existing items
  /// will be created.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateProduct.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateProduct(
    _ request: Google_Cloud_Retail_V2beta_UpdateProductRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_UpdateProductRequest, Google_Cloud_Retail_V2beta_Product> {
    return self.makeUnaryCall(
      path: "/google.cloud.retail.v2beta.ProductService/UpdateProduct",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a [Product][google.cloud.retail.v2beta.Product].
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteProduct.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteProduct(
    _ request: Google_Cloud_Retail_V2beta_DeleteProductRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_DeleteProductRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.retail.v2beta.ProductService/DeleteProduct",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Permanently deletes all [Product][google.cloud.retail.v2beta.Product]s
  /// under a branch.
  ///
  /// Depending on the number of [Product][google.cloud.retail.v2beta.Product]s,
  /// this operation could take hours to complete. To get a sample of
  /// [Product][google.cloud.retail.v2beta.Product]s that would be deleted, set
  /// [PurgeProductsRequest.force][] to false.
  ///
  /// - Parameters:
  ///   - request: Request to send to PurgeProducts.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func purgeProducts(
    _ request: Google_Cloud_Retail_V2beta_PurgeProductsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_PurgeProductsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.retail.v2beta.ProductService/PurgeProducts",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Bulk import of multiple [Product][google.cloud.retail.v2beta.Product]s.
  ///
  /// Request processing may be synchronous. No partial updating is supported.
  /// Non-existing items are created.
  ///
  /// Note that it is possible for a subset of the
  /// [Product][google.cloud.retail.v2beta.Product]s to be successfully updated.
  ///
  /// - Parameters:
  ///   - request: Request to send to ImportProducts.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func importProducts(
    _ request: Google_Cloud_Retail_V2beta_ImportProductsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_ImportProductsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.retail.v2beta.ProductService/ImportProducts",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Export of multiple [Product][google.cloud.retail.v2beta.Product]s.
  ///
  /// - Parameters:
  ///   - request: Request to send to ExportProducts.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func exportProducts(
    _ request: Google_Cloud_Retail_V2beta_ExportProductsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Retail_V2beta_ExportProductsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.retail.v2beta.ProductService/ExportProducts",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Retail_V2beta_ProductServiceClient: Google_Cloud_Retail_V2beta_ProductServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.retail.v2beta.ProductService service.
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
public protocol Google_Cloud_Retail_V2beta_ProductServiceProvider: CallHandlerProvider {
  /// Creates a [Product][google.cloud.retail.v2beta.Product].
  func createProduct(request: Google_Cloud_Retail_V2beta_CreateProductRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Retail_V2beta_Product>
  /// Gets a [Product][google.cloud.retail.v2beta.Product].
  func getProduct(request: Google_Cloud_Retail_V2beta_GetProductRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Retail_V2beta_Product>
  /// Updates a [Product][google.cloud.retail.v2beta.Product]. Non-existing items
  /// will be created.
  func updateProduct(request: Google_Cloud_Retail_V2beta_UpdateProductRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Retail_V2beta_Product>
  /// Deletes a [Product][google.cloud.retail.v2beta.Product].
  func deleteProduct(request: Google_Cloud_Retail_V2beta_DeleteProductRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Permanently deletes all [Product][google.cloud.retail.v2beta.Product]s
  /// under a branch.
  ///
  /// Depending on the number of [Product][google.cloud.retail.v2beta.Product]s,
  /// this operation could take hours to complete. To get a sample of
  /// [Product][google.cloud.retail.v2beta.Product]s that would be deleted, set
  /// [PurgeProductsRequest.force][] to false.
  func purgeProducts(request: Google_Cloud_Retail_V2beta_PurgeProductsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Bulk import of multiple [Product][google.cloud.retail.v2beta.Product]s.
  ///
  /// Request processing may be synchronous. No partial updating is supported.
  /// Non-existing items are created.
  ///
  /// Note that it is possible for a subset of the
  /// [Product][google.cloud.retail.v2beta.Product]s to be successfully updated.
  func importProducts(request: Google_Cloud_Retail_V2beta_ImportProductsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Export of multiple [Product][google.cloud.retail.v2beta.Product]s.
  func exportProducts(request: Google_Cloud_Retail_V2beta_ExportProductsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
}

extension Google_Cloud_Retail_V2beta_ProductServiceProvider {
  public var serviceName: Substring { return "google.cloud.retail.v2beta.ProductService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateProduct":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createProduct(request: request, context: context)
        }
      }

    case "GetProduct":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getProduct(request: request, context: context)
        }
      }

    case "UpdateProduct":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateProduct(request: request, context: context)
        }
      }

    case "DeleteProduct":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteProduct(request: request, context: context)
        }
      }

    case "PurgeProducts":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.purgeProducts(request: request, context: context)
        }
      }

    case "ImportProducts":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.importProducts(request: request, context: context)
        }
      }

    case "ExportProducts":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.exportProducts(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

