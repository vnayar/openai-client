// File automatically generated from OpenAPI spec.
module openai.model.DeleteModelResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class DeleteModelResponse {
  @vibeName("object")
  @vibeOptional
  string object;

  @vibeName("deleted")
  @vibeOptional
  bool deleted;

  @vibeName("id")
  @vibeOptional
  string id;

  mixin AddBuilder!(typeof(this));

}
