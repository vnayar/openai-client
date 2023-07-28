// File automatically generated from OpenAPI spec.
module openai.model.CreateChatCompletionResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;

import openai.model.ChatCompletionResponseMessage : ChatCompletionResponseMessage;

/**
 */
class CreateChatCompletionResponse {
  @vibeName("model")
  @vibeOptional
  string model;

  @vibeName("created")
  @vibeOptional
  int created;

  static class Usage {
    @vibeName("prompt_tokens")
    @vibeOptional
    int promptTokens;

    @vibeName("total_tokens")
    @vibeOptional
    int totalTokens;

    @vibeName("completion_tokens")
    @vibeOptional
    int completionTokens;

    mixin AddBuilder!(typeof(this));

  }

  @vibeName("usage")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(Usage) usage;

  @vibeName("id")
  @vibeOptional
  string id;

  @vibeName("object")
  @vibeOptional
  string object;

  static class Choices {
    @vibeName("index")
    @vibeOptional
    int index;

    @vibeName("finish_reason")
    @vibeOptional
    string finishReason;

    @vibeName("message")
    @vibeOptional
    ChatCompletionResponseMessage message;

    mixin AddBuilder!(typeof(this));

  }

  @vibeName("choices")
  @vibeOptional
  Choices[] choices;

  mixin AddBuilder!(typeof(this));

}
