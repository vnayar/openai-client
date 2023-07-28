// File automatically generated from OpenAPI spec.
module openai.model.CreateTranscriptionResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class CreateTranscriptionResponse {
  @vibeName("text")
  @vibeOptional
  string text;

  mixin AddBuilder!(typeof(this));

}
