module openai.services.chat_completions_service_test;

import vibe.core.log : logDebug;
import vibe.data.json : serializeToJson, Json;

import openai.testsetup;
import openai.service.chat_completions_service : ChatCompletionsService;
import openai.model.CreateChatCompletionRequest : CreateChatCompletionRequest;
import openai.model.CreateChatCompletionResponse : CreateChatCompletionResponse;
import openai.model.ChatCompletionRequestMessage : ChatCompletionRequestMessage;

unittest {
  auto service = new ChatCompletionsService();

  service.createChatCompletion(
      CreateChatCompletionRequest.builder()
          .model(Json("gpt-3.5-turbo"))
          .maxTokens(2048)
          .messages([ChatCompletionRequestMessage.builder()
              .role("user")
              .content("What breed of rabbit is the cutest?")
              .build()])
          .build(),
      ChatCompletionsService.CreateChatCompletionResponseHandler.builder()
          .handleResponse200((CreateChatCompletionResponse response) {
            logDebug("%s", serializeToJson(response).toString());
          })
          .build());
}
