// File automatically generated from OpenAPI spec.
module openai.model.ErrorResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;

import openai.model.Error : Error_;

/**
 */
class ErrorResponse {
  @vibeName("error")
  @vibeOptional
  Error_ error;

  mixin AddBuilder!(typeof(this));

}
