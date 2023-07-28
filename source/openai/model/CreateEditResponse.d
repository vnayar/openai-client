// File automatically generated from OpenAPI spec.
module openai.model.CreateEditResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class CreateEditResponse {
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
  Usage usage;

  @vibeName("object")
  @vibeOptional
  string object;

  static class Choices {
    @vibeName("index")
    @vibeOptional
    int index;

    @vibeName("text")
    @vibeOptional
    string text;

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
