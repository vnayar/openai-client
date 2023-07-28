// File automatically generated from OpenAPI spec.
module openai.model.ChatCompletionFunctionParameters;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 * The parameters the functions accepts, described as a JSON Schema object. See the
 * [guide](/docs/guides/gpt/function-calling) for examples, and the [JSON Schema
 * reference](https://json-schema.org/understanding-json-schema/) for documentation about the
 * format.
 * To describe a function that accepts no parameters, provide the value `{"type": "object",
 * "properties": {}}`.
 */
class ChatCompletionFunctionParameters {
  mixin AddBuilder!(typeof(this));

}
