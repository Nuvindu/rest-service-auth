import ballerina/io;
import ballerina/http;

configurable string tokenUrl = ?;
configurable string clientId = ?;
configurable string clientSecret = ?;
configurable string endpointUrl = ?;
configurable string resourcePath = ?;

public function main() returns error? {
    http:Client httpClient = check new (endpointUrl);

    // // Uncomment the code block and apply OAuth2 authentication and OAuth2 supported endpoint url.
    // http:Client httpClient = check new (endpointUrl, {
    //     tokenUrl,
    //     clientId,
    //     clientSecret
    // });

    json|error result = httpClient->get(resourcePath);
    io:println("Result: ", result);
}
