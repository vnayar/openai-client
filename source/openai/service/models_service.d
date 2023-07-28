// File automatically generated from OpenAPI spec.
module openai.service.models_service;

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

public import openai.model.DeleteModelResponse : DeleteModelResponse;
public import openai.model.ListModelsResponse : ListModelsResponse;
public import openai.model.Model : Model;

/**
 * Service to make REST API calls to paths beginning with: /models
 */
class ModelsService {
  static class ListModelsResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(ListModelsResponse response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(ListModelsResponse)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Lists the currently available models, and provides basic information about each one such as the
   * owner and availability.
   * See_Also: HTTP GET `/models`
   */
  void listModels(
      ListModelsResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.GET,
        Servers.getServerUrl(),
        "/models");
    Security.apply(requestor);
    requestor.makeRequest(null, responseHandler);
  }

  static class retrieveModelParams {
    /**
     * The ID of the model to use for this request
     */
    string model;

    mixin AddBuilder!(typeof(this));

  }

  static class RetrieveModelResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(Model response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(Model)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Retrieves a model instance, providing basic information about the model such as the owner and
   * permissioning.
   * See_Also: HTTP GET `/models/{model}`
   */
  void retrieveModel(
      retrieveModelParams params,
      RetrieveModelResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.GET,
        Servers.getServerUrl(),
        "/models/{model}");
    if (!params.model.isNull)
      requestor.setPathParam("model", params.model);
    Security.apply(requestor);
    requestor.makeRequest(null, responseHandler);
  }

  static class deleteModelParams {
    /**
     * The model to delete
     */
    string model;

    mixin AddBuilder!(typeof(this));

  }

  static class DeleteModelResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(DeleteModelResponse response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(DeleteModelResponse)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Delete a fine-tuned model. You must have the Owner role in your organization.
   * See_Also: HTTP DELETE `/models/{model}`
   */
  void deleteModel(
      deleteModelParams params,
      DeleteModelResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.DELETE,
        Servers.getServerUrl(),
        "/models/{model}");
    if (!params.model.isNull)
      requestor.setPathParam("model", params.model);
    Security.apply(requestor);
    requestor.makeRequest(null, responseHandler);
  }

  mixin AddBuilder!(typeof(this));

}
