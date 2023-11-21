#!/bin/bash

cd -P -- "$(dirname -- "$0")"

# Download from GitHub the OpenAPI specification for OpenAI.
curl https://raw.githubusercontent.com/openai/openai-openapi/master/openapi.yaml -o openapi.yaml

# Convert the YAML file into JSON.
yq openapi.yaml -o json > openapi.json
