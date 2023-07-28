// File automatically generated from OpenAPI spec.
module openai.service.moderations_service;

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

public import openai.model.CreateModerationRequest : CreateModerationRequest;
public import openai.model.CreateModerationResponse : CreateModerationResponse;

/**
 * Service to make REST API calls to paths beginning with: /moderations
 */
class ModerationsService {
  static class CreateModerationResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(CreateModerationResponse response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(CreateModerationResponse)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Classifies if text violates OpenAI's Content Policy
   * See_Also: HTTP POST `/moderations`
   */
  void createModeration(
      CreateModerationRequest requestBody,
      CreateModerationResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.POST,
        Servers.getServerUrl(),
        "/moderations");
    requestor.setHeaderParam("Content-Type", "application/json");
    Security.apply(requestor);
    requestor.makeRequest(requestBody, responseHandler);
  }

  mixin AddBuilder!(typeof(this));

}
