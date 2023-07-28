// File automatically generated from OpenAPI spec.
module openai.model.CreateEmbeddingRequest;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class CreateEmbeddingRequest {
  /**
   * A unique identifier representing your end-user, which can help OpenAI to monitor and detect
   * abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids).
   */
  @vibeName("user")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) user;

  /**
   * ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to
   * see all of your available models, or see our [Model overview](/docs/models/overview) for
   * descriptions of them.
   */
  @vibeName("model")
  @vibeOptional
  Json model;

  /**
   * Input text to embed, encoded as a string or array of tokens. To embed multiple inputs in a
   * single request, pass an array of strings or array of token arrays. Each input must not exceed
   * the max input tokens for the model (8191 tokens for `text-embedding-ada-002`). [Example
   * Python
   * code](https://github.com/openai/openai-cookbook/blob/main/examples/How_to_count_tokens_with_t
   * iktoken.ipynb) for counting tokens.
   */
  @vibeName("input")
  @vibeOptional
  Json input;

  mixin AddBuilder!(typeof(this));

}
