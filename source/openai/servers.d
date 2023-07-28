// File automatically generated from OpenAPI spec.
module openai.servers;

import openapi_client.util : resolveTemplate;
import std.stdio : writeln;

class Servers {
  /**
   * The server URLs to contact the service with.
   * The URL may use named path-parameters within curly braces,
   * e.g. "https://example.com/{version}/".
   */
  static string serverUrl = "https://api.openai.com/v1";

  /**
   * Parameters that will be substituted into the serverURL.
   */
  static string[string] serverParams;

  static this() {
    serverParams = [
      "none": "none",
    ];
  }

  /**
   * Chooses a url an OasPathItem given both path-specific and general servers.
   */
  static string getServerUrl() {
    return resolveTemplate(serverUrl, serverParams);
  }

}
