// File automatically generated from OpenAPI spec.
module openai.model.CreateImageVariationRequest;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class CreateImageVariationRequest {
  /**
   * The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`.
   */
  @vibeName("size")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) size;

  /**
   * A unique identifier representing your end-user, which can help OpenAI to monitor and detect
   * abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids).
   */
  @vibeName("user")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) user;

  /**
   * The image to use as the basis for the variation(s). Must be a valid PNG file, less than 4MB,
   * and square.
   */
  @vibeName("image")
  @vibeOptional
  string image;

  /**
   * The format in which the generated images are returned. Must be one of `url` or `b64_json`.
   */
  @vibeName("response_format")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) responseFormat;

  /**
   * The number of images to generate. Must be between 1 and 10.
   */
  @vibeName("n")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(int) n;

  mixin AddBuilder!(typeof(this));

}
