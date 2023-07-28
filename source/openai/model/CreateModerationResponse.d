// File automatically generated from OpenAPI spec.
module openai.model.CreateModerationResponse;

import vibe.data.serialization : vibeName = name, vibeOptional = optional, vibeEmbedNullable = embedNullable;
import vibe.data.json : Json;
import builder : AddBuilder;

import std.typecons : Nullable;


/**
 */
class CreateModerationResponse {
  @vibeName("id")
  @vibeOptional
  string id;

  @vibeName("model")
  @vibeOptional
  string model;

  static class Results {
    static class CategoryScores {
      @vibeName("violence/graphic")
      @vibeOptional
      float violenceGraphic;

      @vibeName("violence")
      @vibeOptional
      float violence;

      @vibeName("sexual/minors")
      @vibeOptional
      float sexualMinors;

      @vibeName("self-harm")
      @vibeOptional
      float selfHarm;

      @vibeName("hate/threatening")
      @vibeOptional
      float hateThreatening;

      @vibeName("sexual")
      @vibeOptional
      float sexual;

      @vibeName("hate")
      @vibeOptional
      float hate;

      mixin AddBuilder!(typeof(this));

    }

    @vibeName("category_scores")
    @vibeOptional
    CategoryScores categoryScores;

    @vibeName("flagged")
    @vibeOptional
    bool flagged;

    static class Categories {
      @vibeName("violence/graphic")
      @vibeOptional
      bool violenceGraphic;

      @vibeName("violence")
      @vibeOptional
      bool violence;

      @vibeName("sexual/minors")
      @vibeOptional
      bool sexualMinors;

      @vibeName("self-harm")
      @vibeOptional
      bool selfHarm;

      @vibeName("hate/threatening")
      @vibeOptional
      bool hateThreatening;

      @vibeName("sexual")
      @vibeOptional
      bool sexual;

      @vibeName("hate")
      @vibeOptional
      bool hate;

      mixin AddBuilder!(typeof(this));

    }

    @vibeName("categories")
    @vibeOptional
    Categories categories;

    mixin AddBuilder!(typeof(this));

  }

  @vibeName("results")
  @vibeOptional
  Results[] results;

  mixin AddBuilder!(typeof(this));

}
