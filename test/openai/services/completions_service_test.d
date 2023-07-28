module openai.services.completions_service_test;

import vibe.core.log : logDebug;
import vibe.data.json : serializeToJson, Json;

import openai.testsetup;
import openai.service.completions_service : CompletionsService;
import openai.model.CreateCompletionRequest : CreateCompletionRequest;
import openai.model.CreateCompletionResponse : CreateCompletionResponse;

unittest {
  auto service = new CompletionsService();

  service.createCompletion(
      CreateCompletionRequest.builder()
          .model("text-davinci-003")
          .prompt(Json("What is the cutest breed of rabbit? "))
          .echo(true)
          .maxTokens(2048)
          .build(),
      CompletionsService.CreateCompletionResponseHandler.builder()
          .handleResponse200((CreateCompletionResponse response) {
            logDebug("%s", serializeToJson(response).toString());
          })
          .build());
}
