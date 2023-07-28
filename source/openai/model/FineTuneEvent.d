// File automatically generated from OpenAPI spec.
module openai.model.FineTuneEvent;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class FineTuneEvent {
  @vibeName("level")
  @vibeOptional
  string level;

  @vibeName("created_at")
  @vibeOptional
  int createdAt;

  @vibeName("object")
  @vibeOptional
  string object;

  @vibeName("message")
  @vibeOptional
  string message;

  mixin AddBuilder!(typeof(this));

}
