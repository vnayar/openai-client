// File automatically generated from OpenAPI spec.
module openai.model.ListModelsResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;

import openai.model.Model : Model;

/**
 */
class ListModelsResponse {
  @vibeName("object")
  @vibeOptional
  string object;

  @vibeName("data")
  @vibeOptional
  Model[] data;

  mixin AddBuilder!(typeof(this));

}
