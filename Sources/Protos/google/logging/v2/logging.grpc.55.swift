//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/logging/v2/logging.proto
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


/// Usage: instantiate Google_Logging_V2_LoggingServiceV2Client, then call methods of this protocol to make API calls.
public protocol Google_Logging_V2_LoggingServiceV2ClientProtocol: GRPCClient {
  func deleteLog(
    _ request: Google_Logging_V2_DeleteLogRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Logging_V2_DeleteLogRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func writeLogEntries(
    _ request: Google_Logging_V2_WriteLogEntriesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Logging_V2_WriteLogEntriesRequest, Google_Logging_V2_WriteLogEntriesResponse>

  func listLogEntries(
    _ request: Google_Logging_V2_ListLogEntriesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Logging_V2_ListLogEntriesRequest, Google_Logging_V2_ListLogEntriesResponse>

  func listMonitoredResourceDescriptors(
    _ request: Google_Logging_V2_ListMonitoredResourceDescriptorsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Logging_V2_ListMonitoredResourceDescriptorsRequest, Google_Logging_V2_ListMonitoredResourceDescriptorsResponse>

  func listLogs(
    _ request: Google_Logging_V2_ListLogsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Logging_V2_ListLogsRequest, Google_Logging_V2_ListLogsResponse>

}

extension Google_Logging_V2_LoggingServiceV2ClientProtocol {

  /// Deletes all the log entries in a log. The log reappears if it receives new
  /// entries. Log entries written shortly before the delete operation might not
  /// be deleted. Entries received after the delete operation with a timestamp
  /// before the operation will be deleted.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteLog.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteLog(
    _ request: Google_Logging_V2_DeleteLogRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Logging_V2_DeleteLogRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.logging.v2.LoggingServiceV2/DeleteLog",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Writes log entries to Logging. This API method is the
  /// only way to send log entries to Logging. This method
  /// is used, directly or indirectly, by the Logging agent
  /// (fluentd) and all logging libraries configured to use Logging.
  /// A single request may contain log entries for a maximum of 1000
  /// different resources (projects, organizations, billing accounts or
  /// folders)
  ///
  /// - Parameters:
  ///   - request: Request to send to WriteLogEntries.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func writeLogEntries(
    _ request: Google_Logging_V2_WriteLogEntriesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Logging_V2_WriteLogEntriesRequest, Google_Logging_V2_WriteLogEntriesResponse> {
    return self.makeUnaryCall(
      path: "/google.logging.v2.LoggingServiceV2/WriteLogEntries",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists log entries.  Use this method to retrieve log entries that originated
  /// from a project/folder/organization/billing account.  For ways to export log
  /// entries, see [Exporting
  /// Logs](https://cloud.google.com/logging/docs/export).
  ///
  /// - Parameters:
  ///   - request: Request to send to ListLogEntries.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listLogEntries(
    _ request: Google_Logging_V2_ListLogEntriesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Logging_V2_ListLogEntriesRequest, Google_Logging_V2_ListLogEntriesResponse> {
    return self.makeUnaryCall(
      path: "/google.logging.v2.LoggingServiceV2/ListLogEntries",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists the descriptors for monitored resource types used by Logging.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListMonitoredResourceDescriptors.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listMonitoredResourceDescriptors(
    _ request: Google_Logging_V2_ListMonitoredResourceDescriptorsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Logging_V2_ListMonitoredResourceDescriptorsRequest, Google_Logging_V2_ListMonitoredResourceDescriptorsResponse> {
    return self.makeUnaryCall(
      path: "/google.logging.v2.LoggingServiceV2/ListMonitoredResourceDescriptors",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists the logs in projects, organizations, folders, or billing accounts.
  /// Only logs that have entries are listed.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListLogs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listLogs(
    _ request: Google_Logging_V2_ListLogsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Logging_V2_ListLogsRequest, Google_Logging_V2_ListLogsResponse> {
    return self.makeUnaryCall(
      path: "/google.logging.v2.LoggingServiceV2/ListLogs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Logging_V2_LoggingServiceV2Client: Google_Logging_V2_LoggingServiceV2ClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.logging.v2.LoggingServiceV2 service.
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
public protocol Google_Logging_V2_LoggingServiceV2Provider: CallHandlerProvider {
  /// Deletes all the log entries in a log. The log reappears if it receives new
  /// entries. Log entries written shortly before the delete operation might not
  /// be deleted. Entries received after the delete operation with a timestamp
  /// before the operation will be deleted.
  func deleteLog(request: Google_Logging_V2_DeleteLogRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Writes log entries to Logging. This API method is the
  /// only way to send log entries to Logging. This method
  /// is used, directly or indirectly, by the Logging agent
  /// (fluentd) and all logging libraries configured to use Logging.
  /// A single request may contain log entries for a maximum of 1000
  /// different resources (projects, organizations, billing accounts or
  /// folders)
  func writeLogEntries(request: Google_Logging_V2_WriteLogEntriesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Logging_V2_WriteLogEntriesResponse>
  /// Lists log entries.  Use this method to retrieve log entries that originated
  /// from a project/folder/organization/billing account.  For ways to export log
  /// entries, see [Exporting
  /// Logs](https://cloud.google.com/logging/docs/export).
  func listLogEntries(request: Google_Logging_V2_ListLogEntriesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Logging_V2_ListLogEntriesResponse>
  /// Lists the descriptors for monitored resource types used by Logging.
  func listMonitoredResourceDescriptors(request: Google_Logging_V2_ListMonitoredResourceDescriptorsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Logging_V2_ListMonitoredResourceDescriptorsResponse>
  /// Lists the logs in projects, organizations, folders, or billing accounts.
  /// Only logs that have entries are listed.
  func listLogs(request: Google_Logging_V2_ListLogsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Logging_V2_ListLogsResponse>
}

extension Google_Logging_V2_LoggingServiceV2Provider {
  public var serviceName: Substring { return "google.logging.v2.LoggingServiceV2" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "DeleteLog":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteLog(request: request, context: context)
        }
      }

    case "WriteLogEntries":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.writeLogEntries(request: request, context: context)
        }
      }

    case "ListLogEntries":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listLogEntries(request: request, context: context)
        }
      }

    case "ListMonitoredResourceDescriptors":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listMonitoredResourceDescriptors(request: request, context: context)
        }
      }

    case "ListLogs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listLogs(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
