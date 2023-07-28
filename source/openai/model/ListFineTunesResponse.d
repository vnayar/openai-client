// File automatically generated from OpenAPI spec.
module openai.model.ListFineTunesResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;

import openai.model.FineTune : FineTune;

/**
 */
class ListFineTunesResponse {
  @vibeName("object")
  @vibeOptional
  string object;

  @vibeName("data")
  @vibeOptional
  FineTune[] data;

  mixin AddBuilder!(typeof(this));

}
