// File automatically generated from OpenAPI spec.
module openai.model.CreateEditRequest;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class CreateEditRequest {
  /**
   * The instruction that tells the model how to edit the prompt.
   */
  @vibeName("instruction")
  @vibeOptional
  string instruction;

  /**
   * What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the
   * output more random, while lower values like 0.2 will make it more focused and deterministic.
   * We generally recommend altering this or `top_p` but not both.
   */
  @vibeName("temperature")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(float) temperature;

  /**
   * The input text to use as a starting point for the edit.
   */
  @vibeName("input")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) input;

  /**
   * An alternative to sampling with temperature, called nucleus sampling, where the model
   * considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens
   * comprising the top 10% probability mass are considered.
   * We generally recommend altering this or `temperature` but not both.
   */
  @vibeName("top_p")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(float) topP;

  /**
   * How many edits to generate for the input and instruction.
   */
  @vibeName("n")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(int) n;

  /**
   * ID of the model to use. You can use the `text-davinci-edit-001` or `code-davinci-edit-001`
   * model with this endpoint.
   */
  @vibeName("model")
  @vibeOptional
  Json model;

  mixin AddBuilder!(typeof(this));

}
