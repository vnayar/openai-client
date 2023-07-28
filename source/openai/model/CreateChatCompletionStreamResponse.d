// File automatically generated from OpenAPI spec.
module openai.model.CreateChatCompletionStreamResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;

import openai.model.ChatCompletionStreamResponseDelta : ChatCompletionStreamResponseDelta;

/**
 */
class CreateChatCompletionStreamResponse {
  @vibeName("model")
  @vibeOptional
  string model;

  @vibeName("created")
  @vibeOptional
  int created;

  @vibeName("id")
  @vibeOptional
  string id;

  @vibeName("object")
  @vibeOptional
  string object;

  static class Choices {
    @vibeName("delta")
    @vibeOptional
    ChatCompletionStreamResponseDelta delta;

    @vibeName("index")
    @vibeOptional
    int index;

    @vibeName("finish_reason")
    @vibeOptional
    string finishReason;

    mixin AddBuilder!(typeof(this));

  }

  @vibeName("choices")
  @vibeOptional
  Choices[] choices;

  mixin AddBuilder!(typeof(this));

}
