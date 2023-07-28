/**
 * Common initialization logic for integration tests communicating with OpenAI.
 */
module openai.testsetup;

import vibe.core.log : setLogLevel, LogLevel;
import std.process : environment;
import openai.security : Security;

static this() {
  setLogLevel(LogLevel.debug_);
  string apiKey = environment["OPENAI_API_KEY"];
  Security.configureBearerAuth(apiKey);
}
