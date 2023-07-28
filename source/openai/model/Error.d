// File automatically generated from OpenAPI spec.
module openai.model.Error;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class Error_ {
  @vibeName("type")
  @vibeOptional
  string type;

  @vibeName("param")
  @vibeOptional
  string param;

  @vibeName("message")
  @vibeOptional
  string message;

  @vibeName("code")
  @vibeOptional
  string code;

  mixin AddBuilder!(typeof(this));

}
