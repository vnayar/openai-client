// File automatically generated from OpenAPI spec.
module openai.model.CreateFileRequest;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class CreateFileRequest {
  /**
   * Name of the [JSON Lines](https://jsonlines.readthedocs.io/en/latest/) file to be uploaded.
   * If the `purpose` is set to "fine-tune", each line is a JSON record with "prompt" and
   * "completion" fields representing your [training
   * examples](/docs/guides/fine-tuning/prepare-training-data).
   */
  @vibeName("file")
  @vibeOptional
  string file;

  /**
   * The intended purpose of the uploaded documents.
   * Use "fine-tune" for [Fine-tuning](/docs/api-reference/fine-tunes). This allows us to validate
   * the format of the uploaded file.
   */
  @vibeName("purpose")
  @vibeOptional
  string purpose;

  mixin AddBuilder!(typeof(this));

}
