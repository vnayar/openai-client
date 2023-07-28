// File automatically generated from OpenAPI spec.
module openai.model.Model;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class Model {
  @vibeName("created")
  @vibeOptional
  int created;

  @vibeName("owned_by")
  @vibeOptional
  string ownedBy;

  @vibeName("id")
  @vibeOptional
  string id;

  @vibeName("object")
  @vibeOptional
  string object;

  mixin AddBuilder!(typeof(this));

}
