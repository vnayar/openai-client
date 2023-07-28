// File automatically generated from OpenAPI spec.
module openai.model.ListFineTuneEventsResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;

import openai.model.FineTuneEvent : FineTuneEvent;

/**
 */
class ListFineTuneEventsResponse {
  @vibeName("object")
  @vibeOptional
  string object;

  @vibeName("data")
  @vibeOptional
  FineTuneEvent[] data;

  mixin AddBuilder!(typeof(this));

}
