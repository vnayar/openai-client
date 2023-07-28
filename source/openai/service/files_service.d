// File automatically generated from OpenAPI spec.
module openai.service.files_service;

import vibe.http.client : requestHTTP, HTTPClientRequest, HTTPClientResponse;
import vibe.http.common : HTTPMethod;
import vibe.stream.operations : readAllUTF8;
import vibe.data.serialization : optional;
import vibe.data.json : Json, deserializeJson;
import builder : AddBuilder;

import openai.servers : Servers;
import openai.security : Security;
import openapi_client.util : isNull;
import openapi_client.apirequest : ApiRequest;
import openapi_client.handler : ResponseHandler;

import std.conv : to;
import std.typecons : Nullable;
import std.stdio;

public import openai.model.CreateFileRequest : CreateFileRequest;
public import openai.model.DeleteFileResponse : DeleteFileResponse;
public import openai.model.ListFilesResponse : ListFilesResponse;
public import openai.model.OpenAIFile : OpenAIFile;

/**
 * Service to make REST API calls to paths beginning with: /files
 */
class FilesService {
  static class retrieveFileParams {
    /**
     * The ID of the file to use for this request
     */
    string fileId;

    mixin AddBuilder!(typeof(this));

  }

  static class RetrieveFileResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(OpenAIFile response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(OpenAIFile)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Returns information about a specific file.
   * See_Also: HTTP GET `/files/{file_id}`
   */
  void retrieveFile(
      retrieveFileParams params,
      RetrieveFileResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.GET,
        Servers.getServerUrl(),
        "/files/{file_id}");
    if (!params.fileId.isNull)
      requestor.setPathParam("file_id", params.fileId);
    Security.apply(requestor);
    requestor.makeRequest(null, responseHandler);
  }

  static class deleteFileParams {
    /**
     * The ID of the file to use for this request
     */
    string fileId;

    mixin AddBuilder!(typeof(this));

  }

  static class DeleteFileResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(DeleteFileResponse response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(DeleteFileResponse)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Delete a file.
   * See_Also: HTTP DELETE `/files/{file_id}`
   */
  void deleteFile(
      deleteFileParams params,
      DeleteFileResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.DELETE,
        Servers.getServerUrl(),
        "/files/{file_id}");
    if (!params.fileId.isNull)
      requestor.setPathParam("file_id", params.fileId);
    Security.apply(requestor);
    requestor.makeRequest(null, responseHandler);
  }

  static class downloadFileParams {
    /**
     * The ID of the file to use for this request
     */
    string fileId;

    mixin AddBuilder!(typeof(this));

  }

  static class DownloadFileResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(string response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(string)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Returns the contents of the specified file
   * See_Also: HTTP GET `/files/{file_id}/content`
   */
  void downloadFile(
      downloadFileParams params,
      DownloadFileResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.GET,
        Servers.getServerUrl(),
        "/files/{file_id}/content");
    if (!params.fileId.isNull)
      requestor.setPathParam("file_id", params.fileId);
    Security.apply(requestor);
    requestor.makeRequest(null, responseHandler);
  }

  static class ListFilesResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(ListFilesResponse response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(ListFilesResponse)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Returns a list of files that belong to the user's organization.
   * See_Also: HTTP GET `/files`
   */
  void listFiles(
      ListFilesResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.GET,
        Servers.getServerUrl(),
        "/files");
    Security.apply(requestor);
    requestor.makeRequest(null, responseHandler);
  }

  static class CreateFileResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(OpenAIFile response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(OpenAIFile)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Upload a file that contains document(s) to be used across various endpoints/features.
   * Currently, the size of all the files uploaded by one organization can be up to 1 GB. Please
   * contact us if you need to increase the storage limit.
   * See_Also: HTTP POST `/files`
   */
  void createFile(
      CreateFileRequest requestBody,
      CreateFileResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.POST,
        Servers.getServerUrl(),
        "/files");
    requestor.setHeaderParam("Content-Type", "multipart/form-data");
    Security.apply(requestor);
    requestor.makeRequest(requestBody, responseHandler);
  }

  mixin AddBuilder!(typeof(this));

}
