// File automatically generated from OpenAPI spec.
module openai.model.CreateCompletionResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class CreateCompletionResponse {
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

    @vibeName("text")
    @vibeOptional
    string text;

    static class Logprobs {
      @vibeName("text_offset")
      @vibeOptional
      @vibeEmbedNullable
      Nullable!(int[]) textOffset;

      @vibeName("tokens")
      @vibeOptional
      @vibeEmbedNullable
      Nullable!(string[]) tokens;

      @vibeName("top_logprobs")
      @vibeOptional
      @vibeEmbedNullable
      Nullable!(int[string][]) topLogprobs;

      @vibeName("token_logprobs")
      @vibeOptional
      @vibeEmbedNullable
      Nullable!(float[]) tokenLogprobs;

      mixin AddBuilder!(typeof(this));

    }

    @vibeName("logprobs")
    @vibeOptional
    Logprobs logprobs;

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
