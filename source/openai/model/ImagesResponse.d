// File automatically generated from OpenAPI spec.
module openai.model.ImagesResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class ImagesResponse {
  @vibeName("created")
  @vibeOptional
  int created;

  static class Data {
    @vibeName("b64_json")
    @vibeOptional
    @vibeEmbedNullable
    Nullable!(string) b64Json;

    @vibeName("url")
    @vibeOptional
    @vibeEmbedNullable
    Nullable!(string) url;

    mixin AddBuilder!(typeof(this));

  }

  @vibeName("data")
  @vibeOptional
  Data[] data;

  mixin AddBuilder!(typeof(this));

}
