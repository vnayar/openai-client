// File automatically generated from OpenAPI spec.
module openai.service.audio_transcriptions_service;

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

public import openai.model.CreateTranscriptionRequest : CreateTranscriptionRequest;
public import openai.model.CreateTranscriptionResponse : CreateTranscriptionResponse;

/**
 * Service to make REST API calls to paths beginning with: /audio/transcriptions
 */
class AudioTranscriptionsService {
  static class CreateTranscriptionResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(CreateTranscriptionResponse response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(CreateTranscriptionResponse)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Transcribes audio into the input language.
   * See_Also: HTTP POST `/audio/transcriptions`
   */
  void createTranscription(
      CreateTranscriptionRequest requestBody,
      CreateTranscriptionResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.POST,
        Servers.getServerUrl(),
        "/audio/transcriptions");
    requestor.setHeaderParam("Content-Type", "multipart/form-data");
    Security.apply(requestor);
    requestor.makeRequest(requestBody, responseHandler);
  }

  mixin AddBuilder!(typeof(this));

}
