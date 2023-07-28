// File automatically generated from OpenAPI spec.
module openai.model.FineTune;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;

import openai.model.FineTuneEvent : FineTuneEvent;
import openai.model.OpenAIFile : OpenAIFile;

/**
 */
class FineTune {
  static class Hyperparams {
    @vibeName("n_epochs")
    @vibeOptional
    int nEpochs;

    @vibeName("batch_size")
    @vibeOptional
    int batchSize;

    @vibeName("classification_n_classes")
    @vibeOptional
    @vibeEmbedNullable
    Nullable!(int) classificationNClasses;

    @vibeName("classification_positive_class")
    @vibeOptional
    @vibeEmbedNullable
    Nullable!(string) classificationPositiveClass;

    @vibeName("compute_classification_metrics")
    @vibeOptional
    @vibeEmbedNullable
    Nullable!(bool) computeClassificationMetrics;

    @vibeName("learning_rate_multiplier")
    @vibeOptional
    float learningRateMultiplier;

    @vibeName("prompt_loss_weight")
    @vibeOptional
    float promptLossWeight;

    mixin AddBuilder!(typeof(this));

  }

  @vibeName("hyperparams")
  @vibeOptional
  Hyperparams hyperparams;

  @vibeName("id")
  @vibeOptional
  string id;

  @vibeName("result_files")
  @vibeOptional
  OpenAIFile[] resultFiles;

  @vibeName("validation_files")
  @vibeOptional
  OpenAIFile[] validationFiles;

  @vibeName("fine_tuned_model")
  @vibeOptional
  string fineTunedModel;

  @vibeName("updated_at")
  @vibeOptional
  int updatedAt;

  @vibeName("organization_id")
  @vibeOptional
  string organizationId;

  @vibeName("training_files")
  @vibeOptional
  OpenAIFile[] trainingFiles;

  @vibeName("object")
  @vibeOptional
  string object;

  @vibeName("events")
  @vibeOptional
  @vibeEmbedNullable
  Nullable!(FineTuneEvent[]) events;

  @vibeName("created_at")
  @vibeOptional
  int createdAt;

  @vibeName("model")
  @vibeOptional
  string model;

  @vibeName("status")
  @vibeOptional
  string status;

  mixin AddBuilder!(typeof(this));

}
