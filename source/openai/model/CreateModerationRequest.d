// File automatically generated from OpenAPI spec.
module openai.model.CreateModerationRequest;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class CreateModerationRequest {
  /**
   * Two content moderations models are available: `text-moderation-stable` and
   * `text-moderation-latest`.
   * The default is `text-moderation-latest` which will be automatically upgraded over time. This
   * ensures you are always using our most accurate model. If you use `text-moderation-stable`, we
   * will provide advanced notice before updating the model. Accuracy of `text-moderation-stable`
   * may be slightly lower than for `text-moderation-latest`.
   */
  @vibeName("model")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(Json) model;

  /**
   * The input text to classify
   */
  @vibeName("input")
  @vibeOptional
  Json input;

  mixin AddBuilder!(typeof(this));

}
