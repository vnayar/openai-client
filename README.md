# OpenAI API Client

A client library for the [D Programming Language](https://dlang.org/) that interfaces with the
[OpenAI REST API](https://platform.openai.com/docs/api-reference).

This client consists of files that have been generated automatically from OpenAI's
[OpenAPI Specification](https://github.com/openai/openai-openapi) using the generation tool
[openapi-client](https://code.dlang.org/packages/openapi-client).

## Client Code Organization

- **openai.model** :: The package `openai.model` contains commonly used data types for the OpenAI
  API, which are generated from the `#/components/schemas/` portion of the OpenAI OpenAPI
  Specification. This includes things like requests, responses, etc.
- **openai.service** :: The package `openai.service` contains logic to communicate with REST API
  endpoints. Generally, the module and class names are produced by concatenating the URL path
  fragments of the API endpoint, e.g. `/chat/completions` => `chat_completions_service.d` => `class
  ChatCompletionsService`.
- **openai.server** :: The default server URLs are stored here.
- **openai.security** :: Credentials needed to access the API, such as API tokens, usernames, and
  passwords are configured using this module.

## Using the OpenAI Client

Below is an example of how to use the OpenAI Client:

```d
import vibe.core.log : logDebug;
import vibe.data.json : Json, serializeToJson;
import openai.service.completions_service : CompletionsService;
import openai.model.CreateCompletionRequest : CreateCompletionRequest;
import openai.model.CreateCompletionResponse : CreateCompletionResponse;

import std.process : environment;

// 1. Use your OpenAI API Key as your security credentials.
// See https://platform.openai.com/account/api-keys
string apiKey = environment["OPENAI_API_KEY"];
Security.configureBearerAuth(apiKey);

// 2. Create a new service object corresponding to the URL path of the desired service.
auto service = new CompletionsService();

// 3. Invoke a specific action, e.g. creating a completion request.
service.createCompletion(
    // 4. Define any parameters needed for the request.
    CreateCompletionRequest.builder()
        .model("text-davinci-003")
        .prompt(Json("What is the cutest breed of rabbit? "))
        .echo(true)
        .maxTokens(2048)
        .build(),
    // 5. Indicate how different response codes should be handled.
    CompletionsService.CreateCompletionResponseHandler.builder()
        .handleResponse200((CreateCompletionResponse response) {
          logDebug("%s", serializeToJson(response).toString());
        })
        .build());
```

# Development

## Code Generation

The client code is generated from the file `json/openapi.json`. If this file is updated, then the
client code can be regenerated using the following command:

```bash
dub build --config=generate
```

## Testing

To run integration tests, an OpenAI API key is required. Once obtained, run integration tests with
the following commands:

```bash
export OPENAI_API_KEY="sk-TS...N4G"
dub test --config=integration
```
