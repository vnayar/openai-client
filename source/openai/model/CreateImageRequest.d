// File automatically generated from OpenAPI spec.
module openai.model.CreateImageRequest;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class CreateImageRequest {
  /**
   * The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`.
   */
  @vibeName("size")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) size;

  /**
   * A text description of the desired image(s). The maximum length is 1000 characters.
   */
  @vibeName("prompt")
  @vibeOptional
  string prompt;

  /**
   * A unique identifier representing your end-user, which can help OpenAI to monitor and detect
   * abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids).
   */
  @vibeName("user")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) user;

  /**
   * The number of images to generate. Must be between 1 and 10.
   */
  @vibeName("n")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(int) n;

  /**
   * The format in which the generated images are returned. Must be one of `url` or `b64_json`.
   */
  @vibeName("response_format")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) responseFormat;

  mixin AddBuilder!(typeof(this));

}
