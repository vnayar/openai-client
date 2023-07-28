// File automatically generated from OpenAPI spec.
module openai.model.ChatCompletionFunctions;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;

import openai.model.ChatCompletionFunctionParameters : ChatCompletionFunctionParameters;

/**
 */
class ChatCompletionFunctions {
  /**
   * A description of what the function does, used by the model to choose when and how to call the
   * function.
   */
  @vibeName("description")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) description;

  @vibeName("parameters")
  @vibeOptional
  ChatCompletionFunctionParameters parameters;

  /**
   * The name of the function to be called. Must be a-z, A-Z, 0-9, or contain underscores and
   * dashes, with a maximum length of 64.
   */
  @vibeName("name")
  @vibeOptional
  string name;

  mixin AddBuilder!(typeof(this));

}
