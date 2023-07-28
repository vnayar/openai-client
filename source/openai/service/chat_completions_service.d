// File automatically generated from OpenAPI spec.
module openai.service.chat_completions_service;

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

public import openai.model.CreateChatCompletionRequest : CreateChatCompletionRequest;
public import openai.model.CreateChatCompletionResponse : CreateChatCompletionResponse;

/**
 * Service to make REST API calls to paths beginning with: /chat/completions
 */
class ChatCompletionsService {
  static class CreateChatCompletionResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(CreateChatCompletionResponse response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(CreateChatCompletionResponse)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Creates a model response for the given chat conversation.
   * See_Also: HTTP POST `/chat/completions`
   */
  void createChatCompletion(
      CreateChatCompletionRequest requestBody,
      CreateChatCompletionResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.POST,
        Servers.getServerUrl(),
        "/chat/completions");
    requestor.setHeaderParam("Content-Type", "application/json");
    Security.apply(requestor);
    requestor.makeRequest(requestBody, responseHandler);
  }

  mixin AddBuilder!(typeof(this));

}
