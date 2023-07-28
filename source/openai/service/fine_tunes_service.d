// File automatically generated from OpenAPI spec.
module openai.service.fine_tunes_service;

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

public import openai.model.CreateFineTuneRequest : CreateFineTuneRequest;
public import openai.model.FineTune : FineTune;
public import openai.model.ListFineTuneEventsResponse : ListFineTuneEventsResponse;
public import openai.model.ListFineTunesResponse : ListFineTunesResponse;

/**
 * Service to make REST API calls to paths beginning with: /fine-tunes
 */
class FineTunesService {
  static class cancelFineTuneParams {
    /**
     * The ID of the fine-tune job to cancel
     */
    string fineTuneId;

    mixin AddBuilder!(typeof(this));

  }

  static class CancelFineTuneResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(FineTune response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(FineTune)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Immediately cancel a fine-tune job.
   * See_Also: HTTP POST `/fine-tunes/{fine_tune_id}/cancel`
   */
  void cancelFineTune(
      cancelFineTuneParams params,
      CancelFineTuneResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.POST,
        Servers.getServerUrl(),
        "/fine-tunes/{fine_tune_id}/cancel");
    if (!params.fineTuneId.isNull)
      requestor.setPathParam("fine_tune_id", params.fineTuneId);
    Security.apply(requestor);
    requestor.makeRequest(null, responseHandler);
  }

  static class ListFineTunesResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(ListFineTunesResponse response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(ListFineTunesResponse)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * List your organization's fine-tuning jobs
   * See_Also: HTTP GET `/fine-tunes`
   */
  void listFineTunes(
      ListFineTunesResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.GET,
        Servers.getServerUrl(),
        "/fine-tunes");
    Security.apply(requestor);
    requestor.makeRequest(null, responseHandler);
  }

  static class CreateFineTuneResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(FineTune response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(FineTune)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Creates a job that fine-tunes a specified model from a given dataset.
   * Response includes details of the enqueued job including job status and the name of the
   * fine-tuned models once complete.
   * [Learn more about Fine-tuning](/docs/guides/fine-tuning)
   * See_Also: HTTP POST `/fine-tunes`
   */
  void createFineTune(
      CreateFineTuneRequest requestBody,
      CreateFineTuneResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.POST,
        Servers.getServerUrl(),
        "/fine-tunes");
    requestor.setHeaderParam("Content-Type", "application/json");
    Security.apply(requestor);
    requestor.makeRequest(requestBody, responseHandler);
  }

  static class listFineTuneEventsParams {
    /**
     * The ID of the fine-tune job to get events for.
     */
    string fineTuneId;

    /**
     * Whether to stream events for the fine-tune job. If set to true,
     * events will be sent as data-only
     * [server-sent
     * events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent
     * _events#Event_stream_format)
     * as they become available. The stream will terminate with a
     * `data: [DONE]` message when the job is finished (succeeded, cancelled,
     * or failed).
     * If set to false, only events generated so far will be returned.
     */
    bool stream;

    mixin AddBuilder!(typeof(this));

  }

  static class ListFineTuneEventsResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(ListFineTuneEventsResponse response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(ListFineTuneEventsResponse)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Get fine-grained status updates for a fine-tune job.
   * See_Also: HTTP GET `/fine-tunes/{fine_tune_id}/events`
   */
  void listFineTuneEvents(
      listFineTuneEventsParams params,
      ListFineTuneEventsResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.GET,
        Servers.getServerUrl(),
        "/fine-tunes/{fine_tune_id}/events");
    if (!params.fineTuneId.isNull)
      requestor.setPathParam("fine_tune_id", params.fineTuneId);
    if (!params.stream.isNull)
      requestor.setQueryParam!("deepObject")("stream", params.stream);
    Security.apply(requestor);
    requestor.makeRequest(null, responseHandler);
  }

  static class retrieveFineTuneParams {
    /**
     * The ID of the fine-tune job
     */
    string fineTuneId;

    mixin AddBuilder!(typeof(this));

  }

  static class RetrieveFineTuneResponseHandler : ResponseHandler {

    /**
     * OK
     */
    void delegate(FineTune response) handleResponse200;

    /**
     * An HTTPResponse handler that routes to a particular handler method.
     */
    void handleResponse(HTTPClientResponse res) {
      if (res.statusCode >= 200 && res.statusCode <= 200 && handleResponse200 !is null) {
        handleResponse200(deserializeJson!(FineTune)(res.readJson()));
        return;
      }
      throw new Exception("Unhandled response status code: "
        ~ res.statusCode.to!string
        ~ ", Body: " ~ res.bodyReader().readAllUTF8());
    }

    mixin AddBuilder!(typeof(this));

  }

  /**
   * Gets info about the fine-tune job.
   * [Learn more about Fine-tuning](/docs/guides/fine-tuning)
   * See_Also: HTTP GET `/fine-tunes/{fine_tune_id}`
   */
  void retrieveFineTune(
      retrieveFineTuneParams params,
      RetrieveFineTuneResponseHandler responseHandler,
      ) {
    ApiRequest requestor = new ApiRequest(
        HTTPMethod.GET,
        Servers.getServerUrl(),
        "/fine-tunes/{fine_tune_id}");
    if (!params.fineTuneId.isNull)
      requestor.setPathParam("fine_tune_id", params.fineTuneId);
    Security.apply(requestor);
    requestor.makeRequest(null, responseHandler);
  }

  mixin AddBuilder!(typeof(this));

}
