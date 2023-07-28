// File automatically generated from OpenAPI spec.
module openai.model.ChatCompletionRequestMessage;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class ChatCompletionRequestMessage {
  static class FunctionCall {
    /**
     * The arguments to call the function with, as generated by the model in JSON format. Note that
     * the model does not always generate valid JSON, and may hallucinate parameters not defined by
     * your function schema. Validate the arguments in your code before calling your function.
     */
    @vibeName("arguments")
    @vibeOptional
    string arguments;

    /**
     * The name of the function to call.
     */
    @vibeName("name")
    @vibeOptional
    string name;

    mixin AddBuilder!(typeof(this));

  }

  /**
   * The name and arguments of a function that should be called, as generated by the model.
   */
  @vibeName("function_call")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(FunctionCall) functionCall;

  /**
   * The contents of the message. `content` is required for all messages, and may be null for
   * assistant messages with function calls.
   */
  @vibeName("content")
  @vibeOptional
  string content;

  /**
   * The role of the messages author. One of `system`, `user`, `assistant`, or `function`.
   */
  @vibeName("role")
  @vibeOptional
  string role;

  /**
   * The name of the author of this message. `name` is required if role is `function`, and it
   * should be the name of the function whose response is in the `content`. May contain a-z, A-Z,
   * 0-9, and underscores, with a maximum length of 64 characters.
   */
  @vibeName("name")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) name;

  mixin AddBuilder!(typeof(this));

}
