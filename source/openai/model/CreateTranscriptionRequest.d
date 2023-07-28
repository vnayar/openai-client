// File automatically generated from OpenAPI spec.
module openai.model.CreateTranscriptionRequest;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class CreateTranscriptionRequest {
  /**
   * The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more
   * random, while lower values like 0.2 will make it more focused and deterministic. If set to 0,
   * the model will use [log probability](https://en.wikipedia.org/wiki/Log_probability) to
   * automatically increase the temperature until certain thresholds are hit.
   */
  @vibeName("temperature")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(float) temperature;

  /**
   * An optional text to guide the model's style or continue a previous audio segment. The
   * [prompt](/docs/guides/speech-to-text/prompting) should match the audio language.
   */
  @vibeName("prompt")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) prompt;

  /**
   * The audio file object (not file name) to transcribe, in one of these formats: mp3, mp4, mpeg,
   * mpga, m4a, wav, or webm.
   */
  @vibeName("file")
  @vibeOptional
  string file;

  /**
   * The language of the input audio. Supplying the input language in
   * [ISO-639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) format will improve
   * accuracy and latency.
   */
  @vibeName("language")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) language;

  /**
   * ID of the model to use. Only `whisper-1` is currently available.
   */
  @vibeName("model")
  @vibeOptional
  Json model;

  /**
   * The format of the transcript output, in one of these options: json, text, srt, verbose_json,
   * or vtt.
   */
  @vibeName("response_format")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(string) responseFormat;

  mixin AddBuilder!(typeof(this));

}
