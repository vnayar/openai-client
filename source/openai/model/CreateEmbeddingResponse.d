// File automatically generated from OpenAPI spec.
module openai.model.CreateEmbeddingResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class CreateEmbeddingResponse {
  static class Usage {
    @vibeName("prompt_tokens")
    @vibeOptional
    int promptTokens;

    @vibeName("total_tokens")
    @vibeOptional
    int totalTokens;

    mixin AddBuilder!(typeof(this));

  }

  @vibeName("usage")
  @vibeOptional
  Usage usage;

  @vibeName("object")
  @vibeOptional
  string object;

  @vibeName("model")
  @vibeOptional
  string model;

  static class Data {
    @vibeName("embedding")
    @vibeOptional
    float[] embedding;

    @vibeName("index")
    @vibeOptional
    int index;

    @vibeName("object")
    @vibeOptional
    string object;

    mixin AddBuilder!(typeof(this));

  }

  @vibeName("data")
  @vibeOptional
  Data[] data;

  mixin AddBuilder!(typeof(this));

}
