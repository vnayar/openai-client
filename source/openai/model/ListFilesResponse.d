// File automatically generated from OpenAPI spec.
module openai.model.ListFilesResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;

import openai.model.OpenAIFile : OpenAIFile;

/**
 */
class ListFilesResponse {
  @vibeName("object")
  @vibeOptional
  string object;

  @vibeName("data")
  @vibeOptional
  OpenAIFile[] data;

  mixin AddBuilder!(typeof(this));

}
