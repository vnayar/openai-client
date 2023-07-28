// File automatically generated from OpenAPI spec.
module openai.model.OpenAIFile;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class OpenAIFile {
  @vibeName("id")
  @vibeOptional
  string id;

  @vibeName("status_details")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) statusDetails;

  @vibeName("filename")
  @vibeOptional
  string filename;

  @vibeName("object")
  @vibeOptional
  string object;

  @vibeName("created_at")
  @vibeOptional
  int createdAt;

  @vibeName("purpose")
  @vibeOptional
  string purpose;

  @vibeName("status")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) status;

  @vibeName("bytes")
  @vibeOptional
  int bytes;

  mixin AddBuilder!(typeof(this));

}
